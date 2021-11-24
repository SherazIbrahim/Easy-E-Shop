using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Properties_Layer;
using Data_Access_Layer;
namespace Business_Logic_Layer

{
   public class receiptBLL
    {
        public int insertReceipt(receiptProps rp)
        {
            return (new receiptDAL().insertReceipt(rp));
        }
    }
}
