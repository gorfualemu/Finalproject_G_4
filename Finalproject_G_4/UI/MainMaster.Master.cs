using System;
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

             home.Visible = false;
             account.Visible = false;
             registration.Visible = false;
             exam.Visible = false;
             attendance.Visible = false;
             notice.Visible = false;
             report.Visible = false;
        }

       private void getrole()
        {
            if (username == "admin")
            {
               home.Visible = true;
               registration.Visible = true;
               account.Visible = true;
               report.Visible = true;
               notice.Visible = true;
            }
            if (username == "instman")
            {
               home.Visible = true;
               registration.Visible = true;
               notice.Visible = true;
               report.Visible = true;
            }
            if (username == "examiner")
            {
                home.Visible =true;
                exam.Visible = true;
                attendance.Visible = true;
                notice.Visible = true;
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}