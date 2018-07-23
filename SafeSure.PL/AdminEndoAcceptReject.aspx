<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" Theme="PolicyThemes" CodeBehind="AdminEndoAcceptReject.aspx.cs" Inherits="SafeSure.PL.AdminEndoAcceptReject" %>
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
       <table style="text-align:left;width:600px"  >
       <tr>
            <td colspan="6" style="font-size: 30px; background-color: white; color: #2454a0;font-family:Aharoni">
                <center><asp:Label ID="lblTitle" runat="server" Text="UPDATED POLICY DETAILS" ></asp:Label></center>
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
                <asp:Label ID="lblTelephoneNumber1" runat="server" ></asp:Label>

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
            </td>
        </tr>      
    
        <tr style="text-align:center">
            <td>
                <asp:Button runat="server" ID="btnAccepted" Text="Accepted" OnClick="btnAccepted_Click" SkinID="button" />
            </td>
            <td>
                <asp:Button runat="server" ID="btnRejected" Text="Rejected" OnClick="btnRejected_Click" SkinID="button"/>
            </td>
            <td>&nbsp;</td>
        </tr>
           <tr>
               <td>

               </td>
           </tr>
    </table>
    </center>

    <br /><br /><br />
</asp:Content>
