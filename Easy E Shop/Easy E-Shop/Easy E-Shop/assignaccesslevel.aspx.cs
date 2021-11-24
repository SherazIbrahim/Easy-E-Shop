using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;
using Properties_Layer;

namespace Easy_E_Shop
{
    public partial class assignaccesslevel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Session["accessLevel"])
            {
                case "1":
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
                    Response.Redirect("logout.aspx");
                    break;
            }
            if (!IsPostBack)
            {
                fetchusername();
            }
        }

        public void fetchusername()
        {
            dusername.Items.Clear();
            dusername.DataSource = new userBLL().ViewAll();
            dusername.DataBind();
            dusername.DataTextField = "u_username";
            dusername.DataValueField = "u_id";
            dusername.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
               userProps p = new userProps();
                p.U_Username = dusername.SelectedItem.ToString().Trim();
                p.U_Access_Level = Convert.ToInt32(drole.SelectedValue.ToString().Trim());
                p.U_isActive = Convert.ToInt32(dactive.SelectedValue.ToString().Trim());
                msg.Text = new userBLL().updaterole(p);
                /*  if (new userBLL().updaterole(p))
                {
                    msg.Text = "Role Updated";
                }
                else
                {
                    msg.Text = "Role Not Updated";
                }*/
            }
            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }
        }
    }
}