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

public partial class Vander_Bank_Details : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        Random user = new Random();
        int i = user.Next(100, 50000);
        string OO = "Bank_Id@" + i.ToString();
        TextBox4.Text = OO.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand
              ("Insert Into Bank_Details(Bank_Details_Id,Bank_Name,Vander_Id,Bank_Account_Number,Bank_IFSC_Code) Values(@Bank_Details_Id,@Bank_Name,@Vander_Id,@Bank_Account_Number,@Bank_IFSC_Code)", conn);

        cmd.Parameters.AddWithValue("@Bank_Details_Id", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Bank_Name", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@Vander_Id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Bank_Account_Number", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Bank_IFSC_Code", TextBox3.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.SelectedValue = "SELECT";
        Response.Redirect("Vander_Withdrawal.aspx");
    }
}