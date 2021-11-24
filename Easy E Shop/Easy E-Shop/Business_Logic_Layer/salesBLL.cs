using Data_Access_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Properties_Layer;
using System.Data;

namespace Business_Logic_Layer
{
   public class salesBLL
    {
        public string insertSales(salesProps sp)
        {
            return (new salesDAL().insertSales(sp));

        }
        public bool insertCartSales(salesProps sp)
        {
            return (new salesDAL().insertCartSales(sp));

        }
        public DataTable showSales()
        {

            return (new salesDAL().showSales());

        }
    }
}
