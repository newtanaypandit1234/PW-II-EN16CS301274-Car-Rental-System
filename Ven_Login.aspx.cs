using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Ven_Login :  System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand
           ("Select First_Name From Vander_Registration Where Vander_Id=@Vander_Id and Password=@Password", conn);
        cmd.Parameters.AddWithValue("@Vander_Id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        conn.Open();
        dr = cmd.ExecuteReader();
        if (TextBox1.Text == "admin" && TextBox2.Text == "password")
        {
            Response.Redirect("Admin_Dashboard.aspx");
        }
        else if (dr.Read())
        {
            Session["first_name"] = dr["First_Name"].ToString();
            Session["Vander_Id"] = TextBox1.Text;
            Response.Redirect("Vander_Dashboard.aspx");
        }
        else
        {
            Label1.Text = "Invalid Id/Password";
        }
        conn.Close();
    }
}