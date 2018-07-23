<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="SafeSure.PL.ViewCustomer" %>
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
    <center>
        <h1 style="font-family:Aharoni;color:#2454a0">Customer Details</h1><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="SqlDataSource01">
            <Columns>
                <asp:BoundField DataField="customer_id" HeaderText="Customer Id" ReadOnly="True" SortExpression="customer_id" />
                <asp:BoundField DataField="product_id" HeaderText="Product Id" SortExpression="product_id" />
                <asp:BoundField DataField="Customer_name" HeaderText="Customer Name" SortExpression="Customer_name" />
                <asp:BoundField DataField="Customer_address" HeaderText="Customer Address" SortExpression="Customer_address" />
                <asp:BoundField DataField="Mobile_number" HeaderText="Mobile Number" SortExpression="Mobile_number" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="Smoker" HeaderText="Smoking Habit" SortExpression="Smoker" />
                <asp:BoundField DataField="Date_of_Birth" HeaderText="Date of Birth" SortExpression="Date_of_Birth" />
                <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" SortExpression="Hobbies" />
                <asp:BoundField DataField="endorsementStatus" HeaderText="Endorsement Status" SortExpression="endorsementStatus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource01" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString01 %>" SelectCommand="SELECT customer_id, product_id, Customer_name, Customer_address, Mobile_number, gender, Smoker, Date_of_Birth, Hobbies, endorsementStatus FROM PolicyEndorsement.Customer"></asp:SqlDataSource>
        <br /><br /><br />
        <h1 style="font-family:Aharoni;color:#2454a0">Policy Details</h1><br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Policy_number" DataSourceID="SqlDataSource02">
            <Columns>
                <asp:BoundField DataField="Policy_number" HeaderText="Policy Number" ReadOnly="True" SortExpression="Policy_number" />
                <asp:BoundField DataField="Customer_id" HeaderText="Customer Id" SortExpression="Customer_id" />
                <asp:BoundField DataField="product_id" HeaderText="Product Id" SortExpression="product_id" />
                <asp:BoundField DataField="nomineeName" HeaderText="Nominee Name" SortExpression="nomineeName" />
                <asp:BoundField DataField="paymentMode" HeaderText="Payment Mode" SortExpression="paymentMode" />
                <asp:BoundField DataField="Relationship" HeaderText="Relationship With Nominee" SortExpression="Relationship" />
            </Columns>
        </asp:GridView>
        <br /><br /><br />
        <h1 style="font-family:Aharoni;color:#2454a0">Login Details</h1><br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="SqlDataSource04">
            <Columns>
                <asp:BoundField DataField="customer_id" HeaderText="Customer User Name" ReadOnly="True" SortExpression="customer_id" />
                <asp:BoundField DataField="Customer_Password" HeaderText="Customer Password" SortExpression="Customer_Password" />
            </Columns>
        </asp:GridView>


        
   </div>

        <asp:SqlDataSource ID="SqlDataSource04" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString01 %>" SelectCommand="SELECT customer_id, Customer_Password FROM PolicyEndorsement.LoginDetails"></asp:SqlDataSource>

        <br /><br /><br />

        <asp:SqlDataSource ID="SqlDataSource02" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString01 %>" SelectCommand="SELECT Policy_number, Customer_id, product_id, nomineeName, paymentMode, Relationship FROM PolicyEndorsement.Policy"></asp:SqlDataSource>

        <br />
        <br />
    </center>
</asp:Content>
