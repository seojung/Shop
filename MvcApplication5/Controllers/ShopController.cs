using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using MvcApplication5.Models;

namespace MvcApplication5.Controllers
{
    public class ShopController : Controller
    {
        private tobyEntities db = new tobyEntities();

        public ActionResult Index(string currentFilter, int? page)
        {
            int pageSize = 3;
            int pageIndex = 1;
            IPagedList<Goods> products = null;
            var product = from s in db.Goods select s;

            pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;

            if (currentFilter == null)
            {
                products = db.Goods.OrderBy
                   (m => m.id).ToPagedList(pageIndex, pageSize);
                return View(products);
            }
            else
            {
                product = product.Where(s => s.type.Contains(currentFilter));
                product = product.OrderBy(s => s.id);
                ViewBag.CurrentFilter = currentFilter;
            }

            return View(product.ToPagedList(pageIndex, pageSize));

        }
      


        public ActionResult Goods(PagedList<Goods> model)
        {
            return PartialView("GoodsPage", model);
        }


        public ActionResult detail_goods(String id)
        {
            Goods goods = db.Goods.Find(id);
            if (goods == null)
            {
                return HttpNotFound();
            }
            return View(goods);
        }


    }
}
