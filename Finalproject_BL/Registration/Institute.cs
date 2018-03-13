using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace Finalproject_BL.Registration
{

    public class Institute
    {
        public int id { get; set; }
        public string InstID { get; set; }
        public string Name { get; set; }
        public int Phone { get; set; }
        public string Zone { get; set; }
        public DateTime date { get; set; }


        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        public bool GetInstitute(Institute insts)
        {
            bool issave = false;
           
            try
            {
                string insertQuery = "insert into first (id,name,date) values (@id,@name,@date)";
                SqlCommand cmd = new SqlCommand(insertQuery,conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id",insts.id);
                cmd.Parameters.AddWithValue("@name ", insts.Name);
                cmd.Parameters.AddWithValue("@date", insts.date);
                int row = cmd.ExecuteNonQuery();
                if(row > 0){
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
    }
}
