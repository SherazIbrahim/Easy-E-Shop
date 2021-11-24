using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Properties_Layer
{
   public class purchaseProps
    {

        private int purchaseid;
        private int purchaseby;
        private int productdid;
        private int productquantity;
        private double total_price;
        private double discount;

        public int Purchaseid { get => purchaseid; set => purchaseid = value; }
        public int Purchaseby { get => purchaseby; set => purchaseby = value; }
        public int Productdid { get => productdid; set => productdid = value; }
        public int Productquantity { get => productquantity; set => productquantity = value; }
        public double Total_price { get => total_price; set => total_price = value; }
        public double Discount { get => discount; set => discount = value; }
    }
}
