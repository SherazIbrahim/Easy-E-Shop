using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Properties_Layer;
using Business_Logic_Layer; 

namespace Easy_E_Shop
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Session["accessLevel"])
            {
                case "1":
                    break;
                case "2":
                    break;
                case "3":
                    break;
                case "4":
                    break;
                default:
                    Response.Redirect("logout.aspx");
                    break;
            }

            if (!Page.IsPostBack)
            {
                fetchData();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            userProps up = new userProps();
            up.U_Name = txtname.Text.Trim();
            up.U_Gender = gender.SelectedItem.ToString().Trim();
            up.U_CNIC = txtcnic.Text.Trim();
            up.U_cell = txtcell.Text.Trim();
            up.U_Address = txtaddress.Text.Trim();
            up.U_Ofc_Address = txtofcaddress.Text.Trim();
            up.U_Company_Address = txtcompanyaddress.Text.Trim();
            up.U_Emp_Code = txtempcode.Text.Trim();
            up.U_Email = txtemail.Text.Trim();
            up.U_Username = txtuname.Text.Trim();
            up.U_Password = txtpswd.Text.Trim();
            if (new userBLL().updateUser(up))
            {
                msg.Text = "Updation Successfull!";
            }
            else
            {
                msg.Text = "Updation Not Successfull!";
            }
        }

        public void fetchData()
        {
            userProps p = new userProps();
            p.U_Username = Session["userName"].ToString();
            userBLL ub = new userBLL();

            p = ub.search(p);

            if (p != null)
            {
                txtcnic.Text = p.U_CNIC;
                txtname.Text = p.U_Name;
                if (p.U_Gender == "Male")
                {
                    gender.SelectedIndex = 0;
                }
                else if (p.U_Gender == "Female")
                {
                    gender.SelectedIndex = 1;
                }
                else
                {

                    gender.SelectedIndex = 2;
                }
                txtuname.Text = p.U_Username;
                txtcell.Text = p.U_cell;
                txtaddress.Text = p.U_Address;
                txtofcaddress.Text = p.U_Ofc_Address;
                txtcompanyaddress.Text = p.U_Company_Address;
                txtempcode.Text = p.U_Emp_Code;
                txtemail.Text = p.U_Email;
                txtpswd.Text = p.U_Password;
                txtcpswd.Text = p.U_Password;
            }
            else
            {
                msg.Text = "Record Not Found!";
            }


        }
    }
}