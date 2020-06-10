using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using WebApplication.Models.EF;

namespace WebApplication.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Customer> Customers { get; set; }

        public virtual DbSet<Department> Departments { get; set; }

        public virtual DbSet<Employee> Employees { get; set; }

        public virtual DbSet<Project> Projects { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            //foreach (var relationship in modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            //{
            //    relationship.DeleteBehavior = DeleteBehavior.Restrict;
            //}

            modelBuilder.Entity<Department>(entity =>
            {
                entity.ToTable("Departments");

                entity.Property(e => e.Id).HasDefaultValueSql("newid()");

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.WorkPhone).HasMaxLength(11);

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.Address).HasMaxLength(256);

                entity.Property(e => e.DateCreated).HasColumnType("datetime").HasDefaultValueSql("getdate()");
            });

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.ToTable("Employees");

                entity.Property(e => e.Id).HasDefaultValueSql("newid()");

                entity.Property(e => e.IIN).HasMaxLength(12);

                entity.Property(e => e.Fullname).HasMaxLength(256);

                entity.Property(e => e.Position).HasMaxLength(256);

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.WorkPhone).HasMaxLength(11);

                entity.Property(e => e.Mobile).HasMaxLength(11);

                entity.Property(e => e.DateCreated).HasColumnType("datetime").HasDefaultValueSql("getdate()");

                entity.HasOne(d => d.Department)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.DepartmentId)
                    .HasConstraintName("FK_Employees_Department");

            });

            modelBuilder.Entity<Customer>(entity =>
            {
                entity.ToTable("Customers");

                entity.Property(e => e.Id).HasDefaultValueSql("newid()");

                entity.Property(e => e.Bin).HasMaxLength(12);

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.Fullname).HasMaxLength(256);

                entity.Property(e => e.City).HasMaxLength(256);

                entity.Property(e => e.Address).HasMaxLength(256);

                entity.Property(e => e.FIO).HasMaxLength(256);

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.Website).HasMaxLength(256);

                entity.Property(e => e.DateCreated).HasColumnType("datetime").HasDefaultValueSql("getdate()");
            });

            modelBuilder.Entity<Project>(entity =>
            {
                entity.ToTable("Projects");

                entity.Property(e => e.Id).HasDefaultValueSql("newid()");

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.DateAcceptance).HasColumnType("datetime");

                entity.Property(e => e.DateCompletion).HasColumnType("datetime");

                entity.Property(e => e.DateCreated).HasColumnType("datetime").HasDefaultValueSql("getdate()");

                entity.HasOne(d => d.Customer)
                    .WithMany(p => p.Projects)
                    .HasForeignKey(d => d.CustomerId)
                    .HasConstraintName("FK_Projects_Customers");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Projects)
                    .HasForeignKey(d => d.EmployeeId)
                    .HasConstraintName("FK_Projects_Employees");
            });

        }

    }
}
