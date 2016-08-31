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

        [HttpPost]
        public ActionResult Login(CUSTOMER customer)
        {
            if (ModelState.IsValid) // this is check validity
            {
                var myUser = db.CUSTOMER.FirstOrDefault(u => u.CST_ID == customer.CST_ID
                        && u.CST_PWD == customer.CST_PWD);

                if (myUser != null)
                {
                    Session["LogedUserID"] = myUser.CST_ID.ToString();
                    //Session["LogedUserFullname"] = v.FullName.ToString();
                    return RedirectToAction("Login_Success");
                }
                else
                {
                    ModelState.AddModelError("", "Invalid login credentials.");
                }

                
            }
            return View(customer);
        }
        public ActionResult Login_Success()
        {
           return RedirectToAction("Index","Shop");
        }
    }
}
