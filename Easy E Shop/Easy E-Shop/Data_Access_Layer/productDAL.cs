using Properties_Layer;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design.Serialization;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer
{
   public class productDAL
    {
        public bool insertProduct(productProps pp)
        {
            string expiry = pp.ProductExpiry.ToString("dd-MM-yyyy");
            string query = "insert into Products (prdID,prdTitle,prdPrice,prdStock,prdExpiry,prdManufacturer) Values(" + pp.ProductID + ",'" + pp.ProductTitle + "'," + pp.ProductPrice + "," + pp.ProductStock + ",'" + expiry + "','" + pp.ProductManufacturer + "');";
            db con = new db();
            con.open();
            return con.udi(query);
        }
        public bool insertProductsp(productProps pp)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.prdISP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@pID", pp.ProductID));
            cmd.Parameters.Add(new SqlParameter("@pTitle", pp.ProductTitle));
            cmd.Parameters.Add(new SqlParameter("@pPrice", pp.ProductPrice));
            cmd.Parameters.Add(new SqlParameter("@pStock", pp.ProductStock));
            cmd.Parameters.Add(new SqlParameter("@pExpiry", pp.ProductExpiry));
            cmd.Parameters.Add(new SqlParameter("@pManufacturer", pp.ProductManufacturer));
       
            return con.udi_sp(cmd);
          
        }
        public bool updateProductsp(productProps pp)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.prdUISP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@pID", pp.ProductID));
            cmd.Parameters.Add(new SqlParameter("@pTitle", pp.ProductTitle));
            cmd.Parameters.Add(new SqlParameter("@pPrice", pp.ProductPrice));
            cmd.Parameters.Add(new SqlParameter("@pStock", pp.ProductStock));
            cmd.Parameters.Add(new SqlParameter("@pExpiry", pp.ProductExpiry));
            cmd.Parameters.Add(new SqlParameter("@pManufacturer", pp.ProductManufacturer));
            cmd.Parameters.Add(new SqlParameter("@opt", 1));
            return con.udi_sp(cmd);
        }

        public bool updateProductImage(productProps pp)
        {
            db con = new db();
            con.open();
            String query = "Update Products set prdImage = '" + pp.Image + "' where Convert(VARCHAR,prdTitle) = '"+pp.ProductTitle+"';";
            
            return con.udi(query);
        }
        public bool deleteProductsp(productProps pp)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.prdDeletesp", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@pID", pp.ProductID));
            return con.udi_sp(cmd);
        }
        public DataTable ViewALL()
        {
            String query = "Select * From Products";
            db con = new db(); 
            con.open();
           return con.search(query);
        }
        public bool updateProduct(productProps pp)
        {
            string expiry = pp.ProductExpiry.ToString("dd-MM-yyyy");
            string query = "UPDATE Products SET prdTitle = '" + pp.ProductTitle +"',prdPrice ="+ pp.ProductPrice +",prdStock ="+pp.ProductStock+",prdExpiry = '"+expiry+"',prdManufacturer ='"+ pp.ProductManufacturer + "' Where prdID = "+pp.ProductID+";";
            db con = new db();
            con.open();
            return con.udi(query);
        }
        public bool updateProductStock(productProps pp)
        {
           
            string query = "UPDATE Products SET prdStock =" + pp.ProductStock + " Where prdID = " + pp.ProductID + ";";
            db con = new db();
            con.open();
            return con.udi(query);
        }


        public bool deleteProduct(productProps pp)
        {
            string query = "Delete From Products  Where prdID = " + pp.ProductID + ";";
            db con = new db();
            con.open();
            return con.udi(query);
        }
        public productProps search(productProps pp)
        {
            String query = "Select * From Products Where prdID = " + pp.ProductID + ";";
            db con = new db();
            con.open();
            DataTable dt =  con.search(query);
            if(dt.Rows.Count > 0)
            {
                pp.ProductID = Int32.Parse(dt.Rows[0]["prdID"].ToString());
                pp.ProductTitle = dt.Rows[0]["prdTitle"].ToString();
                pp.ProductPrice = Double.Parse(dt.Rows[0]["prdPrice"].ToString());
                pp.ProductStock= Int32.Parse(dt.Rows[0]["prdStock"].ToString());
                pp.ProductExpiry = DateTime.Parse(dt.Rows[0]["prdExpiry"].ToString()).Date;
                pp.ProductManufacturer = dt.Rows[0]["prdManufacturer"].ToString();
                pp.Image = dt.Rows[0]["prdImage"].ToString();
            }
            else
            {
                pp = null;
            }
            return pp;
        }
        public productProps searchTitle(productProps pp)
        {
            String query = "Select * From Products Where CONVERT(varchar, prdTitle) = '" + pp.ProductTitle+ "';";
            db con = new db();
            con.open();
            DataTable dt = con.search(query);
            if (dt.Rows.Count > 0)
            {
                pp.ProductID = Int32.Parse(dt.Rows[0]["prdID"].ToString());
                pp.ProductTitle = dt.Rows[0]["prdTitle"].ToString();
                pp.ProductPrice = Double.Parse(dt.Rows[0]["prdPrice"].ToString());
                pp.ProductStock = Int32.Parse(dt.Rows[0]["prdStock"].ToString());
                pp.ProductExpiry = DateTime.Parse(dt.Rows[0]["prdExpiry"].ToString()).Date;
                pp.ProductManufacturer = dt.Rows[0]["prdManufacturer"].ToString();
            }
            else
            {
                pp = null;
            }
            return pp;
        }


    }
}
