using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Patient_Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new Connection().getConn();

        String query1 = "select count(*) from tblUser where username = @un OR emailid = @em";
        SqlCommand cmd1 = new SqlCommand(query1, conn);
        cmd1.Parameters.AddWithValue("un", txtUsername.Text);
        cmd1.Parameters.AddWithValue("em", txtEmail.Text);
        int count = (int)cmd1.ExecuteScalar();          //when one value is return

        if (count == 0)
        {
            String query = "INSERT INTO tblUser(Name,Username,Password,EmailId,MobileNo,Role)VALUES(@Name, @Username, @Password, @EmailId, @MobileNo, @Role)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("Name", txtName.Text);
            cmd.Parameters.AddWithValue("Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("EmailId", txtEmail.Text);
            cmd.Parameters.AddWithValue("MobileNo", txtMoblieNo.Text);
            cmd.Parameters.AddWithValue("Role", "p");

            cmd.ExecuteNonQuery();          //insert, update n delete
            txtError.InnerHtml = "Register Successfully";
        }
        else
        {
            txtError.InnerHtml = "Username or EmailId exist";
        }
    }
}