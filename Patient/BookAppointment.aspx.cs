using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_BookAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime today = System.DateTime.Now.Date;
        DateTime lastday = System.DateTime.Now.Date.AddDays(3);
        if (e.Day.Date >= today && e.Day.Date <= lastday)
            e.Cell.BackColor = System.Drawing.Color.Blue;
        else
            e.Day.IsSelectable = false;

        if (e.Day.Date == Calendar1.SelectedDate)
            e.Cell.BackColor = System.Drawing.Color.Green;
        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.SelectedDate.DayOfWeek.ToString();
        DropDownList1.DataBind();
        //Response.Write(Calendar1.SelectedDate.Date.ToShortDateString());
    }

    protected void btnCheck_Click(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate.Date == DateTime.MinValue)
        {
            lblstatus.Text = "Please select date";
            return;
        }

        if (Calendar1.SelectedDate.Date != DateTime.MinValue && DropDownList1.Items.Count == 0)
        {
            lblstatus.Text = "Slot is not available on " + Calendar1.SelectedDate.DayOfWeek;
            return;
        }

        SqlConnection conn = new Connection().getConn();
        string query = "select count(*) from docschedule where did = @did and slot = @slot and date = @date and status = @status";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("did", Request.QueryString["id"]);
        cmd.Parameters.AddWithValue("slot", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("date", Calendar1.SelectedDate.Date.ToShortDateString());
        cmd.Parameters.AddWithValue("status", "booked");

        int count = (int)cmd.ExecuteScalar();

        
        if(count < 4)
        {
            string query1 = "insert into docschedule(did,slot,date,pusername, status, bookingdate)VALUES(@did, @slot, @date, @pusername, @status, @bookingdate)";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            cmd1.Parameters.AddWithValue("did", Request.QueryString["id"]);
            cmd1.Parameters.AddWithValue("slot", DropDownList1.SelectedValue);
            cmd1.Parameters.AddWithValue("date", Calendar1.SelectedDate.Date.ToShortDateString());
            cmd1.Parameters.AddWithValue("pusername", Session["username"]);
            cmd1.Parameters.AddWithValue("status", "booked");
            cmd1.Parameters.AddWithValue("bookingdate", System.DateTime.Now.ToShortDateString());
            
            cmd1.ExecuteNonQuery();
            Session["date"] = Calendar1.SelectedDate.Date.ToShortDateString();
            Session["time"] = DropDownList1.SelectedValue;
            Session["did"] = Request.QueryString["id"];
            Response.Redirect("BookingSuccess.aspx");
            lblstatus.Text = "Your appointment is booked";
        }
        else
        {
            lblstatus.Text = "Please select another date or slot. This slot is full. Sorry for inconvince";
        }
    }
}