using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Customer_Complaint : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        Random com = new Random();
        int c = com.Next(1000, 50000);
        string cc = "Com_Id@".ToString();
        TextBox7.Text = cc.ToString();

        if (Session["Customer_Id"] != null)
        {
            TextBox1.Text = Session["Customer_Id"].ToString();
        }

    }
        

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("Insert Into Complaint (Complaint_Id,Car_Id,Customer_Id,Booking_Id,Date,Driver_Id,Complaint,Status) Values (@Complaint_Id,@Car_Id,@Customer_Id,@Booking_Id,@Date,@Driver_Id,@Complaint,@Status)", conn);

            cmd.Parameters.AddWithValue("@Complaint_Id", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Car_Id", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Customer_Id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Booking_Id", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Date", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Driver_Id", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Complaint", TextBox6.Text);


            cmd.Parameters.AddWithValue("@Status", "Open");
            Label7.Text = "Complaint Registerd";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        catch (Exception ex)
        { }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customer_Dashboard.aspx");
    }
}