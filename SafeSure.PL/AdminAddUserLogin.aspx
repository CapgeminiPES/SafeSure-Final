<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" Theme="PolicyThemes" AutoEventWireup="true" CodeBehind="AdminAddUserLogin.aspx.cs" Inherits="SafeSure.PL.AdminAddUserLogin" %>
<%@ MasterType VirtualPath="~/SafeSureMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">
    <br />
     <div id="divAdminMenu" runat="server" style="font-size: 16px; color: #2454a0; font-weight: 400">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:HyperLink ID="hrlViewAllCustomerDetails" runat="server" ForeColor="#2454a0" Text="View All Customer Details" NavigateUrl="~/ViewCustomer.aspx"></asp:HyperLink>                  
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hrlAddCustomer" runat="server" ForeColor="#2454a0" Text="Add Customer Details" NavigateUrl="~/AdminAddCustomer.aspx"></asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hrlAddUserLogin" runat="server" ForeColor="#2454a0" Text="Add User Login" NavigateUrl="~/AdminAddUserLogin.aspx"></asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp<asp:HyperLink ID="hrlAddInsurace" runat="server" ForeColor="#2454a0" Text="Add Insurance Products" NavigateUrl="~/AdminAddInsuranceProduct.aspx"></asp:HyperLink>                    
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp<asp:HyperLink ID="hrlViewEndoStatus" runat="server" ForeColor="#2454a0" Text="View Endoresment Status" NavigateUrl="~/AdminViewEndoStatus.aspx"></asp:HyperLink>
                </div>
    <div>
    <center>  <table style="width:800px;text-align:left">
        <tr>
            <td colspan="3">
                        <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img16.png" Height="125px" Width="172px" CssClass="auto-style1" /></center>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
            </td>
        </tr>
           <tr>
               <td colspan="6" style="font-size:30px;font-family:Aharoni;color:#2454a0"> <center>
                   <asp:Label ID="lblTitle" runat="server" Text="ADD USER LOGIN" SkinID="Title"></asp:Label></center></td>
           </tr>
        <tr>
            <td>

            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="lblCustomerID" runat="server" Text="User Name : " SkinID="label"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustomerId" runat="server" SkinID="textbox" ></asp:TextBox>
                 
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCustomerId" runat="server" ControlToValidate="txtCustomerId" Text="Please provide CustomerId" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
          <tr>
              <td>
                  <asp:Label ID="lblPassword" runat="server" Text="Password :" SkinID="label" ></asp:Label>
                  <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
              </td>
               <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" SkinID="textbox"></asp:TextBox>
                           
            </td>
          </tr>
            <tr>
              <td>
                  <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password :" SkinID="label" ></asp:Label>
                  <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
              </td>
               <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" SkinID="textbox"></asp:TextBox>
                  
            </td>
                <td>
                    <asp:CompareValidator ID="comPassword" Text="Password and Confirm Password Should be same" ControlToValidate="txtConfirm" runat="server" ForeColor="Red" ControlToCompare="txtPassword" Operator="Equal"></asp:CompareValidator>
                </td>
          </tr>
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnCreateLogin" Text="Create Login" runat="server" Width="150px" Height="32px" Font-Size="18px" SkinID="button" OnClick="btnCreateLogin_Click" ></asp:Button>
            </td>
            <td style="text-align:right">
                   <asp:Label ID="Label14" runat="server" Text="* Required" ForeColor="Red"></asp:Label>
               </td>
        </tr>
      </table></center>
    </div>

</asp:Content>
