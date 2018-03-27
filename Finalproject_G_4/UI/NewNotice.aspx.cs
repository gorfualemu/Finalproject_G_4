using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class NewNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpost_Click(object sender, EventArgs e)
        {
            Notice note = new Notice();
            bool issave = false;
            try
            {
                
                note.Organization = txtorg.Text;
                note.Description = txtnotice.Text;
                note.PDate = DateTime.Now.Date;
                issave = note.GetNotice(note);
                if(issave==true)
                {
                    
                    msgsuccess.Text = "successfully posted !";
                }
            }
            catch (Exception ex)
            {

                msgerror.Text = " error message "+ ex.Message;
            }
          
        }
    }
}