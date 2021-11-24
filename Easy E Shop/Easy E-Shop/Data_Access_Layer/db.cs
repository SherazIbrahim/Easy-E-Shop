using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Properties_Layer;

namespace Data_Access_Layer
{
  public class db
    {
      private  SqlConnection conn;
      private SqlCommand cmd;
      private SqlDataAdapter da;

        public SqlConnection Conn { get => conn; set => conn = value; }
        public SqlCommand Cmd { get => cmd; set => cmd = value; }
        public SqlDataAdapter Da { get => da; set => da = value; }

        public db()
        {
            Conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\mydb.mdf;Integrated Security=True;Connect Timeout=30");
        }

        public void open()
        {
            Conn.Open(); 
        }

        public void close()
        {
            Conn.Close();
        }

        public int insertreceipt(string query)
        {
            try
            {
                Cmd = new SqlCommand(query, Conn);

                
                    return Convert.ToInt32(Cmd.ExecuteScalar());
                
            }
            catch (Exception ex)
            {
                return -1;
            }
            finally
            {
                close();
            }
            
        }
        
        public bool udi(string query)
        {
            try
            {
                Cmd = new SqlCommand(query, Conn);

                if (Cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
            catch(Exception ex)
            {
                return false;
            }
            finally
            {
                close(); 
            }
            return false; 
        }
        public string udis(string query)
        {
            try
            {
                Cmd = new SqlCommand(query, Conn);

                if (Cmd.ExecuteNonQuery() > 0)
                {
                    return "SuccessFull!";
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                close();
            }
            return "Not Successfull!";
        }

        public string udi_sp1(SqlCommand cmd)
        {
            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {
                    return "Successful";
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                close();
            }
            return "Not Successfull!";
        }

        public bool udi_sp(SqlCommand cmd)
        {
            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                close();
            }
            return false;
        }
    

        public DataTable search(string query)
        {
            DataTable dt = null;
            try
            {
                Da = new SqlDataAdapter(query, Conn);
                dt = new DataTable();
                Da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                return dt;
            }
            finally
            {
                close();
            }
            return dt;
        }
        public DataTable searchSP(SqlCommand cmd)
        {
            DataTable dt = null;
            try
            {
                Da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                Da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                return dt;
            }
            finally
            {
                close();
            }
            return dt;
        }

        public string Login(SqlCommand cmd)
        {
            string userinfo = null;
            try
            {
                SqlDataReader dataReader = cmd.ExecuteReader();
               
                if (dataReader.HasRows)
                {

                    while (dataReader.Read()) {
                        userinfo = dataReader.GetInt64(0).ToString().Trim() + "," + dataReader.GetString(1).ToString().Trim() + "," + dataReader.GetInt32(2).ToString().Trim();
                   
                    }
                 
                    return userinfo;
                }
              
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                close();
            }
            return userinfo;
        }

    }
}
