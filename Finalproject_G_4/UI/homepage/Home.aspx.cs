using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setImageurl();
            }
           
        }
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            setImageurl();
        }
        private void setImageurl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 6);
          ImageAnimate.ImageUrl = "~/movie/" + i.ToString() + ".jpg";
        }
    }
    }
