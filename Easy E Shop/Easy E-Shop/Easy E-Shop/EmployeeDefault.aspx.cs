using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_E_Shop
{
    public partial class EmployeeDefault : System.Web.UI.Page
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
                    Response.Redirect("SupplierDefault.aspx");
                    break;
                case "4":
                    Response.Redirect("UserDefault.aspx");
                    break;
                default:
                    Response.Redirect("logout.aspx");
                    break;
            }
        }
    }
}