<%@ WebHandler Language="C#" Class="Vendor" %>

using System;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;

public class Vendor : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        try
        {
            if (context.Request.QueryString["Vandor_Id"] != null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);

                SqlCommand cmd = new SqlCommand("Select * From Vander_Registration Where Vander_Id=@Vander_Id", conn);
                cmd.Parameters.AddWithValue("@Vander_Id", context.Request.QueryString["Vandor_Id"].ToString());
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                //  dr = cmd.ExecuteReader();
                if (dr.Read() && dr["Image"] != null)
                {
                    context.Response.BinaryWrite((byte[])dr["Image"]);

                }
                conn.Close();
            }
        }
        catch (Exception ex)
        {

        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}