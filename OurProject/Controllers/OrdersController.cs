using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace OurProject.Controllers
{
    public class OrdersController : Controller
    {

        DbModel db = new DbModel();

        public ActionResult Index()
        {
            List<Customer> OrderAndCustomerList = db.Customers.ToList();




            return View(OrderAndCustomerList);
        }

        public ActionResult SaveOrder(string name, String address, string phone, Order[] order)
        {
            string result = "Error! Order Is Not Complete!";
            if (name != null && address != null && order != null)
            {
                var cutomerId = Guid.NewGuid();
                Customer model = new Customer
                {
                    CustomerId = cutomerId,
                    Name = name,
                    Address = address,
                    OrderDate = DateTime.Now,
                    PhoneNumber = phone
                };
                db.Customers.Add(model);


                foreach (var item in order)
                {
                    var orderId = Guid.NewGuid();
                    Order O = new Order
                    {
                        OrderId = orderId,
                        Quantity = item.Quantity,
                        Price = item.Price,
                        Amount = item.Amount,
                        Catergory = item.Catergory,
                        CustomerId = cutomerId
                    
                    };
                    db.Orders.Add(O);
                }
                db.SaveChanges();
                result = "Success! Order Is Complete! we'll be Intouch";
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}