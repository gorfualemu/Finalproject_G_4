using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI.homepage
{
    public partial class ViewNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    Notice note = new Notice();
                    DataTable dt = note.SelectNotice();
                    gvnotice.DataSource = dt;
                    gvnotice.DataBind();
                }
                catch (Exception)
                {


                }
            }
          
        }

        protected void gvnotice_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvnotice.EditIndex =e.NewEditIndex;
        }
    }
}