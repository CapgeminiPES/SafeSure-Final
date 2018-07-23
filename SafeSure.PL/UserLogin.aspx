<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="SafeSure.PL.UserLogin" Theme="PolicyThemes" %>
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
                            <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img11.png" Height="127px" Width="206px" CssClass="auto-style1" /></center>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color:#2454a0;color:white;font-weight:bold;text-align:center;font-size:20px;font-family:Aharoni;height:28px">
                    USER LOGIN
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
                <asp:Label ID="lblCustomerId" runat="server" Text="User Name : " SkinID="label" >

                </asp:Label><asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustomerId" runat="server" SkinID="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCustomer" runat="server" ControlToValidate="txtCustomerId" Text="(Please provide Customer Id)" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
                <td>
                    <br />
                </td>
            </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password : " SkinID="label"></asp:Label>
                 </asp:Label><asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" SkinID="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPassword" Text="(Please provide password)" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btnUserLogin" runat="server" Text="Sign In" SkinId="button" OnClick="btnUserLogin_Click" />
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
