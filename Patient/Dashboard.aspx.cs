using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindDashboard();
    }

    void BindDashboard()
    {
        String query = "select * from DocSchedule s, DoctorDetails d Where s.Did = d.Id and pusername = @pusername order by s.id desc";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("pusername", Session["username"].ToString());
        SqlDataReader reader = cmd.ExecuteReader();

        dashboardrepeater.DataSource = reader;
        dashboardrepeater.DataBind();
    }
}