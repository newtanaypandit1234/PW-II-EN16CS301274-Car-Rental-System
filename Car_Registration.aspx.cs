using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Car_Registration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        Random user = new Random();
        int i = user.Next(100, 50000);
        string OO = "Car_Id@" + i.ToString();
        TextBox8.Text = OO.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            cmd = new SqlCommand("Insert Into Car_Registration (Car_Id,Car_Name,Vander_Id,Car_Company_Name,Car_Registration_Number,Car_Number,Car_Model_Year,Car_Type_Id,Car_Sheet,AC_Type,Fuel_Type,Insurance_Number,Car_Image,Registration_Date,Status_Id,Book_Status) Values (@Car_Id,@Car_Name,@Vander_Id,@Car_Company_Name,@Car_Registration_Number,@Car_Number,@car_Model_Year,@Car_Type_Id,@Car_Sheet,@AC_Type,@Fuel_Type,@Insurance_Number,@Car_Image,@registration_Date,@Status_Id,@Book_Status)", conn);

            cmd.Parameters.AddWithValue("@Car_Id", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Vander_Id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Car_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Car_Company_Name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Car_Registration_Number", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Car_Number", TextBox5.Text);

            cmd.Parameters.AddWithValue("@Car_Model_Year", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Insurance_Number", TextBox7.Text);
            cmd.Parameters.AddWithValue("@registration_Date", DateTime.Now);

            cmd.Parameters.AddWithValue("@Car_Type_Id", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Car_Sheet", DropDownList4.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@AC_Type", DropDownList2.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Fuel_Type", DropDownList3.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@Status_Id", "Active");
            cmd.Parameters.AddWithValue("@Book_Status", "Free");

            byte[] imgdata = null;
            if (FileUpload1.HasFile == true)
            {
                imgdata = new byte[FileUpload1.PostedFile.ContentLength];
                FileUpload1.PostedFile.
                    InputStream.Read(imgdata, 0, FileUpload1.
                    PostedFile.ContentLength);

            }
            cmd.Parameters.AddWithValue("@Car_Image", imgdata);
            Label13.Text = "Registration Done";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList1.Text = "Select";
            DropDownList2.Text = "Select";
            DropDownList3.Text = "Select";
            DropDownList4.Text = "select";

        }
        catch (Exception ex)
        { }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Vander_Dashboard.aspx");
    }
}