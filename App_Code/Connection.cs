using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Net.Mail;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
    public SqlConnection conn;
	public Connection()
	{
        conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DASConnStr"].ConnectionString);
	}

    public SqlConnection getConn()
    {
        conn.Open();
        return conn;
    }

}


