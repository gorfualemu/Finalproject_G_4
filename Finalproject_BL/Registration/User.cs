using Finalproject_BL.NewTrainee;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace Finalproject_BL.Registration
{
  public  class User:Trainee
    {
        public string UserID { get; set; }

        public string Email { get; set; }
        public string UserInstID { get; set; }
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        public bool GetUser(User user)
        {
            bool issave = false;
            try
            {
                SqlCommand cmd = new SqlCommand("sp_user", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.Parameters.AddWithValue("@UserID",user.UserID);
                cmd.Parameters.AddWithValue("@UserInstID",user.UserInstID);
                cmd.Parameters.AddWithValue("@FirstName", user.FirstName);
                cmd.Parameters.AddWithValue("@MiddleName", user.MiddleName);
                cmd.Parameters.AddWithValue("@LastName", user.LastName);
                cmd.Parameters.AddWithValue("@Phone", user.Phone);
                cmd.Parameters.AddWithValue("@Sex", user.Sex);
                cmd.Parameters.AddWithValue("@Email", user.Email);
                cmd.Parameters.AddWithValue("@Kebele", user.Kebele);
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    issave = true;
                }
                else
                {
                    issave = false;
                }
                conn.Close();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return issave;
        }
        public bool UpdateUser(User user)
        {

            bool isupdate = false;
            try
            {
                SqlCommand cmd = new SqlCommand("sp_user", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                cmd.Parameters.AddWithValue("@Action", "Update");
                cmd.Parameters.AddWithValue("@UserID", user.UserID);
                cmd.Parameters.AddWithValue("@UserInstID", user.UserInstID);
                cmd.Parameters.AddWithValue("@FirstName", user.FirstName);
                cmd.Parameters.AddWithValue("@MiddleName", user.MiddleName);
                cmd.Parameters.AddWithValue("@LastName", user.LastName);
                cmd.Parameters.AddWithValue("@Phone", user.Phone);
                cmd.Parameters.AddWithValue("@Sex", user.Sex);
                cmd.Parameters.AddWithValue("@Email", user.Email);
                cmd.Parameters.AddWithValue("@Kebele", user.Kebele);
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    isupdate = true;
                }
                else
                {
                    isupdate = false;
                }
                conn.Close();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return isupdate;
        }
       public bool DeleteUser(User user)
        {
            bool isdelete = false;
            try
            {
                SqlCommand cmd = new SqlCommand("Delete from Users where UserID=@UserID", conn);
                //cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                //cmd.Parameters.AddWithValue("@Action", "Delete");
                cmd.Parameters.AddWithValue("@UserID",user.UserID);
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    isdelete = true;

                }
                else
                {
                    isdelete = false;
                }
                conn.Close();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return isdelete;
        }
    }
}
