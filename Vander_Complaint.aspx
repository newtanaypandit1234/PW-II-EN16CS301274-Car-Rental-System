<%@ Page Title="" Language="C#" MasterPageFile="~/Vander_Dashboard.master" AutoEventWireup="true" CodeFile="Vander_Complaint.aspx.cs" Inherits="Vander_Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    .auto-style7 {
        width: 93%;
    }
    .auto-style9 {
        height: 20px;
        width: 93%;
    }
    .auto-style10 {
            width: 391px;
        }
    .auto-style11 {
            height: 20px;
            width: 391px;
        }
        .auto-style12 {
            width: 391px;
            height: 40px;
        }
        .auto-style13 {
            width: 93%;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="nav-justified">
        <tr>
            <td>
                <br />
                <table class="nav-justified">
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Complaint " Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" ForeColor="Red"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style7">                           
                            <asp:Label ID="Label13" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            &nbsp;<br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Vander ID        "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style13">                           
                            &nbsp;&nbsp;                           
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style7">                           
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;
                            <asp:Label ID="Label9" runat="server" Text="Car ID"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            
                            
                            
                            &nbsp;&nbsp;
                            
                            
                            
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            
                            
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style9">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            
                            &nbsp;&nbsp;
                            
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                            <br />
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style9">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Driver ID"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            
                            &nbsp;&nbsp;
                            
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <br />
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style9">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;
                            <asp:Label ID="Label12" runat="server" Text="Complaint"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            
                            &nbsp;&nbsp;
                            
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

