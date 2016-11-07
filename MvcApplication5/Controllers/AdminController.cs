using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using System.IO;
using System.Web.UI.WebControls;
using System.Net;
using MvcApplication5.Models;

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

  
        public ActionResult admin_ItemUpload() {

            return View();
        }



        [HttpPost]
        public ActionResult login(string admin_id, string admin_pw)
        {
         //1.아이디 조회를 먼저 해야지.
         // 2. 아이디를 가져왔으면 패스워드를 비교해서 패스워드가 맞는지 확인을 해야지.
            if (ModelState.IsValid)
            {
                CUSTOMER myUser = db.CUSTOMER.FirstOrDefault(u => u.CST_ID == admin_id);

                if (myUser != null)
                {
                    myUser = db.CUSTOMER.FirstOrDefault(u => u.CST_ID == admin_id && u.CST_PWD == admin_pw);
                    if (myUser != null)
                    {
                        return RedirectToAction("login_sucess",myUser);
                    }
                    else
                    {
                        ModelState.AddModelError(string.Empty, "패스워드를 확인해주세요.");
                    }
                }
                else// is not id
                {
                    ModelState.AddModelError(string.Empty, "아이디를 확인해주세요.");
                }
            }
            return View("index");
        }
       
        public ActionResult login_sucess(CUSTOMER user)
        {
            Session["USER_ID"] = user.CST_ID;
            Session["USER_PWD"] = user.CST_PWD;
            Session["USER_NAME"] = user.CST_NAME;

            return RedirectToAction("admin_main");
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
          
            int pageSize = 3;
            int pageIndex = 1;
            
            IPagedList<CUSTOMER> customers = null;
            var product = from s in db.CUSTOMER select s;

            pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;

            customers = db.CUSTOMER.OrderBy
                   (m => m.CST_ID).ToPagedList(pageIndex, pageSize);

            return View(customers);
        }

        [HttpPost]
        public ActionResult Upload(IEnumerable<HttpPostedFileBase> files)
        {
            foreach (var file in files)
            {
                if (file.ContentLength > 0)
                {
                    string fileName = Path.GetFileName(file.FileName);
                    fileName = Path.Combine("\\var\\www\\html\\homeshop\\images\\", fileName);
                    var fileInf = new FileInfo(file.FileName);

                    var reqFtp =
                        (FtpWebRequest)
                            FtpWebRequest.Create(
                                new Uri("ftp://122.45.109.21:1022/" + fileName));
                    reqFtp.Credentials = new NetworkCredential("pi", "gksthdnl505");
                    reqFtp.KeepAlive = false;
                    reqFtp.Method = WebRequestMethods.Ftp.UploadFile;
                    reqFtp.UseBinary = true;
                    reqFtp.ContentLength = file.ContentLength;
                    int bufferlength = 2048;
                    byte[] buff = new byte[bufferlength];
                    int contentLen;
                    FileStream fs = fileInf.OpenRead();

                    try
                    {
                        Stream strm = reqFtp.GetRequestStream();
                        contentLen = fs.Read(buff, 0, bufferlength);
                        while (contentLen != 0)
                        {
                            strm.Write(buff, 0, contentLen);
                            contentLen = fs.Read(buff, 0, bufferlength);
                        }
                        strm.Close();
                        fs.Close();
                    }
                    catch (Exception ex)
                    {

                    }

                }


            }
            

            return View();
         
        }
        public ActionResult Product_upload(FileUpload fu, string upDir)
        {
            

            return View();
        }
    }
}
