using ASC.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace MultiAuthDemo.Areas.UsersArea.Controllers
{
    public class UserController : Controller
    {
        // GET: UsersArea/User
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Detail()
        {
            Customer customer = new Customer();
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:44318/");
                //HTTP GET
                var responseTask = client.GetAsync("Customer/Get/" + 6);
                
                responseTask.Wait();
                
                var result = responseTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<Customer>();
                    readTask.Wait();
                    customer = readTask.Result;

                }
                else
                {
                    customer = null;
                    ModelState.AddModelError(string.Empty, "Server error occured while retriving data");
                }
            }

            return View(customer);
        }
    }
}