using System;
using System.Collections.Generic;
using System.Text;

namespace Properties_Layer
{
  public class userProps
    {
        private int u_Id;
        private string u_Name;
        private string u_Gender;
        private string u_CNIC;
        private string u_cell;
        private string u_Address;
        private string u_Ofc_Address;
        private string u_Company_Address;
        private string u_Emp_Code;
        private int u_Access_Level;
        private int u_isActive;
        private string u_Email;
        private string u_Username; 
        private string u_Password;

        public int U_Id { get => u_Id; set => u_Id = value; }
        public string U_Name { get => u_Name; set => u_Name = value; }
        public string U_Gender { get => u_Gender; set => u_Gender = value; }
        public string U_cell { get => u_cell; set => u_cell = value; }
        public string U_Address { get => u_Address; set => u_Address = value; }
        public string U_Ofc_Address { get => u_Ofc_Address; set => u_Ofc_Address = value; }
        public string U_Company_Address { get => u_Company_Address; set => u_Company_Address = value; }
        public string U_Emp_Code { get => u_Emp_Code; set => u_Emp_Code = value; }
        public int U_Access_Level { get => u_Access_Level; set => u_Access_Level = value; }
        public int U_isActive { get => u_isActive; set => u_isActive = value; }
        public string U_Email { get => u_Email; set => u_Email = value; }
        public string U_Password { get => u_Password; set => u_Password = value; }
        public string U_CNIC { get => u_CNIC; set => u_CNIC = value; }
        public string U_Username { get => u_Username; set => u_Username = value; }
    }
}
