using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Properties_Layer
{
   public class salesProps
    {
        private int salesid;
        private int saleby;
        private int productdid;
        private int productquantity;
        private double total_price;
        private double discount;
        private int cartid;
        public int Salesid { get => salesid; set => salesid = value; }
        public int Saleby { get => saleby; set => saleby = value; }
        public int Productdid { get => productdid; set => productdid = value; }
        public int Productquantity { get => productquantity; set => productquantity = value; }
        public double Total_price { get => total_price; set => total_price = value; }
        public double Discount { get => discount; set => discount = value; }
        public int Cartid { get => cartid; set => cartid = value; }
    }
}
