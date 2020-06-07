<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vender_Registration.aspx.cs" Inherits="Vender_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        
    }
    
  
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
        .auto-style3 {
            width: 357px;
        }
        .auto-style4 {
            width: 304px;
        }
        .auto-style5 {
            width: 304px;
            height: 214px;
        }
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
                <br />
    <table class="auto-style2">
                    <tr>
                        <td>                            
                            <marquee>
                                <asp:Image ID="Image1" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" />
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Forte" Font-Size="Large" ForeColor="Red" Text="WelCome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label17" runat="server" ForeColor="Blue" Text="to Car Rental - Reserve Your Car Today &amp; Save. Quick &amp; Easy Checkout. Cheap Car Rentals"></asp:Label>
<asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" /></marquee></td>
                    </tr>
                </table>
    <table class="auto-style2">
    <tr>
        <td>
            <table>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Blue" Text="Vender Registration "></asp:Label>
            <br />
            <br />
           
            <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#EFEFEF" Height="22px" Width="160px"></asp:TextBox>
                        
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        <br />
                        
            <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            
                        
            
                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="160px" BackColor="#EFEFEF"></asp:TextBox>
            
                        
            
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            
                        
            
                        <br />
            
                        
            
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BackColor="#EFEFEF" TextMode="Email" Height="22px" Width="160px"></asp:TextBox>
            
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            
                        <br />
            
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BackColor="#EFEFEF" TextMode="Password" Height="22px" Width="160px"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                        <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="DOB"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" BackColor="#EFEFEF" TextMode="Date" Height="22px" Width="160px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Mobile"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" BackColor="#EFEFEF" TextMode="Phone" Height="22px" Width="160px"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" BackColor="#EFEFEF" TextMode="MultiLine"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Country "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            
            
            
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="160px" AutoPostBack="True" DataSourceID="SqlDataSourceCountry" DataTextField="Country_Name" DataValueField="Country_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
            
            
            
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            
            
            
                        <asp:SqlDataSource ID="SqlDataSourceCountry" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @Country_Id" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @Country_Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Country_Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="column1" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Country_Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
            
            
            
                        <br />
            <asp:Label ID="Label12" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="160px" AutoPostBack="True" DataSourceID="SqlDataSourceState" DataTextField="State_Name" DataValueField="State_Id">
                        </asp:DropDownList>
            
            
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            
            
                        <asp:SqlDataSource ID="SqlDataSourceState" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @State_Id" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @State_Id">
                            <DeleteParameters>
                                <asp:Parameter Name="State_Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="State_Name" Type="String" />
                                <asp:Parameter Name="Country_Id" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Country_Id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="State_Name" Type="String" />
                                <asp:Parameter Name="Country_Id" Type="Int32" />
                                <asp:Parameter Name="State_Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
            
            
                        <br />
            
            
            <asp:Label ID="Label13" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="160px" DataSourceID="SqlDataSourceCity" DataTextField="City_Name" DataValueField="City_Id">
                        </asp:DropDownList>
            
            
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList3" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            
            
                        <asp:SqlDataSource ID="SqlDataSourceCity" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @City_Id" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @City_Id">
                            <DeleteParameters>
                                <asp:Parameter Name="City_Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="City_Name" Type="String" />
                                <asp:Parameter Name="State_Id" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="State_Id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="City_Name" Type="String" />
                                <asp:Parameter Name="State_Id" Type="Int32" />
                                <asp:Parameter Name="City_Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
            
            
            <br />
            <asp:Label ID="Label14" runat="server" Text="Pin_Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" BackColor="#EFEFEF" Height="22px" Width="160px"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label15" runat="server"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" />
                        <br />
                        <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <br />
                        <br />
                        <%-- <div class="text">Caption Three</div>--%>

                        <div class="slideshow-container">

<div class="mySlides fade">
    <%-- <div class="text">Caption Three</div>--%>
  <img src="images/001-bmw-i3-94ah.jpg" style="height:300px; width:500px">
    <%-- <div class="text">Caption Three</div>--%>
</div>

<div class="mySlides fade">
    <%-- <div class="text">Caption Three</div>--%>
  <img src="images/Audi-R8-on-Transfagarasan-road-in-Romania.jpg" style="height:300px; width:500px">
    <%-- <div class="text">Caption Three</div>--%>
</div>

<div class="mySlides fade">
    <%-- <div class="text">Caption Three</div>--%>
  <img src="images/268720-Ford_Mustang_GT-car-road-sunset-motion_blur-748x468.jpg" style="height:300px; width:500px">
 <%-- <div class="text">Caption Three</div>--%>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>


                        <br />
                        <br />
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.5473805248366!2d75.88741121443717!3d22.745058732351527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fd539a99e26d%3A0x58058ec7f07ab479!2sSystematix%20Infotech%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1590183843775!5m2!1sen!2sin" width="400" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; " allowfullscreen="" aria-hidden="false" tabindex="0" id="I1" name="I1" class="auto-style5"></iframe>
                    </td>
                </tr>
                
             
            </table>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</td>
    </tr>
    </table>
                </td>
        </tr>
        
    </table>
</asp:Content>

