using Data_Access_Layer;
using Properties_Layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Logic_Layer
{
   public class productBLL
    {

        public bool insertProduct(productProps pp)
        {
            return (new productDAL().insertProduct(pp));
        }
        public bool insertProductsp(productProps pp)
        {
            return (new productDAL().insertProductsp(pp));
        }
        public bool updateProductsp(productProps pp)
        {
            return (new productDAL().updateProductsp(pp));
        }
        public bool updateImage(productProps pp)
        {
            return (new productDAL().updateProductImage(pp));
        }
        public bool deleteProductsp(productProps pp)
        {
            return (new productDAL().deleteProductsp(pp));
        }
        public DataTable ViewAll()
        {
            return (new productDAL().ViewALL());
        }
        public bool updateProduct(productProps pp)
        {
            return (new productDAL().updateProduct(pp));
        }
        public bool updateProductStock(productProps pp)
        {
            return (new productDAL().updateProductStock(pp));
        }
        public bool deleteProduct(productProps pp)
        {
            return (new productDAL().deleteProduct(pp));
        }
        public productProps search(productProps pp)
        {
            return (new productDAL().search(pp));
        }
        public productProps searchTitle(productProps pp)
        {
            return (new productDAL().searchTitle(pp));
        }

    }
}
