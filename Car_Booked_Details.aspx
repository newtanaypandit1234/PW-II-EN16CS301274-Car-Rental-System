<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Dashboard.master" AutoEventWireup="true" CodeFile="Car_Booked_Details.aspx.cs" Inherits="Car_Booked_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            margin-left: 120px;
        }
        .auto-style4 {
            margin-left: 160px;
            width: 211px;
        }
        .auto-style5 {
            width: 59px;
        }
        .auto-style7 {
            margin-left: 160px;
            text-align: left;
            width: 211px;
        }
        .auto-style8 {
            width: 399px;
        }
        .auto-style9 {
            width: 211px;
        }
        .auto-style10 {
            margin-left: 40px;
            width: 211px;
        }
        .auto-style11 {
            margin-left: 120px;
            width: 211px;
        }
        .auto-style12 {
            width: 59px;
            height: 10px;
        }
        .auto-style13 {
            margin-left: 160px;
            text-align: left;
            width: 211px;
            height: 10px;
        }
        .auto-style14 {
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;&nbsp;
&nbsp;</p> 
    <style type="text/css">
        .auto-1style2 {
            width: 100%;
        }
        .auto-1style3 {
            width: 973px;
        }
        .auto-1style4 {
            width: 129%;
        }
    </style>
    <br />
    <table class="nav-justified">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" rowspan="9">
                <img class="auto-style8" src="images/181010131059-australia-best-beaches-cossies-beach-cocos3.jpg" /></td>
            <td class="auto-style10">
                &nbsp;Pick Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
        </tr>
       <%-- <tr>
            <td class="auto-style11">
                &nbsp;Pick State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;Pick City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                Drop Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                Drop State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                Drop City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                Date Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Pay Now" CssClass="auto-style14" />
                
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                
                &nbsp;</td>
        </tr>
    </table>

    <table class="nav-justified">
        <tr>
            <td class="align-c">
                <asp:Label ID="Label7" runat="server" Text="Booking History"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="align-c">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField HeaderText="Booking Id" SortExpression="Booking Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("[Booking_id]") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Id" SortExpression="Car_Id">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Car_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pick City" SortExpression="Pick City">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Pick_City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pick Address" SortExpression="Pick Address">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Pick_Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pick Date">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Pick_Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Drop Country">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Drop_Country") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Drop State">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Drop_state") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Drop City">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Drop_City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Drop Address">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Drop_Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Payment">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("payment_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pay Now">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server"
                                    CssClass="imjusttext" OnClick="LinkButton1_Click" Text="Pay Now">
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Cancel">
                            <ItemTemplate>
                                 <asp:LinkButton ID="LinkButton3" runat="server"
                                    CssClass="imjusttext" OnClick="LinkButton3_Click" CommandName='<%# Bind("[Booking_id]") %>' Text="Cancel">
                                </asp:LinkButton>
                                <asp:Label ID="Label12" OnClick="LinkButton3_Click"   runat="server" ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>"></asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

