using Finalproject_BL.Account;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void imgbtnlogin_Click(object sender, ImageClickEventArgs e)
        {
            CreateAccount acc = new CreateAccount();

            Session["username"] = txtusername.Text;
            Session["password"] = txtpassword.Text;

            if (txtusername.Text == "" || txtpassword.Text == "")
            {
                msgsuccess.Text = "please enter username and password !";
            }
            if (txtusername.Text == "admin" || txtusername.Text == "examiner" || txtusername.Text == "instman")
            {
                Response.Redirect("~/UI/index.aspx");
            }
        }
    }
}