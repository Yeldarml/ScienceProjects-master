using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Models.EF
{
    public class Project
    {
        public Guid Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string ShortName { get; set; }

        public DateTime DateAcceptance { get; set; }

        public DateTime DateCompletion { get; set; }

        public DateTime DateCreated { get; set; }

        public Guid CustomerId { get; set; }

        public Guid? EmployeeId { get; set; }

        public virtual Customer Customer { get; set; } //текстовое ФИО, Наименование, Бин

        public virtual Employee Employee { get; set; }

    }
}
