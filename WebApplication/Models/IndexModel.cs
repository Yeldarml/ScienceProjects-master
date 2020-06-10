using Microsoft.CodeAnalysis;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Models.EF;

namespace WebApplication.Models
{
    public class IndexModel
    {
        public IndexModel()
        {
            Projects = new List<WebApplication.Models.EF.Project>();
            Employees = new List<Employee>();
        }

        public List<WebApplication.Models.EF.Project> Projects { get; set; }

        public List<Employee> Employees { get; set; }
    }
}
