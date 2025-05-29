using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_DoctorDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = Session["username"].ToString();
        TextBox txtusername = (TextBox)FormView1.FindControl("UsernameTextBox");
        txtusername.Text = username;

        p1.Visible = false;
        FormView2.Visible = false;
        BindDeatils(username);
    }

    void BindDeatils(String username)
    {
        String query = "select * from DoctorDetails Where username = @username";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("username", username);
        SqlDataReader reader = cmd.ExecuteReader();
        if(reader.HasRows)
        {
            p1.Visible = true;
            detailsrep.DataSource = reader;
            detailsrep.DataBind();
            FormView1.Visible = false;
            FormView2.Visible = true;
        }
        
    }
    protected void FormView2_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        FileUpload prodimg = (FileUpload)FormView2.FindControl("FileUpload1");

        if (prodimg.HasFile)
        {
            String url = Server.MapPath("~/Assets/Images/" + prodimg.FileName);
            prodimg.SaveAs(url);


            SqlConnection conn = new Connection().getConn();
            
            String query = "update doctordetails set imagepath = @img where id in (select max(id) from doctordetails)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("img", "../Assets/Images/" + prodimg.FileName);

            cmd.ExecuteNonQuery();
            Response.Redirect("DoctorDetails.aspx");
        }
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        FileUpload prodimg = (FileUpload)FormView1.FindControl("FileUpload1");

        if (prodimg.HasFile)
        {
            String url = Server.MapPath("~/Assets/Images/" + prodimg.FileName);
            prodimg.SaveAs(url);
        }

        SqlConnection conn = new Connection().getConn();
            

        String query = "update doctordetails set imagepath = @img where id in (select max(id) from doctordetails)";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("img", "../Assets/Images/" + prodimg.FileName);

        cmd.ExecuteNonQuery();
        Response.Redirect("DoctorDetails.aspx");
    }
}