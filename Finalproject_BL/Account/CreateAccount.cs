using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace Finalproject_BL.Account
{
   public class CreateAccount
    {
        public string AccountUserID { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string UserRole { get; set; }
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        public bool GetUserAccount(CreateAccount account)
        {
            bool issave = false;
            try
            {
                SqlCommand cmd = new SqlCommand("sp_useraccount",conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                //cmd.Parameters.AddWithValue(" @Action ", "Insert");
                cmd.Parameters.AddWithValue("@UserName", account.username);
                cmd.Parameters.AddWithValue("@Password", account.password);
                cmd.Parameters.AddWithValue("@UserRole", account.UserRole);
                cmd.Parameters.AddWithValue("@AccountUserID", account.AccountUserID);
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    issave = true;
                }
                else
                {
                    issave = false;
                }
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return issave;
        }

    }
}
