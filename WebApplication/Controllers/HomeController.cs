using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Security.Cryptography.Xml;
using System.Text;
using System.Threading.Tasks;
using ExcelDataReader;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using WebApplication.Data;
using WebApplication.Models;
using WebApplication.Models.EF;

namespace WebApplication.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext Context;
        public HomeController(
            ApplicationDbContext context,
            ILogger<HomeController> logger)
        {
            Context = context;
            _logger = logger;
        }

        public IActionResult Index()
        {
            var projects = Context.Projects.Include(x => x.Customer).ToList();
            var employees = Context.Employees.Include(x => x.Department).ToList();

            var model = new IndexModel();
            model.Projects.AddRange(projects.OrderBy(x => x.DateCreated));
            model.Employees.AddRange(employees.OrderByDescending(x => x.Order));

            return View(model);
        }

        public ActionResult Upload()
        {
            IFormFile file = Request.Form.Files[0];

            string folderName = "UploadExcel";

            string newPath = Path.Combine("", folderName);

            if (!Directory.Exists(newPath))
            {
                Directory.CreateDirectory(newPath);
            }

            if (file.Length > 0)
            {
                string fullPath = Path.Combine(newPath, file.FileName);

                using (var stream = new FileStream(fullPath, FileMode.Create))
                {
                    file.CopyTo(stream);
                    stream.Position = 0;

                    using (var reader = ExcelReaderFactory.CreateReader(stream))
                    {
                        int row = 0;
                        do
                        {
                            while (reader.Read()) //Each ROW
                            {
                                if (row != 0)
                                {
                                    var customer = Context.Customers.FirstOrDefault(x => x.Bin == reader.GetValue(5).ToString());
                                    if (customer == null)
                                    {
                                        customer = new Customer();
                                        customer.Bin = reader.GetValue(5).ToString();
                                        Context.Customers.Add(customer);
                                    }
                                    customer.Fullname = reader.GetValue(2).ToString();
                                    customer.Name = reader.GetValue(3).ToString();
                                    customer.FIO = reader.GetValue(4).ToString();

                                    var project = new Project();
                                    project.Code = reader.GetValue(0).ToString();
                                    project.Name = reader.GetValue(1).ToString();
                                    project.DateAcceptance = DateTime.Parse(reader.GetValue(6).ToString());
                                    project.DateCompletion = DateTime.Parse(reader.GetValue(7).ToString());
                                    project.CustomerId = customer.Id;
                                    Context.Projects.Add(project);
                                    Context.SaveChanges();
                                }

                                row++;
                            }
                        } while (reader.NextResult()); //Move to NEXT SHEET
                    }
                }
            }

            Directory.Delete(newPath, true);

            return RedirectToAction("Index");
        }

        public IActionResult Privacy()
                {
                    return View();
                }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
