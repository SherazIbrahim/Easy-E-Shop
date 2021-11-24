using Properties_Layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer
{
 public class salesDAL
    {
        public string insertSales(salesProps sp)
        {
            string query = "insert into sales (saleby,prdid,prdquantity,total_price,discount) Values("+sp.Saleby+","+sp.Productdid +","+sp.Productquantity + ","+sp.Total_price +","+sp.Discount + ");";
            db con = new db();
            con.open();
            return con.udis(query);

        }
        public bool insertCartSales(salesProps sp)
        {
            string query = "insert into cartsale (saleby,prdid,prdquantity,total_price,cartid) Values(" + sp.Saleby + "," + sp.Productdid + "," + sp.Productquantity + "," + sp.Total_price + "," + sp.Cartid + ");";
            db con = new db();
            con.open();
            return con.udi(query);

        }
        public DataTable showSales()
        {
            string query = "Select u_username,prdTitle,prdquantity,total_price,discount from sales s,Products d,users u Where s.saleby = u.u_id and s.prdid = d.prdID";
            db con = new db();
            con.open();
            return con.search(query);

        }
    }
}
