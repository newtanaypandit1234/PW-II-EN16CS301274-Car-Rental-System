using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Car_Booked_Details : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);

        ////if (IsPostBack == false)
        ////{
           string customer_id = Session["customer_id"].ToString();
            SqlDataSource1.SelectCommand =
            "SELECT [Booking_id], [Car_Id], [Pick_Country], [Pick_State], [Pick_City], [Pick_Address], [Pick_date], [Drop_Country], [Drop_State] , [Drop_City], [Drop_address], [Payment_Id] FROM [Booking] where [Customer_id] ='"+customer_id+"'";
            #region Commented
            /*Random user = new Random();
            int i = user.Next(100, 50000);
            string OO = "" + i.ToString();
            TextBox1.Text = OO.ToString();
            string contid = Session["PickCountry"] == null ? "101" : Session["PickCountry"].ToString();
            cmd = new SqlCommand("select * from Country where Country_Id=@Country_Id", conn);
            cmd.Parameters.AddWithValue("@Country_Id", contid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["Country_Name"].ToString();
            }
            conn.Close();

            string staid = Session["PickState"].ToString();
            cmd = new SqlCommand("select * from State where State_Id=@State_Id", conn);
            cmd.Parameters.AddWithValue("@State_Id", staid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["State_Name"].ToString();
            }
            conn.Close();

            string citid = Session["PickCity"].ToString();
            cmd = new SqlCommand("select * from City where City_Id=@City_Id", conn);
            cmd.Parameters.AddWithValue("@City_Id", citid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label3.Text = dr["City_Name"].ToString();
            }
            conn.Close();

            string dcontid = Session["DropCountry"].ToString();
            cmd = new SqlCommand("select * from Country where Country_Id=@Country_Id", conn);
            cmd.Parameters.AddWithValue("@Country_Id", dcontid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label4.Text = dr["Country_Name"].ToString();
            }
            conn.Close();

            string dstaid = Session["DropState"].ToString();
            cmd = new SqlCommand("select * from State where State_Id=@State_Id", conn);
            cmd.Parameters.AddWithValue("@State_Id", dstaid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label5.Text = dr["State_Name"].ToString();
            }
            conn.Close();

            string dcitid = Session["Dropcity"].ToString();
            cmd = new SqlCommand("select * from City where City_Id=@City_Id", conn);
            cmd.Parameters.AddWithValue("@City_Id", dcitid);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label6.Text = dr["City_Name"].ToString();
            }
            conn.Close();

            //Label1.Text = Session["Customer_Id"].ToString();
            //Label2.Text = Session["PickCountry"].ToString();
            //Label3.Text = Session["PickState"].ToString();
            //Label4.Text = Session["PickCity"].ToString();
            //Label5.Text = Session["DropCountry"].ToString();
            //Label6.Text = Session["DropState"].ToString();
            //Label7.Text = Session["Dropcity"].ToString();
            Label8.Text = Session["DropAddress"].ToString();
            Label8.Text = Session["PickAddress"].ToString();
            Label8.Text = Session["DateTime"].ToString();
            */
            #endregion
      //  }
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    string responseURL = RedirectToPaypal.getItemNameAndCost("Car Fare", TextBox1.Text);
    //    Response.Redirect(responseURL);
    //}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //string responseURL = RedirectToPaypal.getItemNameAndCost("Car Fare", TextBox1.Text);
        //Response.Redirect(responseURL);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
     
        string responseURL = RedirectToPaypal.getItemNameAndCost("Car Fare", "1985");
        Response.Redirect(responseURL);
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        var btn = (LinkButton)sender;

       var bookingId =btn.CommandName;

        cmd = new SqlCommand("delete from Booking where Booking_Id = '"+ bookingId + "'",conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        //Response.Redirect(responseURL);
    }
}