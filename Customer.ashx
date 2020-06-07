<%@ WebHandler Language="C#" Class="Customer" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public class Customer : IHttpHandler {

    public void ProcessRequest (HttpContext context)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from Customer_Registration where Customer_Id=@Customer_Id", conn);
            cmd.Parameters.AddWithValue("@Customer_Id", context.Request.QueryString["Customer_Id"].ToString());
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            //  dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                context.Response.BinaryWrite((byte[])dr["Image"]);

            }
            conn.Close();
        }
        catch (Exception ex)
        {

        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}