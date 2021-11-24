using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Properties_Layer
{
  public class receiptProps
    {
        private int cartid;
        private double totalcost;
        private int totalitems;
        private int customerid;

        public int Cartid { get => cartid; set => cartid = value; }
        public double Totalcost { get => totalcost; set => totalcost = value; }
        public int Totalitems { get => totalitems; set => totalitems = value; }
        public int Customerid { get => customerid; set => customerid = value; }

    }
}
