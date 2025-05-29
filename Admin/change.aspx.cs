using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "update tbluser set isactive = @status where id = @id";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);

        String status;
        if (Request.QueryString["isactive"].Equals("True"))
            status = "0";
        else
            status = "1";

        cmd.Parameters.AddWithValue("status", status);
        cmd.ExecuteNonQuery();
        Response.Redirect("Dashboard.aspx");
    }
}