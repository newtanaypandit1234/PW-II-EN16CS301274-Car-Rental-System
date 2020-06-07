<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cus_Login.aspx.cs" Inherits="Cus_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">    
    <table class="auto-style2">
    <tr>
        <td>&nbsp;<asp:Label ID="Label7" runat="server"></asp:Label>
&nbsp;<table>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Underline="True" ForeColor="Blue" Text="Login"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#F0F0F0"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#F0F0F0" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" Text="Login" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server">New User</asp:LinkButton>
                    </td>
                </tr>
            </table>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

