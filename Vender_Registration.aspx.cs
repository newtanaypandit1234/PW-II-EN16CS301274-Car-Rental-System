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

public partial class Vender_Registration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        //Random user = new Random();
        //int i = user.Next(100, 50000);
        //string OO = "Ven_Id@" + i.ToString();
        //TextBox9.Text = OO.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand
                ("Insert Into Vander_Registration(Vander_Id,First_Name,Last_Name,Email,Password,Gender,Dob,Mobile,Address,Country_Id,State_Id,City_Id,Pin_Code,Registration_Date,Status) Values(@Vander_Id,@First_Name,@Last_Name,@Email,@Password,@Gender,@Dob,@Mobile,@Address,@Country_Id,@State_Id,@City_Id,@Pin_Code,@Registration_Date,@Status)", conn);

            Random user = new Random();
            int i = user.Next(100, 50000);
            string OO = "Ven_Id@" + i.ToString();
            TextBox9.Text = OO.ToString();

            cmd.Parameters.AddWithValue("@Vander_Id", TextBox9.Text);
            cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            if (RadioButton1.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Gender", RadioButton1.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@Gender", RadioButton2.Text);
            }
            cmd.Parameters.AddWithValue("@Dob", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Country_Id", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@State_Id", DropDownList2.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@City_Id", DropDownList3.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Pin_Code", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Registration_Date", DateTime.Now);
            cmd.Parameters.AddWithValue("@Status", "Active");
            Label15.Text = "Registration Done";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["uid"] = "tanay.pandit16@gmail.com";
            Session["upass"] = "295B402D371733DA9692DFE93FBB1256893D";

            MailMessage mm = new MailMessage(Session["uid"].ToString(), TextBox3.Text);

            mm.Subject = "Car Rental ID ";
            mm.Body = "Your Id = " + TextBox9.Text + " Your Password =" + TextBox4.Text;
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

            Response.Redirect("Ven_Login.aspx", false);
        }

        catch (Exception ex)
        { }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}