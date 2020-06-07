using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (Session["First_Name"] != null)
            {
                Label1.Text = Session["First_Name"].ToString();
                Image2.ImageUrl = "Customer.ashx?Customer_Id=" + Session["Customer_Id"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        catch (Exception ex)
        {
           
        }
    
    }
}