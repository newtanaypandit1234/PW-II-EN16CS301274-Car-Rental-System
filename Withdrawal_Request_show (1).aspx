<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Withdrawal_Request_show.aspx.cs" Inherits="Withdrawal_Request_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;<table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Withdrawal Request Data"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

