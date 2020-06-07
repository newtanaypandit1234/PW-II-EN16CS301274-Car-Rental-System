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

public partial class Driver_Registration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
        Random user = new Random();
        int i = user.Next(100, 50000);
        string OO = "Driv_Id@" + i.ToString();
        TextBox7.Text = OO.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand
            ("Insert Into Driver(Driver_Id,First_Name,Last_Name,Gender,Dob,Mobile,Address,Country_Name,State_Name,City_Name,Pin_Code,Id_Proof,Photo,Registraton_Date,Status) Values(@Driver_Id,@First_Name,@Last_Name,@Gender,@Dob,@Mobile,@Address,@Country,@State,@City,@Pin_Code,@Id_Proof,@Photo,@Registraton_Date,@Status)", conn);

        cmd.Parameters.AddWithValue("@Driver_Id", TextBox7.Text);
        cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
       
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@Gender", RadioButton1.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Gender", RadioButton2.Text);
        }
        cmd.Parameters.AddWithValue("@Dob", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Country", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@State", DropDownList2.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@City", DropDownList3.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@Pin_Code", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Registraton_Date", DateTime.Now);
        cmd.Parameters.AddWithValue("@Status", "Active");
        byte[] imgdata = null;
        if (FileUpload1.HasFile == true)
        {
            imgdata = new byte[FileUpload1.PostedFile.ContentLength];
            FileUpload1.PostedFile.
                InputStream.Read(imgdata, 0, FileUpload1.
                PostedFile.ContentLength);

        }
        cmd.Parameters.AddWithValue("@Id_Proof", imgdata);

        byte[] imgdata1 = null;
        if (FileUpload2.HasFile == true)
        {
            imgdata1 = new byte[FileUpload2.PostedFile.ContentLength];
            FileUpload2.PostedFile.
                InputStream.Read(imgdata, 0, FileUpload2.
                PostedFile.ContentLength);

        }
        cmd.Parameters.AddWithValue("@Photo", imgdata1);
        Label14.Text = "Registration Done";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}