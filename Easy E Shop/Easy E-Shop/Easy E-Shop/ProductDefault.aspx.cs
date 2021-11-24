using Properties_Layer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;
namespace Easy_E_Shop
{
    public partial class ProductDefault : System.Web.UI.Page
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
            ViewALL();

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            productProps pp = new productProps();
            pp.ProductID = Int32.Parse(txtid.Text.Trim());
            pp.ProductTitle = txttitle.Text.Trim();
            pp.ProductPrice = Double.Parse(txtprice.Text.Trim());
            pp.ProductStock = Int32.Parse(txtstock.Text.Trim());
            pp.ProductExpiry = DateTime.Parse(txtexpiry.Text.Trim());
            pp.ProductManufacturer = txtmanufacturer.Text.Trim();
            productBLL pb = new productBLL();
              if (pb.insertProductsp(pp))
               {
                   Message.Text = "Product Registration Successfull!";

               }
               else
               {
                   Message.Text = "Product Registration Not Successfull!";
               }
            
            ViewALL();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            productProps pp = new productProps();
            pp.ProductID = Int32.Parse(txtid.Text.Trim());
            pp.ProductTitle = txttitle.Text.Trim();
            pp.ProductPrice = Double.Parse(txtprice.Text.Trim());
            pp.ProductStock = Int32.Parse(txtstock.Text.Trim());
            pp.ProductExpiry = DateTime.Parse(txtexpiry.Text.Trim());
            pp.ProductManufacturer = txtmanufacturer.Text.Trim();
            productBLL pb = new productBLL();
           if (pb.updateProductsp(pp))
            {
                Message.Text = "Product Updation Successfull!";

            }
            else
            {
                Message.Text = "Product Updation Not Successfull!";
            }
          
            ViewALL(); 
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            productProps pp = new productProps();
            pp.ProductID = Int32.Parse(txtid.Text.Trim());
            productBLL pb = new productBLL();

            if (pb.deleteProductsp(pp))
            {
                Message.Text = "Product Deletion Successfull!";

            }
            else
            {
                Message.Text = "Product Deletion Not Successfull!";
            }
           
            ViewALL();
            clear();
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            clear(); 
        }

        protected void btnviewall_Click(object sender, EventArgs e)
        {
            ViewALL(); 
        }

        public void ViewALL()
        {
            GridView1.DataSource = new productBLL().ViewAll();
            GridView1.DataBind();
        }

        public void clear()
        {
            txtexpiry.Text = "";
            txtid.Text = "";
            txtmanufacturer.Text = "";
            txtprice.Text = "";
            txtstock.Text = "";
            txttitle.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            txtid.Text = GridView1.Rows[rowid].Cells[1].Text.Trim();
            txttitle.Text = GridView1.Rows[rowid].Cells[2].Text.Trim();
            txtprice.Text = GridView1.Rows[rowid].Cells[3].Text.Trim();
            txtstock.Text = GridView1.Rows[rowid].Cells[4].Text.Trim();
            txtexpiry.Text = DateTime.Parse(GridView1.Rows[rowid].Cells[5].Text).ToString("dd-MM-yyyy");
            txtmanufacturer.Text = GridView1.Rows[rowid].Cells[6].Text.Trim();
        }

     
    }
}