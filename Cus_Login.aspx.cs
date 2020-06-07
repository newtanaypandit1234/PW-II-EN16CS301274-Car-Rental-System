using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Cus_Login :  System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand
           ("Select First_Name From Customer_Registration Where Customer_Id=@Customer_Id and Password=@Password", conn);
        cmd.Parameters.AddWithValue("@Customer_Id", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
        conn.Open();
        dr = cmd.ExecuteReader();
        if (TextBox3.Text == "admin" && TextBox4.Text == "password")
        {
            Response.Redirect("Admin_Dashboard.aspx");
        }
        else if (dr.Read())
        {
            Session["First_name"] = dr["First_Name"].ToString();
            Session["Customer_Id"] = TextBox3.Text;
            Response.Redirect("Customer_Dashboard.aspx");
        }
        else
        {
            Label7.Text = "Invalid Id/Password";
        }
        conn.Close();
    }
}