<%@ WebHandler Language="C#" Class="Car_Image_handler" %>

using System;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;

public class Car_Image_handler : IHttpHandler
{


      public void ProcessRequest (HttpContext context)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select Car_Image From Car_Registration Where Car_Id=@Car_Id", conn);
        cmd.Parameters.AddWithValue("@Car_Id", context.Request.QueryString["Car_Id"].ToString());
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if(dr.Read())
        {
            context.Response.BinaryWrite((byte[])dr["Car_Image"]);
        }
        conn.Close();
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}