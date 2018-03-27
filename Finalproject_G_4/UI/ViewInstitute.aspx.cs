using Finalproject_BL.Registration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject_G_4.UI.Indexpage
{
    public partial class ViewInstitute : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Drivinglicense"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SelectInst();
            }
        }

        private void SelectInst()
        {
            try
            {
                Institute inst = new Institute();
                DataTable dt = new DataTable();
                dt = inst.SelectInstituteInfo();
             
                if (dt.Rows.Count > 0)
                {
                    gvemployee.DataSource = dt;
                    gvemployee.DataBind();
                }
                else

                {
                    dt.Rows.Add(dt.NewRow());
                    gvemployee.DataSource = dt;
                    gvemployee.DataBind();
                    int TotalColumns = gvemployee.Rows[0].Cells.Count;
                    gvemployee.Rows[0].Cells.Clear();
                    gvemployee.Rows[0].Cells.Add(new TableCell());
                    gvemployee.Rows[0].Cells[0].ColumnSpan = TotalColumns;
                    gvemployee.Rows[0].Cells[0].Text = "data not found";
                    gvemployee.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
            catch (Exception ex)
            {

 
            }
            }
        
        
        protected void gvemployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvemployee.EditIndex = e.NewEditIndex;
            SelectInst();
        }

        protected void gvemployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            try
            {
                conn.Open();
                String quary = "UPDATE Institute set Name=@Name,Zone=@Zone,Town=@Town,Phone=@Phone,Fax=@Fax,StartDate=@StartDate, Owner=@Owner Kebele=@Kebele where InstID=@InstID";
                SqlCommand md = new SqlCommand(quary, conn);
                md.Parameters.AddWithValue("@Name", (gvemployee.Rows[e.RowIndex].FindControl("txtname") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@Zone", (gvemployee.Rows[e.RowIndex].FindControl("txtzone") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@Town", (gvemployee.Rows[e.RowIndex].FindControl("txttown") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@Phone", (gvemployee.Rows[e.RowIndex].FindControl("txtphone") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@Fax", (gvemployee.Rows[e.RowIndex].FindControl("txtfax") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@StartDate", (gvemployee.Rows[e.RowIndex].FindControl("txtstartdate") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@Owner", (gvemployee.Rows[e.RowIndex].FindControl("txtowner") as TextBox).Text.Trim());
                md.Parameters.AddWithValue("@Kebele", (gvemployee.Rows[e.RowIndex].FindControl("txtkebele") as TextBox).Text.Trim());
                md.ExecuteNonQuery();
                conn.Close();
                gvemployee.EditIndex = -1;
                SelectInst();
              //  msgesuccess.Text = "selected recored updated";

            }

            catch (Exception ex)
            {
               // msgesuccess.Text = "";
               // msgerror.Text = ex.Message;
            }
        }

        protected void gvemployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvemployee.EditIndex = -1;
            SelectInst();
        }

        protected void gvemployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            bool isdelete = false;
            try
            {
                Institute inst = new Institute();
                inst.InstID = gvemployee.DataKeys[e.RowIndex].Value.ToString();
                isdelete = inst.DeleteInstituteInfo(inst);
                if (isdelete == true)
                {
                    labelsuccessmessage.Text = "Delete succesful";
                }
                SelectInst();

            }
            catch (Exception ex)
            {
                labelerrormessage.Text = ex.Message;
                labelsuccessmessage.Visible = true;
                labelsuccessmessage.Text = "";
                labelerrormessage.Text = ex.Message;
            }

        }
    }
 }
