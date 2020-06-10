using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Models.EF
{
    public class Department
    {
        public Department()
        {
            Employees = new HashSet<Employee>();
        }

        public Guid Id { get; set; }

        public string Name { get; set; }

        public string WorkPhone { get; set; }

        public string Email { get; set; }

        public string Address { get; set; }

        public DateTime DateCreated { get; set; }

        public virtual ICollection<Employee> Employees { get; set; }
    }
}
