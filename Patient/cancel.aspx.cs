using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_cancel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "update DocSchedule set status = 'cancelled' where id = @id";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        cmd.ExecuteNonQuery();
        Response.Redirect("Dashboard.aspx");
    }
}