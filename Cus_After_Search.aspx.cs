using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Cus_After_Search : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        if (Session["Customer_Id"] != null)
        {
            TextBox1.Text = Session["Customer_Id"].ToString();

            string contid=  Session["PickCountry"].ToString();
            cmd = new SqlCommand("select * from Country where Country_Id=@Country_Id",conn);
            cmd.Parameters.AddWithValue("@Country_Id", contid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox4.Text = dr["Country_Name"].ToString();
            }
            conn.Close();

            string staid = Session["PickState"].ToString();
            cmd = new SqlCommand("select * from State where State_Id=@State_Id", conn);
            cmd.Parameters.AddWithValue("@State_Id", staid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read()) 
            {
                TextBox6.Text = dr["State_Name"].ToString();
            }
            conn.Close();

            string citid = Session["PickCity"].ToString();
            cmd = new SqlCommand("select * from City where City_Id=@City_Id", conn);
            cmd.Parameters.AddWithValue("@City_Id", citid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox8.Text = dr["City_Name"].ToString();
            }
            conn.Close();

            string dcontid = Session["DropCountry"].ToString();
            cmd = new SqlCommand("select * from Country where Country_Id=@Country_Id", conn);
            cmd.Parameters.AddWithValue("@Country_Id", dcontid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox5.Text = dr["Country_Name"].ToString();
            }
            conn.Close();

            string dstaid = Session["DropState"].ToString();
            cmd = new SqlCommand("select * from State where State_Id=@State_Id", conn);
            cmd.Parameters.AddWithValue("@State_Id", dstaid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox7.Text = dr["State_Name"].ToString();
            }
            conn.Close();

            string dcitid = Session["Dropcity"].ToString();
            cmd = new SqlCommand("select * from City where City_Id=@City_Id", conn);
            cmd.Parameters.AddWithValue("@City_Id", dcitid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox9.Text = dr["City_Name"].ToString();
            }
            conn.Close();
            

            TextBox11.Text = Session["DropAddress"].ToString();
            TextBox10.Text = Session["PickAddress"].ToString();
            TextBox12.Text = Session["DateTime"].ToString();




        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = (GridView1.SelectedRow.FindControl("Label6") as Label).Text;

        Random Amount = new Random();
        int a = Amount.Next(1000, 20000);
        string aa = a.ToString();
        TextBox13.Text = aa.ToString();

        Random book = new Random();
        int b = book.Next(100, 50000);
        string bb = "Book_Id@" + b.ToString();
        TextBox2.Text = bb.ToString();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Insert Into Booking (Booking_Id,Car_Id,Customer_Id,Pick_country,Pick_State,Pick_City,Pick_Address,Pick_Date,Drop_Country,Drop_State,Drop_City,Drop_Address,Payment_Id,Booking_Status) Values (@Booking_Id,@Car_Id,@Customer_Id,@Pick_country,@Pick_State,@Pick_City,@Pick_Address,@Pick_Date,@Drop_Country,@Drop_State,@Drop_City,@Drop_Address,@Payment_Id,@Booking_Status)", conn);

        cmd.Parameters.AddWithValue("@Booking_Id", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Car_Id", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Customer_Id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Pick_country", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pick_State", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Pick_City", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Pick_Address", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Pick_date", Session["DateTime"]);

        cmd.Parameters.AddWithValue("@Drop_Country",TextBox5.Text);
        cmd.Parameters.AddWithValue("@Drop_State", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Drop_City", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Drop_Address", TextBox11.Text);
        cmd.Parameters.AddWithValue("@Payment_Id", TextBox13.Text);
        
        cmd.Parameters.AddWithValue("@Booking_Status", "Booked");
    
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        string responseURL = RedirectToPaypal.getItemNameAndCost("Car Fare", TextBox13.Text);
        Response.Redirect(responseURL);
        //Response.Redirect("Car_Booked_Details.aspx");
    }
}