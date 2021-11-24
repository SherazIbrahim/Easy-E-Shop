using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_E_Shop
{
    public partial class SupplierDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Session["accessLevel"])
            {
                case "1":
                    Response.Redirect("AdminDefault.aspx");
                    break;
                case "2":
                    Response.Redirect("EmployeeDefault.aspx");
                    break;
                case "3":
                    
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