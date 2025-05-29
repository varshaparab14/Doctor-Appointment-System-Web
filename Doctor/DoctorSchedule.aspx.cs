using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_DoctorSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox txtusernamesunday = (TextBox)FormView1.FindControl("UsernameTextBox");
        txtusernamesunday.Text = Session["username"].ToString();
        TextBox txtdaysunday = (TextBox)FormView1.FindControl("DayTextBox");
        txtdaysunday.Text = "Sunday";

        TextBox txtusernamemonday = (TextBox)FormView2.FindControl("UsernameTextBox");
        txtusernamemonday.Text = Session["username"].ToString();
        TextBox txtdaymonday = (TextBox)FormView2.FindControl("DayTextBox");
        txtdaymonday.Text = "Monday";

        TextBox txtusernametue = (TextBox)FormView3.FindControl("UsernameTextBox");
        txtusernametue.Text =  Session["username"].ToString();
        TextBox txtdaytue = (TextBox)FormView3.FindControl("DayTextBox");
        txtdaytue.Text = "Tuesday";

        TextBox txtusernamewed = (TextBox)FormView4.FindControl("UsernameTextBox");
        txtusernamewed.Text =  Session["username"].ToString();
        TextBox txtdaywed = (TextBox)FormView4.FindControl("DayTextBox");
        txtdaywed.Text = "Wednesday";

        TextBox txtusernamethursday = (TextBox)FormView5.FindControl("UsernameTextBox");
        txtusernamethursday.Text = Session["username"].ToString();
        TextBox txtdaythursday = (TextBox)FormView5.FindControl("DayTextBox");
        txtdaythursday.Text = "Thursday";

        TextBox txtusernamefriday = (TextBox)FormView6.FindControl("UsernameTextBox");
        txtusernamefriday.Text = Session["username"].ToString();
        TextBox txtdayfriday = (TextBox)FormView6.FindControl("DayTextBox");
        txtdayfriday.Text = "Friday";

        TextBox txtusernamesaturday = (TextBox)FormView7.FindControl("UsernameTextBox");
        txtusernamesaturday.Text = Session["username"].ToString();
        TextBox txtdaysaturday = (TextBox)FormView7.FindControl("DayTextBox");
        txtdaysaturday.Text = "Saturday";
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_sunday&tab=0");
    }
    protected void FormView2_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_monday&tab=1");
    }

    protected void FormView3_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_tuesday&tab=2");
    }
    protected void FormView4_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_wednesday&tab=3");
    }
    protected void FormView5_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_thursday&tab=4");
    }
    protected void FormView6_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_friday&tab=5");
    }
    protected void FormView7_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("DoctorSchedule.aspx?day=slot_saturday&tab=6");
    }
}