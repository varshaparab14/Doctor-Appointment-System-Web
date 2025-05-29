using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_DoctorServices : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = Session["username"].ToString();
        TextBox txtusername = (TextBox)FormView1.FindControl("UsernameTextBox");
        txtusername.Text = username;

      
    }
}