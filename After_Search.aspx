<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="After_Search.aspx.cs" Inherits="After_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 973px;
        }
        .auto-style4 {
            width: 129%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style3">
                <br />
                 <marquee>
                                <asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" />
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Forte" Font-Size="Large" ForeColor="Red" Text="WelCome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" ForeColor="Blue" Text="to Car Rental - Reserve Your Car Today &amp; Save. Quick &amp; Easy Checkout. Cheap Car Rentals"></asp:Label>
<asp:Image ID="Image3" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" /></marquee>

&nbsp;<table class="auto-style2">                                                
                           
                    
                    <tr>
                        <td class="align-c">
                            <asp:Label ID="Label1" runat="server" Text="Available Cars"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="align-c">
                            
                            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:TemplateField HeaderText="Car" SortExpression="Car Name">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("[Car Name]") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("[Car_Name]") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Car Type" SortExpression="Car_Type_Id">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_Type_Id") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Car_Type_Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sheet" SortExpression="Car_Sheet">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Car_Sheet") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Car_Sheet") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ac Type" SortExpression="AC_Type">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("AC_Type") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("AC_Type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="79px" ImageUrl='<%# "Car_Image_handler.ashx?Car_Id="+Eval("Car_Id") %>' Width="96px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <%--<asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" Text="Book" OnClick="Button1_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
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
                            
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT [Car_Name], [Car_Type_Id], [Car_Sheet], [AC_Type], [Car_Image], [Car_Id] FROM [Car_Registration]"></asp:SqlDataSource>
                            
                            
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

