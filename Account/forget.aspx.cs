using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnforget_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new Connection().getConn();

        String query1 = "select password from tbluser where emailid = @em";
        SqlCommand cmd1 = new SqlCommand(query1, conn);
        cmd1.Parameters.AddWithValue("em", txtEmail.Text);

        SqlDataReader reader = cmd1.ExecuteReader();
        if(reader.Read())
        {
            String password = reader["password"].ToString();
            DASLibrary.SendMail("DAS Password is sent", "Your password : " + password, txtEmail.Text);
            msg.InnerHtml = "Password sent";
        }
        else
        {
            msg.InnerHtml = "Email Id doesnot exist.";
        }


    }
}