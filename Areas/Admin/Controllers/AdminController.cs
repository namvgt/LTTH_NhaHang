using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace LTTH_NhaHang.Areas.Admin.Controllers
{
    [RoutePrefix("Admin")]
    [Authorize]
    public class AdminController : Controller
    {
        Model1 db = new Model1();
        // GET: Admin/Admin
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
        public ActionResult Datban()
        {
            return View();
        }
        public ActionResult Ban()
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
            Session.Remove("NguoiDung");
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
                    FormsAuthentication.SetAuthCookie(username, true);
                    Session["NguoiDung"] = user;
                    //var authTicket = new FormsAuthenticationTicket(1, username, DateTime.Now, DateTime.Now.AddMinutes(20), false, "");

                    //string encryptedTicket = FormsAuthentication.Encrypt(authTicket);

                    //var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                    //System.Web.HttpContext.Current.Response.Cookies.Add(authCookie);
                    //var name = HttpContext.User.Identity.Name;
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