using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Models.EF
{
    public class Customer
    {
        public Customer()
        {
            Projects = new HashSet<Project>();
        }

        public Guid Id { get; set; }

        public string Bin { get; set; }

        public string Name { get; set; }

        public string Fullname { get; set; }

        public string City { get; set; }

        public string Address { get; set; }

        public string FIO { get; set; }

        public string Email { get; set; }

        public string Website { get; set; }

        public DateTime DateCreated { get; set; }

        public virtual ICollection<Project> Projects { get; set; }

    }
}
