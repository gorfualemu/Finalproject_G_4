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
    public partial class NewUsers : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        string substring = "DBREMP";
        int uniqueid = 1000;
        DateTime Gregorian = DateTime.Now;
        DateTime Ethiopian;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GeneratAutoId();
               txtid.Enabled = false;
            }
            Institute inst = new Institute();
            ddlInstName.DataSource = inst.SelectInstituteInfo();
            ddlInstName.DataTextField = "Name";
            ddlInstName.DataValueField = "InstID";
            ddlInstName.DataBind();

        }
        private void GeneratAutoId()
        {

            if (Gregorian.Month >= 1 && Gregorian.Month <= 8)
            {
                Ethiopian = Gregorian.AddYears(-8);
            }
            else
            {
                Ethiopian = Gregorian.AddYears(-7);
            }
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(" select max(UserID) from Users", conn);
                string id = cmd.ExecuteScalar().ToString();
                conn.Close();
                string year = Ethiopian.Year.ToString();
                string subyear = year.Substring(2, 2);
                string x = "";
           
                if (id.Equals(" "))
                    txtid.Text = substring + "/" + uniqueid + "/" + subyear;
                else
                {
                    for (int i = 0; i < id.Length; i++)
                    {
                        x = id[i].ToString();
                        if (x.Equals("/"))
                        {
                            int min = 0, max = 0;
                            min = i + 1;
                            for (int j = min; j < id.Length; j++)
                            {
                                if (id[j].ToString().Equals("/"))
                                {
                                    max = j;
                                }
                            }
                            x = id.Substring(min, max - min);
                            uniqueid = Convert.ToInt32(x) + 1;
                            break;
                        }
                    }
                    txtid.Text = substring + "/" + uniqueid + "/" + subyear;
                }

            }
            catch (Exception er)
            {
                msgsuccess.Text = " database not connect" + er.Message;
            }    
        }
        protected void btnsave_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                bool issave = false;
               
                User user = new User();
                user.UserID = txtid.Text;
                user.FirstName = txtfname.Text;
                user.MiddleName = txtmname.Text;
                user.LastName = txtlname.Text;
                user.Phone = Convert.ToInt32(txtphone.Text);
                user.Sex = ddlsex.SelectedValue;
                user.Email = txtemail.Text;
                user.Kebele = txtkebele.Text;
                user.UserInstID = ddlInstName.SelectedValue;
                issave = user.GetUser(user);
                msgsuccess.Text = "successfully Inserted !";
                GeneratAutoId();
            }
            catch (Exception ex)
            {
                msgsuccess.Text = " Error ?"+ex.Message;
              
            }
         
        }

     protected void btnreset_Click(object sender, ImageClickEventArgs e)
        {
            txtfname.Text = "";
            txtmname.Text = "";
            txtlname.Text = "";
            txtphone.Text = "";
            ddlsex.Text = "";
            txtemail.Text = "";
            txtkebele.Text = "";
            msgsuccess.Text = "";
            msgerror.Text = "";
        }
 

        protected void btndelete_Click(object sender, EventArgs e)

        {
            bool isdelete = false;
            try
            {
                User user = new  User();
                user.UserID = txtid.Text;
                isdelete = user.DeleteUser(user);
                if (isdelete == true)
                {
                    msgsuccess.Text = "deleted successfully !";
                }
              
            }
            catch (Exception ex)
            {

                msgerror.Text = "" + ex.Message;
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)

        {
            bool isdelete = false;
            try
            {
                User user = new User();
                user.UserID = txtid.Text;
                user.FirstName = txtfname.Text;
                user.MiddleName = txtmname.Text;
                user.LastName = txtlname.Text;
                user.Phone = Convert.ToInt32(txtphone.Text);
                user.Sex = ddlsex.SelectedValue;
                user.Email = txtemail.Text;
                user.Kebele = txtkebele.Text;
                user.UserInstID = ddlInstName.SelectedValue;
                isdelete = user.UpdateUser(user);
                msgsuccess.Text = "successfully Updated !";
                GeneratAutoId();
            }
            catch (Exception ex)
            {
                msgerror.Text = " " + ex.Message;

            }

        }
    }
}