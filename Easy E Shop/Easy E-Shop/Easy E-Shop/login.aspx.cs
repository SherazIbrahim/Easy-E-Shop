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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            userProps up = new userProps();
            up.U_Username = txtuname.Text.Trim();
            up.U_Password = txtpswd.Text.Trim();
            userBLL ub = new userBLL();
            string info = ub.Login(up);
           
           if(info is null)
            {
                msg.Text = "Invalid Credentials!";
            }
            else
            {
              
                string userName = info.Split(',')[1];
                string accessLevel = info.Split(',')[2];
                string id = info.Split(',')[0];
                Session["userName"] = userName;
                Session["accessLevel"] = accessLevel;
                Session["cart"] = null;
                Session["id"] = id;
               
                switch (Session["accessLevel"])
                {
                    case "1":
                        Response.Redirect("AdminDefault.aspx");
                        break;
                    case "2":
                        Response.Redirect("EmployeeDefault.aspx");
                        break;
                    case "3":
                        Response.Redirect("SupplierDefault.aspx");
                        break;
                    case "4":
                        Response.Redirect("UserDefault.aspx");
                        break;
                    default:
                        Session["userName"] = null;
                        Session["accessLevel"] = null;
                        msg.Text = "Please Contact Admin To Assign You A Role!";
                        break;
                }


            }


        }
    }
}