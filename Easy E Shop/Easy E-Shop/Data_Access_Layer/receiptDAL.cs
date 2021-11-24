using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Properties_Layer;
namespace Data_Access_Layer
{
  public class receiptDAL
    {
        public int insertReceipt(receiptProps rp)
        {
            string query = "insert into receipt (totalcost,totalitems,customerid) Values(" + rp.Totalcost + "," + rp.Totalitems + "," + rp.Customerid + ") SELECT SCOPE_IDENTITY();";
            db con = new db();
            con.open();
            return con.insertreceipt(query);
        }
    }
}
