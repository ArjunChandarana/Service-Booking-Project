using ASC.BAL.Repository.Interfaces;
using ASC.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ASC.WebApi.Controllers
{
    [RoutePrefix("Customer")]
    public class CustomerController : ApiController
    {
        private readonly ICustomerManager _customerManager;
        public CustomerController(ICustomerManager customerManager)
        {
            _customerManager = customerManager;
        }

        [HttpGet]   
        [Route("Get")]
        public IHttpActionResult Get()
        {
            var response = _customerManager.GetCustomers();
            if (response == null)
            {
                return InternalServerError();
            }
            return Ok(response);
        }

        [HttpGet]
        [Route("Get/{id}")]
        public IHttpActionResult Get(int id)
        {
            var response = _customerManager.GetCustomer(id);
            if (response == null)
            {
                return InternalServerError();
            }
            return Ok(response);
        }

        [HttpPost]
        [Route("Create")]
        public IHttpActionResult Create(Customer customer)
        {
            string response = _customerManager.CreateCustomer(customer);
            if (response == "already")
            {
                return Conflict();
            }
            else if (response != "created")
            {
                return InternalServerError();
            }
            return Ok();
        }

        [HttpPut]
        [Route("Edit")]
        public IHttpActionResult Edit(Customer customer)
        {
            string response = _customerManager.EditCustomer(customer);
            if (response != "updated")
            {
                return InternalServerError();
            }
            return Ok();
        }

        [HttpDelete]
        [Route("Delete/{id}")]
        public IHttpActionResult Delete(int id)
        {
            string response = _customerManager.DeleteCustomer(id);
            if (response != "deleted")
            {
                return InternalServerError();
            }
            return Ok();
        }
    }
}
