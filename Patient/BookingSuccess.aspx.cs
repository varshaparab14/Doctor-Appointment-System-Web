using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_BookingSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["date"] == null || Session["time"] == null || Session["did"] == null)
            Response.Redirect("SearchDoctor.aspx");

        String query = "select Name from DoctorDetails Where Id = @id";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Session["did"].ToString());
        lbldoctor.Text = cmd.ExecuteScalar().ToString();
    }
}