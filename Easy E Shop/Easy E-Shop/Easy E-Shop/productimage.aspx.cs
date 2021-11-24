using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;
using System.IO;
using Properties_Layer;
namespace Easy_E_Shop
{
    public partial class productimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fetchTitles();
            }
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
        public void fetchTitles()
        {
            dtitles.Items.Clear();
            dtitles.DataSource = new productBLL().ViewAll();
            dtitles.DataBind();
            dtitles.DataTextField = "prdTitle";
            dtitles.DataValueField = "prdID";
            dtitles.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                FileUpload1.SaveAs(Server.MapPath("Images/") + Path.GetFileName(FileUpload1.FileName));
                string imgpath = Path.GetFileName(FileUpload1.FileName);
                productProps p = new productProps();
                p.ProductTitle = dtitles.SelectedItem.ToString().Trim();
                p.Image = imgpath; 
                if(new productBLL().updateImage(p))
                {
                    msg.Text = "Image Updated";
                }
                else{
                    msg.Text = "Image Not Updated";
                }
            }
            catch(Exception ex)
            {
                msg.Text = ex.Message; 
            }
        }
    }
}