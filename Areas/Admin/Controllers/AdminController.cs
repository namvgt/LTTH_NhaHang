using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace LTTH_NhaHang.Areas.Admin.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {
        Model1 db = new Model1();
        // GET: Admin/Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Blog()
        {
            return View();
        }
        public ActionResult Monan()
        {
            return View();
        }
        public ActionResult Loaimonan()
        {

            return View();
        }
        public ActionResult Nguoidung()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Remove("Nguoidung");
            return View("Login");
        }        
        [AllowAnonymous]
        [HttpPost]
        public ActionResult Login(string username, string pwd)
        {
            var user = db.NGUOIDUNGs.Where(x => x.username.Trim() == username).FirstOrDefault();
            if (user == null)
            {
                return View();
            }
            else
            {
                if (pwd == user.password.Trim())
                {
                    Session["Nguoidung"] = user;
                    FormsAuthentication.SetAuthCookie(username, false);
                    return View("Monan");
                }
                else
                {
                    return View();
                }
            }
        }
    }
}