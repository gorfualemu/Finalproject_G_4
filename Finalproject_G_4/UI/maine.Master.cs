using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class maine : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltime.Text = DateTime.Now.ToLongDateString();
        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            //lbltimer.Text =System.DateTime.Now.ToString("hh:mm:ss");
        }
    }
}