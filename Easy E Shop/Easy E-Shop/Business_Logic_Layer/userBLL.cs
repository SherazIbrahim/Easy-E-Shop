using Properties_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data_Access_Layer;
using System.Data;

namespace Business_Logic_Layer
{
    public class userBLL
    {
        public bool insertUser(userProps up)
        {
            return (new userDAL().insertUser(up));
        }
        public bool updateUser(userProps up)
        {
            return (new userDAL().updateUser(up));
        }

        public string Login(userProps up)
        {
            return (new userDAL().Login(up));
        }
        public DataTable ViewAll()
        {
            return (new userDAL().search());
        }
        public string updaterole(userProps p)
        {
            return (new userDAL().updaterole(p));
        }

        public userProps search(userProps p)
        {
            return (new userDAL().searchUser(p));
        }
    }
}
