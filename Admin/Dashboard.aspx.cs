using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new Connection().getConn();

        String query1 = "select count(*) from tblUser where role = 'd'";
        SqlCommand cmd1 = new SqlCommand(query1, conn);
        lblDoctor.Text = cmd1.ExecuteScalar().ToString();


        query1 = "select count(*) from tblUser where role = 'p'";
        cmd1 = new SqlCommand(query1, conn);
        lblPatient.Text = cmd1.ExecuteScalar().ToString();

        query1 = "select count(*) from DocSchedule";
        cmd1 = new SqlCommand(query1, conn);
        lblAppointment.Text = cmd1.ExecuteScalar().ToString();
    }

    
}