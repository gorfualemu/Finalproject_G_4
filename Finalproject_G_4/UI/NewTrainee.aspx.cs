using Finalproject_BL.NewTrainee;
using Finalproject_BL.Registration;
using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI
{
    public partial class NewTrainee : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        string substring = "DBRSTUD";
        int uniqueid = 1000;
        DateTime Gregorian = DateTime.Now;
        DateTime Ethiopian;
        Trainee book = new Trainee();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GeneratAutoId();

                Institute inst = new Institute();
                ddlInstName.DataSource = inst.SelectInstituteInfo();
                ddlInstName.DataTextField = "Name";
                ddlInstName.DataValueField = "InstID";
                ddlInstName.DataBind();
            }
        }
        private void GeneratAutoId()
        {
            if (Gregorian.Month >= 1 && Gregorian.Month <= 8)
            {
                Ethiopian = Gregorian.AddYears(-8);
            }
            else
            {
                Ethiopian = Gregorian.AddYears(-7);
            }
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(" select max(StudId) from Trainee", conn);
                string id = cmd.ExecuteScalar().ToString();
                conn.Close();
                string year = Ethiopian.Year.ToString();
                string subyear = year.Substring(2, 2);
                string x = "";
                
              if(id.Equals(" "))
                txtstudId.Text = substring + "/" + uniqueid + "/" + subyear;
               else
                {
                    for (int i = 0; i < id.Length; i++)
                    {
                        x = id[i].ToString();
                        if (x.Equals("/"))
                        {
                            int min = 0, max = 0;
                            min = i + 1;
                            for (int j = min; j < id.Length; j++)
                            {
                                if (id[j].ToString().Equals("/"))
                                {
                                    max = j;
                                }
                            }
                            x = id.Substring(min, max - min);
                            uniqueid = Convert.ToInt32(x) + 1;
                            break;
                        }
                    }
                    txtstudId.Text = substring + "/" + uniqueid + "/" + subyear;
                }

            }
            catch (Exception er)
            {
                msgsuccess.Text = " database not connect" + er.Message;
            }
            txtstudId.Enabled = false;
        }
        protected void btnsubmit_Click(object sender, ImageClickEventArgs e)
        {
            bool issave = false;
            if (txtfname.Text == "" || txtlname.Text == "")
            {
                msgsuccess.Text = "please enter the correct value !";
            }
           
            try
            {
              //trainee  registration
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
                GetImage();

                issave = book.TraineeRegister(book);
                if (issave == true)
                {
                    msgerror.Text = "";
                    msgsuccess.Text = "Successfully Inserted !";
                    GeneratAutoId();
                }
            }
            catch (Exception er)
            {
                msgsuccess.Text = "";
                msgerror.Text = er.Message;
            }

        }
        // document registration method
   public void GetImage()
        {
            int length = Filephoto.PostedFile.ContentLength;
            byte[] Photos = new byte[length];
            Filephoto.PostedFile.InputStream.Read(Photos, 0, length);

            length = Filephoto.PostedFile.ContentLength;
            byte[] Cards = new byte[length];
            Filephoto.PostedFile.InputStream.Read(Cards, 0, length);

            length = Filephoto.PostedFile.ContentLength;
            byte[] Medicals = new byte[length];
            Filephoto.PostedFile.InputStream.Read(Medicals, 0, length);

            length = Filephoto.PostedFile.ContentLength;
            byte[] IdentityCards = new byte[length];
            Filephoto.PostedFile.InputStream.Read(IdentityCards, 0, length);

            book.Photo = Photos;
            book.Card = Cards;
            book.Medical = Medicals;
            book.IdentityCard = IdentityCards;
        }
        protected void btnreset_Click(object sender, ImageClickEventArgs e)
        {
           
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            uploadImage();
        }
        private void uploadImage()
        {
            string photos, documents, medicals, identitys;
             photos = Filephoto.FileName;
             Filephoto.PostedFile.SaveAs(Server.MapPath("~/Upload/" + photos));
             string Photo = "~/Upload/" + photos.ToString();
             Image16.ImageUrl = "~/Upload/" + photos.ToString();

            documents = FileDocument.FileName;
            FileDocument.PostedFile.SaveAs(Server.MapPath("~/Upload/" + documents));
            string document = "~/Upload/" + documents.ToString();
            Image17.ImageUrl = "~/Upload/" + documents.ToString();

            medicals = FileMedical.FileName;
            FileMedical.PostedFile.SaveAs(Server.MapPath("~/Upload/" + medicals));
            string medical = "~/Upload/" + medicals.ToString();
            Image18.ImageUrl = "~/Upload/" + medicals.ToString();

            identitys = FileIdentity.FileName;
            FileIdentity.PostedFile.SaveAs(Server.MapPath("~/Upload/" + identitys));
            string identity = "~/Upload/" + identitys.ToString();
            Image19.ImageUrl = "~/Upload/" + identitys.ToString();
        }
    }
}