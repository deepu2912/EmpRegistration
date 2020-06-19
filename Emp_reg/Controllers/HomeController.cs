using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Emp_reg.Models;
using System.Data;

namespace Emp_reg.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            DataSet ds = new DataSet();
            Employee e = new Employee();
            ds = e.GetEmpID();
            string empID = "";

            if (ds != null)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    empID = empID + "<option>" + dr["ID"].ToString() + "</option>";
                }
            }
            ViewBag.EmpIDData = empID;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpPost]

        public ActionResult InsertEmployee(string name, string address, string city, string dateofbirth, string Age,
             string phoneNumber, string Department, string Manager, string dateofjoining, string dateofLeaving)
        {

            string Message = "";
            Employee e = new Employee();
            e.Name = name;
            e.City = city;
            e.Address = address;
            e.DateofBirth =    dateofbirth ;
            e.Age = Age;
            e.PhoneNumber = phoneNumber;
            e.Department = Department;
            e.Manager = Manager;
            e.DateofJoining = dateofjoining;
            e.DateofLeaving = dateofLeaving;

            DataSet ds = new DataSet();

            ds = e.InsertEmpData();

            if (ds != null)
            {
                if (ds.Tables[0].Rows[0]["RESULT"].ToString() == "1")
                {
                    Message = "Emp record successfully Updated";
                }
                else
                {
                    Message = "Emp record already existing";
                }
            }
            else
            {
                Message = "Some error occured";
            }

            return Json(new
            {
                msg = Message
            });
        }


        [HttpPost]
        public ActionResult GetEmpDatabyID(string id)
        {
            
            Employee e = new Employee();
            DataSet ds = new DataSet();

            e.EmpID = Convert.ToInt32(id);

            ds = e.GetEmpDatabyID();

            List<Employee> emplist = new List<Employee>();

            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                emplist = ds.Tables[0].AsEnumerable().Select(row =>
                                     new Employee
                                     {
                                         EmpID = Convert.ToInt32(row["ID"]),
                                         Name = Convert.ToString(row["Name"]).Trim(),
                                         Address = Convert.ToString(row["Address"]).Trim(),
                                         City = Convert.ToString(row["City"]).Trim(),
                                         DateofBirth = Convert.ToString(row["DateofBirth"]).Trim(),
                                         Age = Convert.ToString(row["Age"]).Trim(),
                                         PhoneNumber = Convert.ToString(row["PhoneNumber"]).Trim(),
                                         Department = Convert.ToString(row["Department"]).Trim(),
                                         Manager = Convert.ToString(row["Manager"]).Trim(),
                                         DateofJoining = Convert.ToString(row["DateofJoining"]).Trim(),
                                         DateofLeaving = Convert.ToString(row["DateofLeaving"]).Trim()
                                     }).ToList();

            }


            return Json(emplist);
        }

        [HttpPost] 
        public ActionResult UpdateEmployee(string id
            , string name, string address, string city, string dateofbirth, string Age,
        string phoneNumber, string Department, string Manager, string dateofjoining, string dateofLeaving
            )
        {

            string Message = "";
            Employee e = new Employee();
            e.Name = name;
            e.City = city;
            e.Address = address;
            e.DateofBirth =  dateofbirth ;
            e.Age = Age;
            e.PhoneNumber = phoneNumber;
            e.Department = Department;
            e.Manager = Manager;
            e.DateofJoining =  dateofjoining ;
            e.DateofLeaving =  dateofLeaving ;
            e.EmpID = Convert.ToInt32(id);
            DataSet ds = new DataSet();

            ds = e.UpdateEmpData();

            if (ds != null)
            {
                if (ds.Tables[0].Rows[0]["RESULT"].ToString() == "1")
                {
                    Message = "Emp record Updated";
                }
                
            }
            else
            {
                Message = "Some error occured";
            }

            return Json(new
            {
                msg = Message
            });
        }


    }


}