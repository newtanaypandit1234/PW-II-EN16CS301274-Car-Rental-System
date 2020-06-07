using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Car_Details_Show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //DropDownList dd = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");


        //SqlDataSourceCarShow.UpdateParameters[14].DefaultValue = dd.SelectedValue;
        //SqlDataSourceCarShow.Update();

        //try
        //{
           

        //    DropDownList dd = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");

   

        //    SqlDataSourceCarShow.InsertParameters[14].DefaultValue = dd.SelectedValue;
        //    SqlDataSourceCarShow.Insert();
        //}
        //catch (Exception ex)
        //{
        //    var temp = ex;

        //}

    }
}