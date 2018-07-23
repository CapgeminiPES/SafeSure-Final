<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="AdminViewEndoStatus.aspx.cs" Theme="PolicyThemes" Inherits="SafeSure.PL.AdminViewEndoStatus" %>
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
    <br /><br />

    <center>
    <table style="text-align:center;width:600px">
        <tr style="text-align: center; font-size: 22px;color:#2454a0;font-family:Aharoni">
            <td>
                <asp:Label runat="server" ID="lblTitle" Text="ENDORSEMENT STATUS" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr style="text-align: center;">
            <td>
                <asp:Button runat="server" ID="btnRefresh" Text="View Endoresment Requests" Width="202px" OnClick="btnRefresh_Click" BackColor="#2454a0" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <center>
              <asp:GridView ID="gvEndoResult" runat="server" OnSelectedIndexChanged="gvEndorse_SelectedIndexChanged" style="width: 600px; overflow: scroll">
                  <Columns>
                      <asp:CommandField ButtonType="Button" HeaderText="Select" ShowHeader="True" ShowSelectButton="True" />
                  </Columns>
              </asp:GridView> 
        </center>
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
    </table>
   </center>
    <br /><br /><br />

</asp:Content>
