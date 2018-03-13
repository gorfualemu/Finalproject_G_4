using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class NewInstitute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            bool saves = false;
            Institute inst = new Institute();
            try
            {
                inst.id = Convert.ToInt32(TextBox1.Text);
                inst.Name = TextBox2.Text;
                inst.date = Convert.ToDateTime(Calendar1.SelectedDate);
                saves = inst.GetInstitute(inst);
                if (saves == true)
                {
                    messagesuccess.Text = "successfully inserted !";
                }
            }
            catch (Exception eer)
            {
                messagesuccess.Text = eer.Message;
            }
        
            
        }
    }
}