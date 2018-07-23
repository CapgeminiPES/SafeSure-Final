<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" Theme="PolicyThemes" CodeBehind="AdminAddInsuranceProduct.aspx.cs" Inherits="SafeSure.PL.AdminAddInsuranceProduct" %>
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
    <br />
    <br />
     
     <center> <table style="text-align:left;width:800px">
         <tr>
             <td colspan="3">
                         <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img27.png" Height="100px" Width="135px" CssClass="auto-style1" /></center>
             </td>
         </tr>
         <tr>
             <td>
                 <br />
                  <br />
             </td>
         </tr>
            <tr>
               <td colspan="6" style="font-size:30px;font-family:Aharoni;color:#2454a0"> <center><asp:Label ID="lblTitle1" runat="server" Text="Add New Products" SkinID="Title" ></asp:Label></center></td>
           </tr>
         <tr>
             <td>

             </td>
         </tr>
           <tr>
            <td>
                <asp:Label ID="lblProductId" runat="server" Text="Product ID : " SkinID="label"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductId" runat="server" TextMode="Number" SkinID="textbox"></asp:TextBox>
                 
                
            </td>
            <td>
                <asp:RangeValidator ID="rvProductId" ControlToValidate="txtProductId" runat="server" Type="Integer" ErrorMessage="Enter 4 digit Product ID" ForeColor="Red" Display="Dynamic" MinimumValue="0000" MaximumValue="9999"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfvProductId" runat="server" ControlToValidate="txtProductId" Text="Please provide ProductId" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
         <tr>
             <td></td>
         </tr>
             <tr>
            <td>
                <asp:Label ID="lblProductName" runat="server" Text="Product Name : " SkinID="label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server" SkinID="textbox"></asp:TextBox>
                
            </td>
                <td>
            <asp:RequiredFieldValidator ID="rfvProductName" runat="server" ControlToValidate="txtProductName" Text="Please provide Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
         <tr>
             <td>

             </td>
         </tr>
            <tr>
            <td>
                <asp:Label ID="lblProductLine" runat="server" Text="Product Line : " SkinID="label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="rdbLife" runat="server" Text="Life" GroupName="Life" SkinID="radio" />
                <asp:RadioButton ID="rdbNonLife" runat="server" Text="NonLife" GroupName="Life" SkinID="radio" />
              </td>
              
             </tr> 
         <tr>
             <td>

             </td>
         </tr>
         <tr>
             <td>

             </td>
         </tr>
           <tr>
            <td></td>
            <td>
                <asp:Button ID="btnCreate" runat="server" Text="Create Products" OnClick="btnCreate_Click" Height="34px" Width="150px" SkinID="button"/>
                
            </td>
          
            <td style="text-align:right">
                   <asp:Label ID="Label14" runat="server" Text="* Required" ForeColor="Red"></asp:Label>
               </td>
        </tr>
      </table>
         <br /><br /><br />
         <asp:Label ID="lblProd" runat="server" Text="Existing Products" Font-Size="22px" SkinID="Title"></asp:Label>
         <br /><br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource03">
             <Columns>
                 <asp:BoundField DataField="Product_ID" HeaderText="Product ID" ReadOnly="True" SortExpression="Product_ID" />
                 <asp:BoundField DataField="Product_name" HeaderText="Product Name" SortExpression="Product_name" />
                 <asp:BoundField DataField="Product_description" HeaderText="Product Description" SortExpression="Product_description" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource03" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString01 %>" SelectCommand="SELECT Product_ID, Product_name, Product_description FROM PolicyEndorsement.InsuranceProducts"></asp:SqlDataSource>
         <br /><br />
     </center>
    
    
    
    <br />
    <br />
    <br />

</asp:Content>
