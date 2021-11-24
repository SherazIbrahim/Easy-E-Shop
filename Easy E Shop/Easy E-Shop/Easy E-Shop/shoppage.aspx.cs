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
    public partial class shoppage : System.Web.UI.Page
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
                productBLL product = new productBLL();
                System.Data.DataTable dt = product.ViewAll();
                datalist.DataSource = dt;
                datalist.DataBind();
            }
        }

        protected void btnAddToCart_Command(object sender, CommandEventArgs args)
        {

           int id = Int16.Parse(args.CommandArgument.ToString());
            productProps p = new productProps();
            p.ProductID = id;
            productBLL productbLL = new productBLL();
            p = productbLL.search(p);

            Cart cart = null;
            if (Session["cart"] != null)
            {
                cart = (Cart)Session["cart"];
            }
            Cart newCart = new Cart(cart);
            if (newCart.AddtoCart(p))
            {
                Session["cart"] = newCart;
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                Response.Write(@"<script language='javascript'>alert('Item not Added to cart');</script>");
            }
        }
    }
}