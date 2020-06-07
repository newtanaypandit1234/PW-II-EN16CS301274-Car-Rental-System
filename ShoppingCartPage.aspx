<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCartPage.aspx.cs" Inherits="ShoppingCartPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart Select Any Item</title>
    <style type="text/css">
        .style1
        {
            color: #0033CC;
            font-family: "Trebuchet MS";
        }
        .style2
        {
            text-align: center;
            font-family: "Trebuchet MS";
            color: #0000CC;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            font-family: "Trebuchet MS";
        }
        .style5
        {
            font-family: "Trebuchet MS";
            font-size: small;
            text-align: center;
            font-weight: bold;
        }
        .style6
        {
            font-size: large;
        }
    </style>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <div>
    <table width ="100%">
    <tr>
    <td align="left" valign ="bottom" width="15%">
    
    
        <img alt="dotnetfunda" src="DotNetLogo.gif" 
            style="width: 150px; height: 75px"  /></td>
        <td  valign="bottom" align="left">
         <h2 class="style1" >Digital Shoppy-Buy Online</h2>
        
        </td>
        
    </tr>
    
    <tr>
    <td>
    
    </td>
    <td>
    
    
    </td>
    </tr>
    
        <tr>
    <td>
    
    </td>
    <td>
    
    
    </td>
    </tr>
    
        <tr>
    <td>
    
    </td>
    <td>
    
    <table width="80%" border="2px" border-Color="blue" style="border-color: #000080" >
    <tr>
    <td class="style2">
    
        Xbox</td>
    
    <td class="style2">
    
        Philips Mobile</td>
    <td class="style2">
    
        BlueTooth HeadSet</td>
    
    </tr>
    
     <tr>
    <td>
    
        <img alt="XBox" src="xbox-720-rumor-1.jpg" 
            style="width: 200px; height: 200px" /></td>
    
    <td>
    
        <img alt="Philips Mobile" src="philips-598.jpg" 
            style="width: 200px; height: 200px" /></td>
    <td>
    
        <img alt="Blue Tooth Head Set" src="Bluetooth%20Headset.jpeg" 
            style="width: 200px; height: 200px" /></td>
    
    </tr>
    
     <tr>
    <td class="style3">
    
        <span class="style4">Price:</span><asp:Label ID="lblxbox" runat="server" ForeColor="#FF9900" 
            style="font-weight: 700; font-family: 'Trebuchet MS'; color: #800000" 
            Text="140"></asp:Label>
&nbsp;$</td>
    
    <td class="style3">
    
        <span class="style4">Price:</span><asp:Label ID="lblphone" runat="server" style="font-weight: 700; font-family: 'Trebuchet MS'; color: #800000"  Text="200"></asp:Label>
    
    &nbsp;$</td>
    <td class="style3">
    
        <span class="style4">Price</span>:<asp:Label ID="lblbluetooth" runat="server" style="font-weight: 700; font-family: 'Trebuchet MS'; color: #800000" Text="50"></asp:Label>
&nbsp;$</td>
    
    </tr>
    
     <tr>
    <td class="style3">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/paypalbtn.gif" 
            CommandName="btn1" onclick="ImageButton1_Click" />
    
    </td>
    
    <td class="style3">
    
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/paypalbtn.gif" 
            CommandName="btn2" onclick="ImageButton4_Click" />
    
    </td>
    <td class="style3">
    
        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/paypalbtn.gif" 
            CommandName="btn3" onclick="ImageButton5_Click" />
    
    </td>
    
    </tr>
    
    </table>
    </td>
    </tr>
    
        <tr>
    <td>
    
    </td>
    <td>
    
    
    </td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
    
        &nbsp;</td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td class="style5">
    
    
        Top Logo Powered&nbsp; by .www.dotnetfunda.com &amp; Images&nbsp; 
        <span class="style6">&copy</span> Google Images</td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
    
        &nbsp;</td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
    
        &nbsp;</td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
    
        &nbsp;</td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
    
        &nbsp;</td>
    </tr>
    
        <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
    
        &nbsp;</td>
    </tr>
    
    </table>
    </div>
    </form>
</body>
</html>
