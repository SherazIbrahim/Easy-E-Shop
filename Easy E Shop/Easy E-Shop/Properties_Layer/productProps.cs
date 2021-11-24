using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Properties_Layer
{
    public class productProps
    {

        private int productID;
        private string productTitle;
        private double productPrice;
        private int productStock;
        private DateTime productExpiry;
        private string productManufacturer;
        private string category;
        private string subcategory;
        private string image; 

        public int ProductID { get => productID; set => productID = value; }
        public string ProductTitle { get => productTitle; set => productTitle = value; }
        public double ProductPrice { get => productPrice; set => productPrice = value; }
        public int ProductStock { get => productStock; set => productStock = value; }
        public DateTime ProductExpiry { get => productExpiry; set => productExpiry = value; }
        public string ProductManufacturer { get => productManufacturer; set => productManufacturer = value; }
        public string Category { get => category; set => category = value; }
        public string Subcategory { get => subcategory; set => subcategory = value; }
        public string Image { get => image; set => image = value; }
    }
}
