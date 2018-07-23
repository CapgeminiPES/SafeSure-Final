<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" Theme="PolicyThemes" CodeBehind="AdminLogin.aspx.cs" Inherits="SafeSure.PL.AdminLogin" %>
<%@ MasterType VirtualPath="~/SafeSureMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">

    <br />
    <br />
    <center>
        
        <table style="text-align:left" >
            <tr>
                <td colspan="2">
                            <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img12.png" Height="100px" Width="153px" CssClass="auto-style1" /></center>
                </td>
            </tr>
            <tr>
                <td>

                </td>
            </tr>

            <tr>
                <td colspan="2" style="background-color:#2454a0;color:white;font-weight:bold;text-align:center;font-size:20px;font-family:Aharoni;height:28px">
                    ADMIN LOGIN
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        <tr>
            <td colspan="2" style="background-color:#2454a0;color:white;font-weight:bold;font-family:Aharoni;height:28px">
                Login Here...<br />
            </td>
        </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        <tr>
            <td>
                <asp:Label ID="lblUserName" runat="server" Text="User Name : " SkinID="label" ></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" SkinID="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUserName" Text="Please provide User name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
                <td>
                    <br />
                </td>
            </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password : " SkinID="label" ></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" SkinID="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPassword" Text="Please provide password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnAdminLogin" runat="server" Text="Sign In" BackColor="#2454a0" ForeColor="White" Width="100px" Font-Names="Aharoni" height="28px" Font-Size="20px" Font-Bold="true" OnClick="btnAdminLogin_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
            <tr>
                <td colspan="2" style="text-align:right">
                   <asp:Label ID="Label14" runat="server" Text="* Required" ForeColor="Red"></asp:Label>
               </td>
            </tr>
    </table>
        <br />
        <br />
    </center>


</asp:Content>
