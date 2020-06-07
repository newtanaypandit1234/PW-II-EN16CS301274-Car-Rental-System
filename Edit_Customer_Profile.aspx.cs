using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Edit_Customer_Profile : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        try { 
        if (Session["Customer_Id"] != null)
        {
            Image1.ImageUrl = "Customer.ashx?Customer_Id=" + Session["Customer_Id"].ToString();

            }
        else
        {
            Response.Redirect("Customer_Login.aspx");
        }



        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);

        
            conn.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("Select * from Customer_Registration where Customer_Id=@Customer_Id", conn);
            da.SelectCommand.Parameters.AddWithValue("@Customer_Id", Session["Customer_Id"].ToString());
            //SqlDataAdapter ad = new SqlDataAdapter("select * from Customer_Registration where Customer_Id='" + Session["Customer_Id"].ToString() + "'", conn);
            da.Fill(dt);
            if (IsPostBack == false)
            {
                TextBox1.Text = dt.Rows[0]["Customer_Id"].ToString();
                TextBox2.Text = dt.Rows[0]["First_Name"].ToString();
                TextBox3.Text = dt.Rows[0]["Last_Name"].ToString();
                TextBox5.Text = dt.Rows[0]["Gender"].ToString();
                TextBox9.Text = dt.Rows[0]["Dob"].ToString();
                TextBox6.Text = dt.Rows[0]["Mobile"].ToString();
                TextBox7.Text = dt.Rows[0]["Address"].ToString();
                TextBox4.Text = dt.Rows[0]["Email"].ToString();
                TextBox8.Text = dt.Rows[0]["Pin_Code"].ToString();
                DropDownList1.Text = dt.Rows[0]["Country_Id"].ToString();
                DropDownList2.Text = dt.Rows [0]["State_Id"].ToString();
                //DropDownList3.Text = dt.Rows[0]["City_Id"].ToString();
            }
            conn.Close();


        }
        catch (Exception ex)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            cmd = new SqlCommand
                ("Update Customer_Registration Set Email=@Email,Mobile=@Mobile,Address=@Address,Country_Id=@Country_Id,State_Id=@State_Id,City_Id=@City_Id,Pin_Code=@Pin_Code, Image=@Image where Customer_Id=@Customer_Id", conn);

            cmd.Parameters.AddWithValue("@Customer_Id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox4.Text);


            cmd.Parameters.AddWithValue("@Mobile", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Country_Id", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@State_Id", DropDownList2.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@City_Id", DropDownList3.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Pin_Code", TextBox8.Text);
        byte[] imgdata = null;
        if (FileUpload1.HasFile == true)
        {
            imgdata = new byte[FileUpload1.PostedFile.ContentLength];
            FileUpload1.PostedFile.
                InputStream.Read(imgdata, 0, FileUpload1.
                PostedFile.ContentLength);

        }
        cmd.Parameters.AddWithValue("@Image", imgdata);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Label14.Text = "Your data is Upadate";
    }
 }


