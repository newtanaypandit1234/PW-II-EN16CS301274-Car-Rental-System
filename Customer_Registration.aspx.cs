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

using System.Net;
using System.Net.Mail;

public partial class Customer_Registration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Random user = new Random();
        int i = user.Next(100, 50000);
        string OO = "Cus_Id@" + i.ToString();
        TextBox1.Text = OO.ToString();

        cmd = new SqlCommand
            ("Insert Into Customer_Registration(Customer_Id,First_Name,Last_Name,Email,Password,Gender,Dob,Mobile,Address,Country_Id,State_Id,City_Id,Pin_Code,Registration_Date,Status) Values(@Customer_Id,@First_Name,@Last_Name,@Email,@Password,@Gender,@Dob,@Mobile,@Address,@Country_Id,@State_Id,@City_Id,@Pin_Code,@Registration_Date,@Status)", conn);

        cmd.Parameters.AddWithValue("@Customer_Id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@First_Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Last_Name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@Gender", RadioButton1.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Gender", RadioButton2.Text);
        }
        cmd.Parameters.AddWithValue("@Dob", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Mobile", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Country_Id", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@State_Id", DropDownList2.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@City_Id", DropDownList3.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@Pin_Code", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Registration_Date", DateTime.Now);
        cmd.Parameters.AddWithValue("@Status", "Active");
        Label15.Text = "Registration Done";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Session["uid"] = "tanay.pandit16@gmail.com";
        Session["upass"] = "295B402D371733DA9692DFE93FBB1256893D";

        MailMessage mm = new MailMessage(Session["uid"].ToString(), TextBox4.Text);

        mm.Subject = "Car Rental ID ";
        mm.Body = "Your Id = " + TextBox1.Text + " Your Password =" + TextBox5.Text;
        mm.IsBodyHtml = false;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.elasticemail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred =
            new NetworkCredential(Session["uid"].ToString(),
                Session["upass"].ToString());
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 2525;
        smtp.Send(mm);

        Response.Redirect("Cus_Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}