using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_SearchDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DoctorBind();
    }
    void DoctorBind()
    {
        String query = "select * from DoctorDetails";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        detailsrep.DataSource = reader;
        detailsrep.DataBind();
    }

}
