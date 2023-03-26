using ASPCRUDEmployee.Models;
using System;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI.WebControls;

namespace ASPCRUDEmployee
{
    public partial class UIEmployee : System.Web.UI.Page
    {
        EmployeeDbContext _dbContext = new EmployeeDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetEmployee();
            }
        }
        protected void GetEmployee()
        {
            var emps = _dbContext.Employees.ToList();
            gvEmployee.DataSource = emps;
            gvEmployee.DataBind();
        }

        public static string GenerateHash(string inputData)
        {
            using(SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(inputData));
                StringBuilder builder= new StringBuilder();
                for(int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Employees emp = new Employees();
            emp.UserName = txtuname.Text;
            emp.Password = GenerateHash(txtpassword.Text);
            emp.FirstName = txtfname.Text;
            emp.LastName = txtlname.Text;
            emp.Qualification = ddlqual.Text;
            if (gender1.Checked)
            {
                emp.Gender = "Male";
            }
            else
            {
                emp.Gender = "Female";
            }

            emp.Designation = ddldsg.Text;

            _dbContext.Employees.Add(emp);
            _dbContext.SaveChanges();
            lblResult.Text = "Employee Registered Successfully !!";
            GetEmployee();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Employees employee= new Employees();
            employee.UserName = txtuname.Text;

            employee = _dbContext.Employees.Where(x => x.UserName == employee.UserName).FirstOrDefault();
            if(employee != null)
            {
                _dbContext.Employees.Remove(employee);
                _dbContext.SaveChanges();
                lblResult.Text = "Employee Deleted Succesfully";
                GetEmployee();
            }
            else
            {
                lblResult.Text = "User not found";
            }
            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Employees employee= new Employees();
            employee.UserName = txtuname.Text;
            var emp = _dbContext.Employees.Where(x=>x.UserName==employee.UserName).FirstOrDefault();
            txtuname.Text = emp.UserName;
            txtfname.Text = emp.FirstName;
            txtlname.Text = emp.LastName;   
            ddlqual.Text = emp.Qualification;
            if (gender1.Checked)
            {
                emp.Gender = "Male";
            }
            else
            {
                emp.Gender = "Female";
            }
            ddldsg.Text = emp.Designation;
            GetEmployee(); lblResult.Text = "Employee Update Succesfully";

        }
    }
}