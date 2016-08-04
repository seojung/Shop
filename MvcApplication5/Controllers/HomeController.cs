using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication5.Controllers
{
    public class HomeController : Controller
    {
        private tobyEntities db = new tobyEntities();

        public ActionResult shop()
        {
            return RedirectToAction("Index", "Shop");
        }
        //rwefffdsdfsferferfearawrwefergwer
        // GET: /Home/
        public ActionResult Index()
        {
            return View();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}