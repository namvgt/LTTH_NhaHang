using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTTH_NhaHang.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Menu()
        {

            return View();
        }

        public ActionResult Contact()
        {

            return View();
        }
        public ActionResult Blog()
        {

            return View();
        }
        public ActionResult Notfound()
        {
            Response.StatusCode = 404;
            return View();
        }
    }
}