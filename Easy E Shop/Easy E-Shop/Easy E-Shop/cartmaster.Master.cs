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
    public partial class cartmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["cart"] != null)
                {
                    Cart cart = (Cart)Session["cart"];
                    datalist.DataSource = cart.items;
                    datalist.DataBind();
                }
            }
        }
        protected void btnRemoveFromCartCommand(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "removeFromCart")
            {
                int id = Int16.Parse(e.CommandArgument.ToString());
                productProps p = new productProps();
                p.ProductID = id;
                Cart cart = null;
                if (Session["cart"] != null)
                {
                    cart = (Cart)Session["cart"];
                }
                Cart newcart = new Cart(cart);
                if (newcart.removeFromCart(p))
                {
                    Session["cart"] = newcart;
                    Response.Redirect(Request.RawUrl);
                }
                else
                {
                    Response.Write(@"<script language='javascript'>alert('Item not removed to cart');</script>");
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            if (Session["cart"] != null)
            {
                Cart buyCart = ((Cart)Session["cart"]);
                receiptProps rp = new receiptProps();
                rp.Customerid = Int32.Parse(Session["id"].ToString());
                rp.Totalcost = buyCart.totalPrice;
                rp.Totalitems = buyCart.totalQty;
                int id = new receiptBLL().insertReceipt(rp);
                if (id != -1)
                {
                    for (int i = 0; i < buyCart.items.Count; i++)
                    {

                        if (((Myproduct)buyCart.items[i]).product.ProductStock < ((Myproduct)buyCart.items[i]).quantity)
                        {
                            Response.Write(@"<script language='javascript'>alert('Transaction Not scuccessfull Because stock of " + ((Myproduct)buyCart.items[i]).product.ProductTitle + " is" + ((Myproduct)buyCart.items[i]).product.ProductStock + " which is less than your need!');</script>");
                        }
                        else
                        {
                            productProps pp = new productProps();
                            pp.ProductID = ((Myproduct)buyCart.items[i]).product.ProductID;
                            pp.ProductStock = (((Myproduct)buyCart.items[i]).product.ProductStock - ((Myproduct)buyCart.items[i]).quantity);

                            if (new productBLL().updateProductStock(pp))
                            {

                                salesProps sp = new salesProps();
                                sp.Saleby = Int32.Parse(Session["id"].ToString());
                                sp.Productdid = ((Myproduct)buyCart.items[i]).product.ProductID;
                                sp.Productquantity = ((Myproduct)buyCart.items[i]).quantity;
                                sp.Total_price = ((Myproduct)buyCart.items[i]).subtotal;
                                sp.Cartid = id;

                                if (new salesBLL().insertCartSales(sp))
                                {

                                }
                                else
                                {
                                    Response.Write(@"<script language='javascript'>alert('Transaction For " + ((Myproduct)buyCart.items[i]).product.ProductTitle + " Not scuccessfull!');</script>");
                                }


                            }
                            else
                            {
                                Response.Write(@"<script language='javascript'>alert('Stock updation Error!);</script>");
                            }

                            Session["cart"] = null;
                            Response.Write(@"<script language='javascript'>alert('Transaction scuccessfull!');</script>");
                            if (Session["cart"] != null)
                            {
                                Cart cart = (Cart)Session["cart"];
                                datalist.DataSource = cart.items;
                                datalist.DataBind();
                            }
                        }
                    }
                }
                else
                {
                    Response.Write(@"<script language='javascript'>alert('Transaction Not scuccessfull!');</script>");

                }
            }
        }
        }

       
    }
