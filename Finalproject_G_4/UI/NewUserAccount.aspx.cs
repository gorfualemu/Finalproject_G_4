using Finalproject_BL.Account;
using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class NewUserAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnsave_Click(object sender, ImageClickEventArgs e)
        {
          
            if (txtusername.Text == "" || txtpassword.Text == "")
            {
                msgerror.Text = "please fill the form !";
            }
            else
            {
                bool issave = false;
                try
                {
                    CreateAccount account = new CreateAccount();
                    account.AccountUserID = txtuserid.Text;
                    account.username = txtusername.Text;
                    account.password = txtpassword.Text;
                    account.UserRole = ddlrole.SelectedValue;
                    issave = account.GetUserAccount(account);
                    if (issave == true)
                    {
                        msgerror.Text = "";
                        msgsuccess.Text = "account successfully created !";
                    }

                }
                catch (Exception ex)
                {
                    msgsuccess.Text = "";
                    msgerror.Text = "error " + ex.Message;
                }
            }
        }

        protected void btnreset_Click(object sender, ImageClickEventArgs e)
        {
            txtuserid.Text = "";
            txtlname.Text = "";
            txtfname.Text = "";
            txtusername.Text = "";
            txtpassword.Text = "";
            txtconfirmpass.Text = "";
            msgsuccess.Text = "";
            msgsuccess.Text = "";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
                string Search = " select* from Users where UserID='"+txtuserid.Text+"'";
                SqlCommand cmd = new SqlCommand(Search, conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read()==true)
                {
                   
                    txtfname.Text = dr["FirstName"].ToString();
                    txtlname.Text = dr["MiddleName"].ToString();
                     dr.Close();
                     conn.Close();
                }
            }
            catch (Exception ex)
            {

                msgerror.Text = ""+ex.Message;
            }
        
        }
    }
}