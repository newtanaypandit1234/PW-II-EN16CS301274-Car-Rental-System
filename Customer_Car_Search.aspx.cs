using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Customer_Car_Search : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["PickCountry"] = DropDownList1.SelectedValue.ToString();
        Session["PickState"] = DropDownList2.SelectedValue.ToString();
        Session["PickCity"] = DropDownList3.SelectedValue.ToString();
        Session["DropCountry"] = DropDownList4.SelectedValue.ToString();
        Session["DropState"] = DropDownList5.SelectedValue.ToString();
        Session["DropCity"] = DropDownList6.SelectedValue.ToString();
        Session["PickAddress"] =TextBox1.Text;
        Session["DropAddress"] = TextBox3.Text;
        Session["DateTime"] = TextBox2.Text;
       
        Response.Redirect("Cus_After_Search.aspx");
        
    }
}
