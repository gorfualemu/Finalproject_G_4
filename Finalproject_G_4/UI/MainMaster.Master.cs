using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        public string username{ get; set; }
        public string password { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["username"].ToString();
            lbltime.Text = DateTime.Now.ToLongDateString();
            lblprofile.Text = " well come to gorfu  " + username;
            hiderole();
            getrole();
         
        }

        private void hiderole()
        {

            h1.Visible = false;
            a1.Visible = false;
            m1.Visible = false;
            c1.Visible = false;
            n1.Visible = false;
            login.Visible = false;
        }

        private void getrole()
        {
            if (username == "gorf")
            {
                h1.Visible = true;
                a1.Visible = true;
                m1.Visible = false;
                c1.Visible = false;
            }
            if (username == "ema")
            {
                h1.Visible = false;
                a1.Visible = false;
                m1.Visible = true;
                c1.Visible = true;
            }
            if (username == "asme")
            {
                h1.Visible = true;
                a1.Visible = true;
                m1.Visible = true;
                c1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}