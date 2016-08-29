using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication5.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/
        private tobyEntities db = new tobyEntities();

        [HttpPost]
        public ActionResult Join(CUSTOMER customer)
        {
            db.CUSTOMER.Add(customer);
            db.SaveChanges();
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Join()
        {
            return View();
        }

    }
}
