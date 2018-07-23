<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="UserViewPolicy.aspx.cs" Inherits="SafeSure.PL.UserViewPolicy" Theme="PolicyThemes" %>
<%@ MasterType VirtualPath="~/SafeSureMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">
    <br />
     
    <br />
    <asp:Label Style="background-color: white; color: #2454a0; text-align: left" runat="server"></asp:Label>
    <center>
       <table style="text-align:left"  >
           <tr>
               <td colspan="2">
                           <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img21.png" Height="94px" Width="132px" CssClass="auto-style1" /></center>
               </td>
           </tr>
           <tr>
               <td>
                   <br />
                   <br />
               </td>
           </tr>
       <tr>
            <td colspan="6" style="font-size: 30px; background-color: white; color: #2454a0;font-family:Aharoni">
                <center><asp:Label ID="lblTitle" runat="server" Text="VIEW POLICY DETAILS" SkinID="Title" ></asp:Label></center>
            </td>
        </tr>

        <tr>
            <td>
                <br />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblCustId" runat="server" Text="Customer Id: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCustId1" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblPolicyNumber" runat="server" Text="PolicyNumber: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblPolicyNumber1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblProductName" runat="server" Text="ProductName: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblProductName1" runat="server"></asp:Label>

            </td>

        </tr>

        <tr>
            <td>
                <asp:Label ID="lblProductLine" runat="server" Text="ProductLine: " SkinID="label"></asp:Label>
            </td>

            <td>
                <asp:Label ID="lblProductLine1" runat="server"></asp:Label>
            </td>

        </tr>

        <tr>
            <td>
                <asp:Label ID="lblInsuredName" runat="server" Text="InsuredName: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblInsuredName1" runat="server"></asp:Label>
            </td>

        </tr>


        <tr>
            <td>
                <asp:Label ID="lblDOB" runat="server" Text="DOB : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDOB1" runat="server"></asp:Label>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGender" runat="server" Text="Gender : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblGender1" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblNomineeName" runat="server" Text="Nominee Name  : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblNomineeName1" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblRelationWithNominee" runat="server" Text="RelationWithNominee: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblRelationWithNominee1" runat="server"></asp:Label>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSmokerORNonSmoker" runat="server" Text="Smoker" SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSmokerORNonSmoker1" runat="server"></asp:Label>
            </td>

        </tr>

        <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="Addresss : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAddress1" runat="server"></asp:Label>
            </td>

        </tr>

        <tr>
            <td>
                <asp:Label ID="lblTelephoneNumber" runat="server" Text="TelephoneNumber:" SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTelephoneNumber1" runat="server"></asp:Label>

            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPremiumPaymentMethod" runat="server" Text="PremiumPaymentMethod: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblPremiumPaymentMethod1" runat="server"></asp:Label>
            </td>

        </tr>

        <tr>
            <td>
                <asp:Label ID="lblIDProof" runat="server" Text="ID Proof : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblIDProof1" runat="server"></asp:Label>
            </td>
            </tr>

           <tr>
               <td>
                <asp:Label ID="lblIDProofNumber" runat="server" Text="ID Proof Number: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblIDProofNumber1" runat="server"></asp:Label>

            </td>
               </tr>
                       
            <tr>

            <td>
                <asp:Label ID="lblEndoStatus" runat="server" Text="Endorsement Status: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblEndoStatus1" runat="server"></asp:Label>
            </td>

        </tr>

        <tr>
            <td>
                <br />
            </td>
        </tr>

        <tr>
           <td style="text-align:center" >
                <asp:Button ID="btnBack" runat="server" Text="BACK" SkinID="button" OnClick="btnBack_Click" Width="43px" />
            </td>         
            <td style="text-align:center" >
                <asp:Button ID="btnEdit" runat="server" Text="EDIT" SkinID="button" OnClick="btnEdit_Click" Width="43px" />
            </td>
        </tr>
           <tr>
            <td>
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
