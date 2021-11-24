using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data_Access_Layer;
using Properties_Layer;
namespace Business_Logic_Layer
{
  public  class purchaseBLL
    {
        public bool insertPurchase(purchaseProps pp)
        {

            return (new purchaseDAL().insertPurchase(pp));

        }
        public DataTable showPurchases()
        {

            return (new purchaseDAL().showPurchases());

        }
    }
}
