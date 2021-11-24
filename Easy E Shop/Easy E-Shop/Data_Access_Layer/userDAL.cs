using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Properties_Layer;


namespace Data_Access_Layer
{
  public class userDAL
    {

        public bool insertUser(userProps up)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.userISP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@u_name", up.U_Name));
            cmd.Parameters.Add(new SqlParameter("@u_gender", up.U_Gender));
            cmd.Parameters.Add(new SqlParameter("@u_cnic", up.U_CNIC));
            cmd.Parameters.Add(new SqlParameter("@u_cell", up.U_cell));
            cmd.Parameters.Add(new SqlParameter("@u_Address", up.U_Address));
            cmd.Parameters.Add(new SqlParameter("@u_ofcaddress", up.U_Ofc_Address));
            cmd.Parameters.Add(new SqlParameter("@u_companyaddress", up.U_Company_Address));
            cmd.Parameters.Add(new SqlParameter("@u_employeecode", up.U_Emp_Code));
            cmd.Parameters.Add(new SqlParameter("@u_accesslevel", up.U_Access_Level));
            cmd.Parameters.Add(new SqlParameter("@u_isactive", up.U_isActive));
            cmd.Parameters.Add(new SqlParameter("@u_email", up.U_Email));
            cmd.Parameters.Add(new SqlParameter("@u_username", up.U_Username));
            cmd.Parameters.Add(new SqlParameter("@u_password", up.U_Password));
            return con.udi_sp(cmd);
        }

        public bool updateUser(userProps up)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.userUSP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@u_name", up.U_Name));
            cmd.Parameters.Add(new SqlParameter("@u_gender", up.U_Gender));
            cmd.Parameters.Add(new SqlParameter("@u_cnic", up.U_CNIC));
            cmd.Parameters.Add(new SqlParameter("@u_cell", up.U_cell));
            cmd.Parameters.Add(new SqlParameter("@u_Address", up.U_Address));
            cmd.Parameters.Add(new SqlParameter("@u_ofcaddress", up.U_Ofc_Address));
            cmd.Parameters.Add(new SqlParameter("@u_companyaddress", up.U_Company_Address));
            cmd.Parameters.Add(new SqlParameter("@u_employeecode", up.U_Emp_Code));
            cmd.Parameters.Add(new SqlParameter("@u_email", up.U_Email));
            cmd.Parameters.Add(new SqlParameter("@u_username", up.U_Username));
            cmd.Parameters.Add(new SqlParameter("@u_password", up.U_Password));
          
            return con.udi_sp(cmd);
        }

        public string Login(userProps up)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.loginSP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@u_username", up.U_Username));
            cmd.Parameters.Add(new SqlParameter("@u_password", up.U_Password));
            return con.Login(cmd);
        
        }
        public userProps searchUser(userProps up)
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.usearchSP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@u_username", up.U_Username));
            DataTable dt =  con.searchSP(cmd);
            up.U_Id = Convert.ToInt32(dt.Rows[0]["u_id"].ToString().Trim());
            up.U_Name = dt.Rows[0]["u_name"].ToString().Trim(); 
            up.U_Gender = dt.Rows[0]["u_gender"].ToString().Trim();
            up.U_CNIC = dt.Rows[0]["u_cnic"].ToString().Trim();
            up.U_cell = dt.Rows[0]["u_cell"].ToString().Trim();
            up.U_Address = dt.Rows[0]["u_address"].ToString().Trim();
            up.U_Ofc_Address = dt.Rows[0]["u_ofcaddress"].ToString().Trim();
            up.U_Company_Address = dt.Rows[0]["u_companyaddress"].ToString().Trim();
            up.U_Emp_Code = dt.Rows[0]["u_employeecode"].ToString().Trim();
            up.U_Access_Level = Convert.ToInt32(dt.Rows[0]["u_accesslevel"].ToString().Trim());
            up.U_isActive = Convert.ToInt32(dt.Rows[0]["u_isactive"].ToString().Trim()); 
            up.U_Email = dt.Rows[0]["u_email"].ToString().Trim();
            up.U_Username = dt.Rows[0]["u_username"].ToString().Trim();
            up.U_Password = dt.Rows[0]["u_password"].ToString().Trim();
            return up; 
        }

        public DataTable search()
        {
            db con = new db();
            con.open();
            SqlCommand cmd = new SqlCommand("dbo.usersearchSP", con.Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@search",1));
            return con.searchSP(cmd);
        }

        public string updaterole(userProps p)
        {
            db con = new db();
            con.open();
            String query = "Update users set u_accesslevel = " + p.U_Access_Level + ",u_isactive = " + p.U_isActive+" where Convert(VARCHAR,u_username) = '" + p.U_Username + "';";

            return con.udis(query);
        }
    }
}
