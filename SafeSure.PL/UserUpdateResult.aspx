<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="UserUpdateResult.aspx.cs" Inherits="SafeSure.PL.UserUpdateResult" %>
<%@ MasterType VirtualPath="~/SafeSureMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">
    <br />
        <br />

        <br />
    
   <center> <h1> Thank you!!!</h1><h3>Your Details has been Updated Successfully....</h3>
    <p style="text-align:center;font-size:20px">
       Your details will be Endoresed by our Admin...
        <br />
        You can view the Endoresed details in the  portal.
        <br />
        <br /></p>
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#2454a0" Text="Back to Search" NavigateUrl="~/UserSearchPolicy.aspx" Font-Size="22px" ></asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </center>
    
    <br />
                <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img24.png" Height="110px" Width="143px" CssClass="auto-style1" /></center>

        <br />
        <br />
</asp:Content>
