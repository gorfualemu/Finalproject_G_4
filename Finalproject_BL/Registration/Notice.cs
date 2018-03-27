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
  public class Notice
    {
        public string Organization { get; set; }
        public string Description { get; set; }
        public DateTime PDate { get; set; }
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
    public bool GetNotice(Notice note)
        {
            bool issave = false;
            try
            {
                SqlCommand cmd = new SqlCommand("insert into Notice (Organization,Description,PDate)"+
                    "values(@Organization,@Description,@PDate)", conn);
                //cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                //cmd.Parameters.AddWithValue(" @Action", "Insert").ToString();
                cmd.Parameters.AddWithValue("@Organization",note.Organization);
                cmd.Parameters.AddWithValue("@Description", note.Description);
                cmd.Parameters.AddWithValue("@PDate", note.PDate);
                int row = cmd.ExecuteNonQuery();
                if (row>0)
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
        public DataTable SelectNotice()
        {
            DataTable dt = new DataTable();
            try
            {
                SqlCommand cmd = new SqlCommand("select Organization,Description,PDate from Notice",conn);
                //cmd.Parameters.AddWithValue(" @Action", "select");
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
    }
}
