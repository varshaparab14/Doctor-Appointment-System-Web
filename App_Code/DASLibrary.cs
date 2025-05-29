using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;


public class DASLibrary
{
    public static void SendMail(String subject, String body, String to)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("doctorappointment2020@gmail.com", "varsha2020");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = subject;
        msg.Body = body;
        string toaddress = to;
        msg.To.Add(toaddress);
        string fromaddress = "doctorappointment2020@gmail.com";
        msg.From = new MailAddress(fromaddress, "Doccure");
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
    }

    public static bool checkEmailId(String email)
    {
        string query = "select count(*) from login where emailid = @email";
        SqlConnection conn = new Connection().getConn();
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("email", email);

        int count = (int)cmd.ExecuteScalar();

        if (count == 1)
            return false;
        else
            return true;
    }

    public static string GeneratePassword(bool useLowercase, bool useUppercase, bool useNumbers, /*bool useSpecial,*/
        int passwordSize)
    {
        const string LOWER_CASE = "abcdefghijklmnopqursuvwxyz";
        const string UPPER_CAES = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        const string NUMBERS = "123456789";
        // const string SPECIALS = @"!@£$%^&*()#€";

        string password = new Random().Next(10000, 99999).ToString();
        password += UPPER_CAES.ToCharArray()[new Random().Next(0, UPPER_CAES.Length - 1)];
        password += LOWER_CASE.ToCharArray()[new Random().Next(0, LOWER_CASE.Length - 1)];
        password += NUMBERS.ToCharArray()[new Random().Next(0, NUMBERS.Length - 1)];

        return password;
    }
}
