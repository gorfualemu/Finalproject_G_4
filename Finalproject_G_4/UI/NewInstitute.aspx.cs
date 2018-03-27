using Finalproject_BL;
using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class NewInstitute : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        string id = "DBU";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GeneratAutoId();
            }
        }

        private void GeneratAutoId()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(" select count(InstID) from Institute", conn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                conn.Close();
                i++;
                
                DateTime Gregorian = DateTime.Now;
                DateTime Ethiopian;
                if (Gregorian.Month >= 1 && Gregorian.Month <= 8)
                {
               Ethiopian = Gregorian.AddYears(-8);
                }
                else
                {
                    Ethiopian = Gregorian.AddYears(-7);
                }
                 string year= Ethiopian.Year.ToString();
                string subyear = year.Substring(2,2);
                txtid.Text = id + "/" + i.ToString() + "/" + subyear;
            }
            catch (Exception er)
            {
                msgsuccess.Text = " database not connect" + er.Message;
            }
            txtid.Enabled = true ;
        }

        protected void btnsave_Click(object sender, ImageClickEventArgs e)
        {
            bool saves = false;
            Institute inst = new Institute();
            try
            {
                inst.InstID = txtid.Text;
                inst.Name = txtname.Text;
                inst.Town = txttown.Text;
                inst.Zone = txtzone.Text;
                inst.Phone = Convert.ToInt32(txtphone.Text);
                inst.Fax = Convert.ToInt32(txtfax.Text);
                inst.Owner = txtowner.Text;
                inst.Startdate = Convert.ToDateTime(txtstartdate.Text);
                inst.Kebele = Convert.ToInt32(txtkebele.Text);
                saves = inst.GetInstitute(inst);
                if (saves == true)
                {

                   msgsuccess.Text = "successfully inserted !";
                }
            }
            catch (Exception eer)
            {
                msgerror.Text = eer.Message;
            }
            GeneratAutoId();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txttown.Text = "";
            txtzone.Text = "";
            txtphone.Text = "";
            txtfax.Text = "";
            txtowner.Text = "";
            txtstartdate.Text = "";
            txtkebele.Text = "";
            msgerror.Text = "";
            msgsuccess.Text = "";
        }

    }
}