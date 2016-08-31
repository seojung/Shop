using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace MvcApplication5.Controllers
{
    public class AdminController : Controller
    {

        private tobyEntities db = new tobyEntities();
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult admin_login(string login_message)
        {

            if (login_message != null)
            {
                //  ModelState.AddModelError("", CodeUtil.Instance.getCodeValue("PAGE_ALERT", "100"));
                ModelState.AddModelError(string.Empty, "비밀번호틀림");

                ViewBag.message = login_message;
            }



            return View();
        }



        [HttpPost]
        public ActionResult login(string admin_id, string admin_pw)
        {

            CUSTOMER myUser = db.CUSTOMER.FirstOrDefault(u => u.CST_ID == admin_id && u.CST_PWD == admin_pw);
            if (myUser != null)
            {
                return RedirectToAction("admin_main");
            }
            else
            {
                // 로그인 실패했을때
                return RedirectToAction("admin_login", new { login_message = "dd" });
            }

        }

        public ActionResult admin_main()
        {
            return View();
        }
        public ActionResult login_fail()
        {
            return View();
        }

        public ActionResult admin_crm(int? page)
        {
            //CUSTOMER myUser = db.CUSTOMER.First();
        //    List<CUSTOMER> qc = db.CUSTOMER.ToList();

            int pageSize = 3;
            int pageIndex = 1;
            
            IPagedList<CUSTOMER> customers = null;
            var product = from s in db.CUSTOMER select s;

            pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;

           
                customers = db.CUSTOMER.OrderBy
                   (m => m.CST_ID).ToPagedList(pageIndex, pageSize);
                return View(customers);
          
            
        }





    }
}
