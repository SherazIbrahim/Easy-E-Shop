using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Properties_Layer;
using Business_Logic_Layer;
using System.Web.Services.Description;

namespace Easy_E_Shop
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
            userProps up = new userProps();
            up.U_Name = txtname.Text.Trim();
            up.U_Gender = gender.SelectedValue.Trim();
            up.U_CNIC = txtcnic.Text.Trim();
            up.U_cell = txtcell.Text.Trim();
            up.U_Address = txtaddress.Text.Trim();
            up.U_Ofc_Address = txtofcaddress.Text.Trim();
            up.U_Company_Address = txtcompanyaddress.Text.Trim();
            up.U_Emp_Code = txtempcode.Text.Trim();
            up.U_Access_Level = 4;
            up.U_isActive = 1;
            up.U_Email = txtemail.Text.Trim();
            up.U_Username = txtuname.Text.Trim();
            up.U_Password = txtpswd.Text.Trim();
            if( new userBLL().insertUser(up))
            {
                msg.Text = "Registration Successfull!";
            }
            else
            {
                msg.Text = "Registration Not Successfull!";
            }
        }
    }
}