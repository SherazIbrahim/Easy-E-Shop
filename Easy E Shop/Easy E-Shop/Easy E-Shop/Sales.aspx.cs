using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Properties_Layer;
using Business_Logic_Layer;
using System.Collections;
using System.Web.WebSockets;
using System.Drawing.Drawing2D;

namespace Easy_E_Shop
{


    public partial class Sales : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                fetchTitles();
                view();
            }

          
        }

 

        protected void btnclear_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
            txtprice.Text = "";
            txtquantity.Text = "";
            txtstock.Text = "";
            txtdiscount.Text = "";
            txtid.Text = "";
           
        }
 
        public void fetchTitles()
        {
            dtitle.Items.Clear(); 
            dtitle.DataSource = new productBLL().ViewAll();
            dtitle.DataBind();
            dtitle.DataTextField = "prdTitle";
            dtitle.DataValueField = "prdID";
            dtitle.DataBind(); 

        }

        protected void btnsell_Click(object sender, EventArgs e)
        {
            int quantity = Int32.Parse(txtquantity.Text);
            int stock   = Int32.Parse(txtstock.Text);
            double discount = Double.Parse(txtdiscount.Text);
            double price = Double.Parse(txtprice.Text);
            int id = Int32.Parse(txtid.Text);
            if (discount < price)
            {
                if ((stock - quantity >= 0))
                {


                    productProps pp = new productProps();
                    pp.ProductID = Int32.Parse(txtid.Text);
                    pp.ProductStock = (stock - quantity);

                    if (new productBLL().updateProductStock(pp))
                    {
                        Message.Text = "Product Stock Updation Successfull!";
                        salesProps sp = new salesProps();
                        sp.Saleby = Int32.Parse(Session["id"].ToString());
                        sp.Productdid = id;
                        sp.Productquantity = quantity;
                        sp.Total_price = ((price * quantity) - (discount * quantity));
                        sp.Discount = (discount*quantity);
                        Message.Text = new salesBLL().insertSales(sp);
                        view(); 
                        /*if(new salesBLL().insertSales(sp))
                         {
                             Message.Text = "Sale Successfull!";
                            view();
                         }
                         else
                         {
                             Message.Text = "Sale Not Successfull!";
                         }*/
                    }
                    else
                    {
                        Message.Text = "Stock Updation Error!";
                    }
                }
                else
                {
                    Message.Text = "Stock is not available!";
                }
            }
            else
            {
                Message.Text = "Discount is more than price!";
            }

        }

        protected void btnload_Click(object sender, EventArgs e)
        {
            clear();
            productProps pp = new productProps();
            pp.ProductTitle = dtitle.SelectedItem.ToString().Trim();
            productBLL pb = new productBLL();
            pp = pb.searchTitle(pp);
            if (pp is null)
            {
                Message.Text = "Product Search Not Successfull!";

            }
            else
            {
                Message.Text = "Product Search Successfull!";

                txtprice.Text = pp.ProductPrice.ToString().Trim();
                txtstock.Text = pp.ProductStock.ToString().Trim();
                txtid.Text = pp.ProductID.ToString(); 
                dtitle.SelectedIndex = dtitle.Items.IndexOf(dtitle.Items.FindByText(pp.ProductTitle)); 
            }

            

        }

        protected void btnpurchase_Click(object sender, EventArgs e)
        {
            int quantity = Int32.Parse(txtquantity.Text);
            int stock = Int32.Parse(txtstock.Text);
            double discount = Double.Parse(txtdiscount.Text);
            double price = Double.Parse(txtprice.Text);
            int id = Int32.Parse(txtid.Text);
            if (discount < price)
            {
             

                    productProps pp = new productProps();
                    pp.ProductID = Int32.Parse(txtid.Text);
                    pp.ProductStock = (stock + quantity);

                    if (new productBLL().updateProductStock(pp))
                    {
                        Message.Text = "Product Stock Updation Successfull!";
                        purchaseProps pp1 = new purchaseProps();
                        pp1.Purchaseby = Int32.Parse(Session["id"].ToString());
                        pp1.Productdid = id;
                        pp1.Productquantity = quantity;
                        pp1.Total_price = ((price * quantity) - (discount * quantity));
                        pp1.Discount = (discount * quantity);
                        if (new purchaseBLL().insertPurchase(pp1))
                        {
                            Message.Text = "Purchase Successfull!";
                        view();
                        }
                        else
                        {
                            Message.Text = "Purchase Not Successfull!";
                        }
                    }
                    else
                    {
                        Message.Text = "Stock updation Error!";
                    }
                
            }
            else
            {
                Message.Text = "Discount is more than price!";
            }
        }

        public void view()
        {
            GridView1.DataSource = (new salesBLL().showSales());
            GridView1.DataBind();
            GridView2.DataSource = (new purchaseBLL().showPurchases());
            GridView2.DataBind();
        }
    }
}