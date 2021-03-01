using ASC.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASC.BAL.Repository.Interfaces
{
    public interface ICustomerManager
    {
        IEnumerable<Customer> GetCustomers();
        Customer GetCustomer(int id);
        string CreateCustomer(Customer customer);
        string EditCustomer(Customer customer);
        string DeleteCustomer(int id);
    }
}
