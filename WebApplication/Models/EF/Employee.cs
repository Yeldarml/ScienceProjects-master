using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Models.EF
{
    public class Employee
    {
        public Employee()
        {
            Projects = new HashSet<Project>();
        }

        public Guid Id { get; set; }

        public int Order { get; set; }

        public string IIN { get; set; }

        public string Fullname { get; set; }

        public string Position { get; set; }

        public string Email { get; set; }

        public string WorkPhone { get; set; }

        public string Mobile { get; set; }

        public DateTime DateCreated { get; set; }

        public Guid DepartmentId { get; set; }

        public virtual Department Department { get; set; }

        public virtual ICollection<Project> Projects { get; set; }
    }
}
