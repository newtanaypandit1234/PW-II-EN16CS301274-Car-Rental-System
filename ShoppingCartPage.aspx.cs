﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
//using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//using System.Xml.Linq;

public partial class ShoppingCartPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string iName="XBox";
        string responseURL = RedirectToPaypal.getItemNameAndCost(iName, lblxbox.Text);
        Response.Redirect(responseURL);   
      
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string iName = "Philips Mobile";
        string responseURL = RedirectToPaypal.getItemNameAndCost(iName, lblphone.Text);
        Response.Redirect(responseURL); 

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string iName = "BlueTooth HeadSet";
        string responseURL = RedirectToPaypal.getItemNameAndCost(iName, lblbluetooth.Text);
        Response.Redirect(responseURL); 
        
    }
}
