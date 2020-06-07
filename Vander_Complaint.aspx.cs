using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;


public partial class Vander_Complaint : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        Random user = new Random();
        int i = user.Next(100, 50000);
        string OO = "Com_Id@" + i.ToString();
        TextBox6.Text = OO.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand
            ("Insert Into Complaint(Complaint_Id,Vander_Id,Car_Id,Date,Driver_Id,Complaint,Status) Values(@Complaint_Id,@Vander_Id,@Car_Id,@Date,@Driver_Id,@Complaint,@Status)", conn);

        cmd.Parameters.AddWithValue("@Complaint_Id", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Vander_Id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Car_Id", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Date", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Driver_Id", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Complaint", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Status", "Open");
        Label13.Text = "Your Complaint is saved";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}