<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SafeSure.PL.HomePage" %>
<%@ MasterType VirtualPath="~/SafeSureMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">

   
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <br />
<div class="container" style="width:100%;height:300px" >
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" >
      <div class="item active">
        <img src="Images/img2.jpg" alt="Los Angeles" style="width:100%;height:300px"/>
      </div>

      <div class="item">
        <img src="Images/img3.png" alt="Chicago" style="width:100%;height:300px"/>
      </div>
    
      <div class="item">
        <img src="Images/img1.jpg" alt="New york" style="width:100%;height:300px"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <br />
  <center>
                  <hr style="width:80%;height:6px;background-color:#2454a0"  />
<br />
      <table style="align-items:center">
            <tr>
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;color:#2454a0;text-align:center">
                            <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img11.png" Height="124px" Width="149px" CssClass="auto-style1" /></center>

                </td>
                <td style="width:100px" />
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;color:#2454a0;text-align:center">
                            <center><asp:Image  ID="Image1"  runat="server" ImageUrl="~/Images/img12.png" Height="98px" Width="131px" CssClass="auto-style1" /></center>

                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;color:#2454a0;text-align:center">
                    For User Login<br/>
                    Click here...<br/><br />
                    <asp:Button ID="btnUserLogin" runat="server" Text="User Login" Width="200px" Height="50px"  BackColor="#2454a0" ForeColor="White" OnClick="btnUserLogin_Click" ></asp:Button>
                </td>
                <td style="width:100px" />
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;color:#2454a0;text-align:center">
                    For Admin Login<br/>
                    Click here...<br/><br />
                  <asp:Button ID="btnAdminLogin" runat="server" Text="Admin Login" Width="200px" Height="50px"  BackColor="#2454a0" ForeColor="White" OnClick="btnAdminLogin_Click" ></asp:Button>
                </td>
            </tr>            
        </table>


      <hr style="width:80%;height:6px;background-color:#2454a0"  />
      <br />
        <table style="align-items:center" >
            <tr>
                <td colspan="2" style="font-family:Aharoni;font-size:22PX;width:250px;color: #2454a0;text-align:center">                    
                    Customer Speak
                    
                </td>
                <td style="width:70px" />
                <td colspan="2" style="font-family:Aharoni;font-size:22PX;width:250px;color: #2454a0;text-align:center">
                    Awards and Recognition
                    
                </td>
                <td style="width:70px" />
                <td colspan="2" style="font-family:Aharoni;font-size:22PX;width:250px;color: #2454a0;text-align:center">
                    Knowledge Sharing
                     
                </td>                
            </tr>

            <tr>
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;width:200px;text-align:center">
                    <br />
                    We aim to deliver the best customer experience for all insurance needs. Here's a glimpse of what our customers say.​​​​​                    

                </td>
                <td style="width:70px" />
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;width:200px;text-align:center">
                    <br />
                    Our drive towards growth and continual improvement in our insurance services has won us many accolades.
                </td>
                <td style="width:70px" />
                <td colspan="2" style="font-family:Aharoni;font-size:20PX;width:200px;text-align:center">
                    <br />
                    Learning new things helps better our lives. Check out our blogs for ideas on living smart and secure.​
                </td>
            </tr>
        </table>
            </center>
        <center>
            <br />
             <br />
            <br />
        
            </center>
    <br />
    <br />
    <br />
   

</body>
</html>

</asp:Content>
