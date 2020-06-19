using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Emp_reg.Models
{


    public class Employee
    {

        #region Variables               
        private Int32 empId;
        private string name;
        private string address;
        private string city;
        private string dateofbirth;
        private string age;

        private string phoneNumber;
        private string department;
        private string manager;
        private string dateofjoining;
        private string dateofLeaving;
        #endregion

        #region Constructor
        public Employee()
        {
            this.empId = 0;
            this.name = "";
            this.address = "";
            this.city = "";
            this.dateofbirth = "";
            this.age = "";
            this.phoneNumber = "";
            this.department = "";
            this.manager = "";
            this.dateofjoining = "";
            this.dateofLeaving = "";
        }
        #endregion

        #region Properties

        public Int32 EmpID
        {
            get { return this.empId; }
            set { this.empId = value; }
        }
        public string Name
        {
            get { return this.name; }
            set { this.name = value; }
        }

        public string Address
        {
            get { return this.address; }
            set { this.address = value; }
        }


        public string City
        {
            get { return this.city; }
            set { this.city = value; }
        }
        public string DateofBirth
        {
            get { return this.dateofbirth; }
            set { this.dateofbirth = value; }
        }
        public string Age
        {
            get { return this.age; }
            set { this.age = value; }
        }
        public string PhoneNumber
        {
            get { return this.phoneNumber; }
            set { this.phoneNumber = value; }
        }
        public string Department
        {
            get { return this.department; }
            set { this.department = value; }
        }
        public string Manager
        {
            get { return this.manager; }
            set { this.manager = value; }
        }
        public string DateofJoining
        {
            get { return this.dateofjoining; }
            set { this.dateofjoining = value; }
        }
        public string DateofLeaving
        {
            get { return this.dateofLeaving; }
            set { this.dateofLeaving = value; }
        }


        #endregion
        private string str;
        DataSet ds = new DataSet();

        public DataSet InsertEmpData()
        {
            str = "EXEC Employee_REG @Type='1',@Name='" + name
                + "',@Address='" + Address + "',@City='" + City
                + "',@DateofBirth='" + DateofBirth + "',@Age='" + Age
                + "',@PhoneNumber='" + PhoneNumber + "',@Department='" + Department
                + "',@Manager='" + Manager + "',@DateofJoining='" + DateofJoining
                + "',@DateofLeaving='" + DateofLeaving + "'";
            dal d = dal.GetInstance();
            ds = d.GetDataSet(str);
            if (ds != null)
            {
                return ds;
            }
            else
            {
                return null;
            }


        }


        public DataSet GetEmpID()
        {
            str = "EXEC Employee_REG @Type='2'";
            dal d = dal.GetInstance();
            ds = d.GetDataSet(str);
            if (ds != null)
            {
                return ds;
            }
            else
            {
                return null;
            }

        }
        public DataSet GetEmpDatabyID()
        {

            str = "EXEC Employee_REG @Type='3',@ID='" + EmpID + "'";
            dal d = dal.GetInstance();
            ds = d.GetDataSet(str);
            if (ds != null)
            {
                return ds;
            }
            else
            {
                return null;
            }
        }

        public DataSet UpdateEmpData()
        {

            str = "EXEC Employee_REG @Type='4',@ID='" + EmpID + "',@Name='" + name
                + "',@Address='" + Address + "',@City='" + City
                + "',@DateofBirth='" + DateofBirth + "',@Age='" + Age
                + "',@PhoneNumber='" + PhoneNumber + "',@Department='" + Department
                + "',@Manager='" + Manager + "',@DateofJoining='" + DateofJoining
                + "',@DateofLeaving='" + DateofLeaving + "'";
            dal d = dal.GetInstance();
            ds = d.GetDataSet(str);
            if (ds != null)
            {
                return ds;
            }
            else
            {
                return null;
            }
        }
    }
}