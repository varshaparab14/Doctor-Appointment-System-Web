using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
         SqlConnection conn = new Connection().getConn();

        String query1 = "select * from tblUser where username = @un and password = @pw";
        SqlCommand cmd1 = new SqlCommand(query1, conn);
        cmd1.Parameters.AddWithValue("un", txtUsername.Text);
        cmd1.Parameters.AddWithValue("pw", txtPassword.Text);
        

        SqlDataReader dataReader = cmd1.ExecuteReader();

        if (dataReader.Read())
        {
            if (dataReader["isactive"].ToString().Equals("True"))
            {
                String username = txtUsername.Text;
                String emailid = dataReader["EmailId"].ToString();
                String mobileno = dataReader["MobileNo"].ToString();
                String role = dataReader["Role"].ToString();

                
                Session["username"] = username;
                Session["emailid"] = emailid;
                Session["moblieno"] = mobileno;
                Session["role"] = role;


                if (role.Equals("a"))
                    Response.Redirect("~/Admin/Dashboard.aspx");
                else
                    if (role.Equals("d"))
                    {
                        Response.Redirect("~/Doctor/Dashboard.aspx");
                    }
                    else
                        Response.Redirect("~/Patient/Dashboard.aspx");
            }
            else
            {
                txtError.InnerHtml = "Please contact admin. Your account is inactive.";
            }
        }
        else
        {
            txtError.InnerHtml = "Invalid username or password";
        }
    }
}