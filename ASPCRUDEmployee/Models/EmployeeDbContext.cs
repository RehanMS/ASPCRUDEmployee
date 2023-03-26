using System;
using System.Data.Entity;

namespace ASPCRUDEmployee.Models
{
    public class EmployeeDbContext:DbContext
    {
        public DbSet<Employees> Employees { get; set; }

      
    }
}