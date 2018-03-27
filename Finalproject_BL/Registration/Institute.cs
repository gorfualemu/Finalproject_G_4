using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Finalproject_BL.Registration
{
    public class Institute
    {
        public string InstID { get; set; }
        public string Name { get; set; }
        public string Town { get; set; }
        public string Zone { get; set; }
        public int Phone { get; set; }
        public int Fax { get; set; }
        public DateTime Startdate { get; set; }
        public string Owner { get; set; }
        public int Kebele { get; set; }


        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        public bool GetInstitute(Institute insts)
        {
            bool issave = false;
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Institute", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                //cmd.Parameters.AddWithValue("@Action","Insert");
                cmd.Parameters.AddWithValue("@InstID", insts.InstID);
                cmd.Parameters.AddWithValue("@Name ", insts.Name);
                cmd.Parameters.AddWithValue("@Town", insts.Town);
                cmd.Parameters.AddWithValue("@Zone", insts.Zone);
                cmd.Parameters.AddWithValue("@Phone", insts.Phone);
                cmd.Parameters.AddWithValue("@Fax", insts.Fax);
                cmd.Parameters.AddWithValue("@StartDate", insts.Startdate);
                cmd.Parameters.AddWithValue("@Owner", insts.Owner);
                cmd.Parameters.AddWithValue("@Kebele", insts.Kebele);
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
            catch (SqlException ex)
            {

                throw new Exception(ex.Message);
            }

            return issave;
        }

        public DataTable SelectInstituteInfo()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from Institute", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                conn.Open();
                sda.Fill(dt);
                
                return dt;
              
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
           
        }
        public bool DeleteInstituteInfo(Institute insts)
        {
            bool isdelete = false;
            try
            {
               
                SqlCommand cmd = new SqlCommand("delete from Institute where InstID=@InstID", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@InstID", insts.InstID);
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    isdelete = true;

                }
                else
                {
                    isdelete = false;
                }
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return isdelete;
        }
    }
}
