using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_E_Shop
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Session["userName"] = null;
            Session["accessLevel"] = null;
            Response.Redirect("login.aspx");
               
        }
    }
}