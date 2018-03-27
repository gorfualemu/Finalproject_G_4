using Finalproject_BL.NewTrainee;
using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class NewTrainee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Institute inst = new Institute();
                ddlInstName.DataSource = inst.SelectInstituteInfo();
                ddlInstName.DataTextField = "Name";
                ddlInstName.DataValueField = "InstID";
                ddlInstName.DataBind();
            }
        }

        protected void btnsubmit_Click(object sender, ImageClickEventArgs e)
        {
            bool issave = false;
            try
            {
                if (txtfname.Text == "" || txtlname.Text == "")
                {
                    msgsuccess.Text = "please enter the correct value !";
                }
               Trainee book = new Trainee();
                book.StudID = txtstudId.Text;
                book.FirstName = txtfname.Text;
                book.MiddleName = txtmname.Text;
                book.LastName = txtlname.Text;
                book.Sex = ddlsex.SelectedItem.Text;
                book.EducationLevel = ddleducation.SelectedItem.Text;
                book.BirthPlace = txtbirthplace.Text;
                book.BirthDate = Convert.ToDateTime(txtbirthdate.Text);
                book.Nation = txtnation.Text;
                book.CurrentCity = txtcurrentcity.Text;
                book.Region = txtregion.Text;
                book.Woreda = txtworeda.Text;
                book.Kebele = txtkebele.Text;
                book.Phone = Convert.ToInt32(txtphone.Text);
                book.LicenseType = ddllicensetype.SelectedItem.Text;
                book.CurrentDate = Convert.ToDateTime(txtcurrentdate.Text);
                book.StudInstID = ddlInstName.SelectedValue;
                issave = book.TraineeRegister(book);
                if (issave == true)
                {
                    msgerror.Text = "";
                    msgsuccess.Text = "Successfully Inserted !";
                }
            }
            catch (Exception er)
            {
                msgsuccess.Text = "";
                msgerror.Text = er.Message;
            }

        }
        protected void btnreset_Click(object sender, ImageClickEventArgs e)
        {
            txtstudId.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtmname.Text = "";
            ddlsex.Text = "";
            ddleducation.Text = "";
            txtnation.Text = "";
            txtcurrentcity.Text = "";
            txtregion.Text = "";
            txtworeda.Text = "";
            txtkebele.Text = "";
            txtphone.Text = "";
            ddllicensetype.Text = "";
            txtcurrentdate.Text = "";
            msgerror.Text = "";
            msgsuccess.Text = "";
        }
    }
}