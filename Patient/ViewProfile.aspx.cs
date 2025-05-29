using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EducationBind();
        WorkExperianceBind();
        AwardsBind();
        DoctorBind();
        AboutBind();
        ServiceBind();
        SpecializationBind();

    }

    void EducationBind()
    {
        String query = "select * from DoctorEducation Where username = (select username from DoctorDetails Where Id = @id)";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        EducationRepeater.DataSource = reader;
        EducationRepeater.DataBind();
    }
    void WorkExperianceBind()
    {
        String query = "select * from DoctorExperiance Where username = (select username from DoctorDetails Where Id = @id)";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        ExperianceRepeater.DataSource = reader;
        ExperianceRepeater.DataBind();
    }
    void AwardsBind()
    {
        String query = "select * from DoctorAwards Where username = (select username from DoctorDetails Where Id = @id)";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        AwardsRepeater.DataSource = reader;
        AwardsRepeater.DataBind();
    }
    void DoctorBind()
    {
        String query = "select * from DoctorDetails Where Id = @id";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        DoctorDetailsRepeater.DataSource = reader;
        DoctorDetailsRepeater.DataBind();
        AboutRepeater.DataSource = reader;
        AboutRepeater.DataBind();
    }
    void ServiceBind()
    {
        String query = "select * from DoctorServices Where username = (select username from DoctorDetails Where Id = @id)";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        ServiceRepetaer.DataSource = reader;
        ServiceRepetaer.DataBind();
    }
    void SpecializationBind()
    {
        String query = "select * from DoctorSpecialization Where username = (select username from DoctorDetails Where Id = @id)";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        SpecializationRepetar.DataSource = reader;
        SpecializationRepetar.DataBind();
    }


    void AboutBind()
    {
        String query = "select * from DoctorDetails Where Id = @id";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("id", Request.QueryString["id"]);
        SqlDataReader reader = cmd.ExecuteReader();

        AboutRepeater.DataSource = reader;
        AboutRepeater.DataBind();
    }
}