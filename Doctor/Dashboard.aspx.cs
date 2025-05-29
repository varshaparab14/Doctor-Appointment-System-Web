using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        txtdate.Text = DateTime.Now.ToShortDateString();
        lblDay.Text = DateTime.Now.DayOfWeek.ToString();
        BindDashboard();

        if(IsPostBack == false)
            ddlSlots.DataBind();
    }

    protected void ddlSlots_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    void BindDashboard()
    {
        SqlConnection conn = new Connection().getConn();

        String query1 = "select count(distinct pusername) from DocSchedule where  did = (select id from DoctorDetails where username = @username)";
        SqlCommand cmd1 = new SqlCommand(query1, conn);
        cmd1.Parameters.AddWithValue("username", Session["username"].ToString());
        lblPatient.Text = cmd1.ExecuteScalar().ToString();


        query1 = "select count(*) from DocSchedule where  did = (select id from DoctorDetails where username = @username) and status in ('booked', 'Done')";
        cmd1 = new SqlCommand(query1, conn);
        cmd1.Parameters.AddWithValue("username", Session["username"].ToString());
        lblappointment.Text = cmd1.ExecuteScalar().ToString();

        query1 = "select count(*) from DocSchedule where  did = (select id from DoctorDetails where username = @username) and status in ('booked') and Date = @date";
        cmd1 = new SqlCommand(query1, conn);
        cmd1.Parameters.AddWithValue("username", Session["username"].ToString());
        cmd1.Parameters.AddWithValue("date", DateTime.Now.ToShortDateString());
        lblToday.Text = cmd1.ExecuteScalar().ToString();
    }
    //    //select count(*) from DocSchedule where  did = (select id from DoctorDetails where username = 'rajesh0') and status in ('booked', 'Done')

}