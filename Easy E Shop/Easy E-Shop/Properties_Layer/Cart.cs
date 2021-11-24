using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Properties_Layer
{
    public class Cart
    {
        public List<Myproduct> items = null;
        public int totalQty = 0;
        public float totalPrice = 0;

        public Cart(Cart oldCart)
        {
            if (oldCart != null)
            {
                items = oldCart.items;
                totalQty = oldCart.totalQty;
                totalPrice = oldCart.totalPrice;
            }
        }

        public bool RemoveFromCart(productProps product, int qty)
        {
            Myproduct previousitem = items.FirstOrDefault(x => x.product.ProductID == product.ProductID);


            return false;
        }
        public bool AddtoCart(productProps product)
        {
            if (items == null)
            {
                Myproduct myproduct = new Myproduct();
                myproduct.product = product;
                myproduct.quantity = 1;
                myproduct.subtotal = (float)(product.ProductPrice) * 1;
                items = new List<Myproduct>();
                items.Add(myproduct);
                totalQty++;
                totalPrice = myproduct.subtotal;
                return true;
            }
            else
            {
                Myproduct previousitem = items.FirstOrDefault(x => x.product.ProductID == product.ProductID);
                if (previousitem != null)
                {
                    totalPrice = (float)(1 * previousitem.product.ProductPrice) + totalPrice;
                    previousitem.quantity = previousitem.quantity + 1;
                    previousitem.subtotal = previousitem.subtotal + (float)(1 * previousitem.product.ProductPrice);
                    return true;
                }
                else
                {
                    Myproduct myproduct = new Myproduct();
                    myproduct.product = product;
                    myproduct.quantity = 1;
                    myproduct.subtotal = (float)(product.ProductPrice) * 1;
                    items.Add(myproduct);
                    totalQty++;
                    totalPrice = myproduct.subtotal + totalPrice;
                    return true;
                }

            }

            return false;

        }
        public bool removeFromCart(productProps product)
        {
            Myproduct previousitem = items.FirstOrDefault(x => x.product.ProductID == product.ProductID);
            if (previousitem != null)
            {

                totalPrice = totalPrice - (float)(previousitem.product.ProductPrice * 1);
                previousitem.subtotal = previousitem.subtotal - (float)(previousitem.product.ProductPrice * 1);
                previousitem.quantity = previousitem.quantity - 1;
                if (previousitem.quantity == 0)
                {
                    items.Remove(previousitem);
                    totalQty--;
                }
                return true;

            }
            return false;
        }


    }

    public class Myproduct
    {
        public productProps product;
        public int quantity;
        public float subtotal;
    }
}

