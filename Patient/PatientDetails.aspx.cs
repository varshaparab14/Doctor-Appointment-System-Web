using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_PatientDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = Session["username"].ToString();
        TextBox txtusername = (TextBox)FormView1.FindControl("UsernameTextBox");
        txtusername.Text = username;

        FormView2.Visible = false;
        BindDeatils(username);
    }
    void BindDeatils(String username)
    {
        String query = "select * from PatientDetails Where username = @username";
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
        Response.Redirect("PatientDetails.aspx");
    }
}