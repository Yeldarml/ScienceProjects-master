using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication.Data
{
    public partial class EployeeSortingWithoutNull : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Order",
                table: "Employees",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Order",
                table: "Employees",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));
        }
    }
}
