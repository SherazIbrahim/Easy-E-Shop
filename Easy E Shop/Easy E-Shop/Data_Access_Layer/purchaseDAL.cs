using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Properties_Layer;

namespace Data_Access_Layer
{
   public class purchaseDAL
    {
        public bool insertPurchase(purchaseProps pp)
        {
            string query = "insert into purchase (purchaseby,prdid,prdquantity,total_price,discount) Values(" + pp.Purchaseby + "," + pp.Productdid + "," + pp.Productquantity + "," + pp.Total_price + "," +  pp.Discount + ");";
            db con = new db();
            con.open();
            return con.udi(query);

        }
        public DataTable showPurchases()
        {
            string query = "Select u_username,prdTitle,prdquantity,total_price,discount from purchase p,Products d,users u Where p.purchaseby = u.u_id and p.prdid = d.prdID";
            db con = new db();
            con.open();
            return con.search(query);

        }
    }
}
