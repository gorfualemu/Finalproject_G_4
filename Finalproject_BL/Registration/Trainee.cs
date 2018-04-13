using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace Finalproject_BL.NewTrainee
{
   public class Trainee
    {
        public string StudID { get; set; }
        public string StudInstID { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Sex { get; set; }
        public string EducationLevel { get; set; }
        public string BirthPlace { get; set; }
        public DateTime BirthDate { get; set; }
        public string Nation { get; set; }
        public string CurrentCity { get; set; }
        public string Region { get; set; }
        public string Woreda { get; set; }
        public string Kebele { get; set; }
        public int Phone { get; set; }
        public string LicenseType { get; set; }
        public DateTime CurrentDate { get; set; }
        //document attricutes 
        public byte[] Photo { get; set; }
        public byte[] Medical { get; set; }
        public byte[] Card { get; set; }
        public byte[] IdentityCard { get; set; }

        public bool TraineeRegister(Trainee stud)
        {
            bool issave = false;

            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
            try
            {
                SqlCommand cmd = new SqlCommand("sp_student", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                //to create desualt account 
                cmd.Parameters.AddWithValue("@UserName",stud.StudID);
                cmd.Parameters.AddWithValue("@Password", stud.FirstName+"abcd1234");
                cmd.Parameters.AddWithValue("@UserRole","Trainee");
                cmd.Parameters.AddWithValue("@AccountStudID",stud.StudID);
                cmd.Parameters.AddWithValue("@AccountUserID", "");
                
                //register trainee 
                cmd.Parameters.AddWithValue("@studId", stud.StudID);
                cmd.Parameters.AddWithValue("@FirstName", stud.FirstName);
                cmd.Parameters.AddWithValue("@MiddleName", stud.MiddleName);
                cmd.Parameters.AddWithValue("@LastName", stud.LastName);
                cmd.Parameters.AddWithValue("@Sex", stud.Sex);
                cmd.Parameters.AddWithValue("@EducationLevel", stud.EducationLevel);
                cmd.Parameters.AddWithValue("@Birthplace", stud.BirthPlace);
                cmd.Parameters.AddWithValue("@Birthdate", stud.BirthDate);
                cmd.Parameters.AddWithValue("@Nation", stud.Nation);
                cmd.Parameters.AddWithValue("@CurrentCity", stud.CurrentCity);
                cmd.Parameters.AddWithValue("@Region ", stud.Region);
                cmd.Parameters.AddWithValue("@Woreda ", stud.Woreda);
                cmd.Parameters.AddWithValue("@Kebele", stud.Kebele);
                cmd.Parameters.AddWithValue("@Phone", stud.Phone);
                cmd.Parameters.AddWithValue("@Licensetype", stud.LicenseType);
                cmd.Parameters.AddWithValue("@currentdate", stud.CurrentDate);
                cmd.Parameters.AddWithValue("@StudInstID", stud.StudInstID);
                
                //register documents
                cmd.Parameters.AddWithValue("@DocumentStudID",stud.StudID);
                cmd.Parameters.AddWithValue("@Photo",stud.Photo);
                cmd.Parameters.AddWithValue("@Medical", stud.Medical);
                cmd.Parameters.AddWithValue("@Card", stud.Card);
                cmd.Parameters.AddWithValue("@IdentityCard", stud.IdentityCard);

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
            finally
            {
                conn.Close();
            }
            return issave;
        }
    }
}
