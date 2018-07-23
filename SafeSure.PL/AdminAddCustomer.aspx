<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" Theme="PolicyThemes" CodeBehind="AdminAddCustomer.aspx.cs" Inherits="SafeSure.PL.AdminAddCustomer"  %>

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

    <center>
       <table style="width:800px;text-align:left">
           <tr>
               <td colspan="3">
                           <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img26.jpg" Height="144px" Width="204px" CssClass="auto-style1" /></center>

               </td>
           </tr>
           <tr>
               <td>
                   <br /><br />
               </td>
           </tr>
       <tr style="text-align:left;font-size:25px;font-family:Aharoni">
          
               <td colspan="2"> 
                   <center><asp:Label ID="lblTitle" runat="server" Text="Enter Customer Details" SkinID="Title"></asp:Label></center></td>
           </tr>
           <tr>
               <td>

               </td>
           </tr>
        <tr>
            <td>
                <asp:Label ID="lblCustomerID" runat="server" Text="Customer Id : " SkinID="label"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustomerId" runat="server" ReadOnly="true" TextMode="Number" SkinID="textbox"></asp:TextBox>
                </td>
            <td>
                 <asp:RangeValidator ID="rvCustomerId" ControlToValidate="txtCustomerId" runat="server" Type="Integer" ErrorMessage="Enter 6 digit Customer ID" MinimumValue="000000" Display="Dynamic" ForeColor="Red" MaximumValue="999999"></asp:RangeValidator>
            
                 <asp:RequiredFieldValidator ID="rfvCustomerId" runat="server" ControlToValidate="txtCustomerId" Text="Please provide CustomerId" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
             
           <tr>
            <td>
                <asp:Label ID="lblCustName" runat="server" Text="Customer Name : " SkinID="label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustName" runat="server" SkinID="textbox" ></asp:TextBox>
                
            </td>
                <td>
            <asp:RequiredFieldValidator ID="rfvCustName" runat="server" ControlToValidate="txtCustName" Text="Please provide Customer Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="lblGender" runat="server" Text="Gender : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="rdbMale" runat="server" Text="Male" GroupName="Gender" SkinID="radio" />
                <asp:RadioButton ID="rdbFemale" runat="server" Text="Female" GroupName="Gender" SkinID="radio" />
              </td>
              
             </tr> 
           <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="Address : " SkinID="label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="150px" Height="50px" SkinID="textbox" ></asp:TextBox>
            </td>
                <td>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" Text="Please provide Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>   
        </tr>  
                 
         <tr>
            <td>
                <asp:Label ID="lblTelephone" runat="server" Text="Telephone Number : " SkinID="label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTelephone" runat="server" TextMode="Phone" SkinID="textbox"></asp:TextBox>
                
            </td>
     <td>
            <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ControlToValidate="txtTelephone" Text="Please provideTelephone Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>  
        </tr>

           <tr>
            <td>
                <asp:Label ID="lblDOB" runat="server" Text="DOB : " SkinID="label"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" SkinID="textbox"></asp:TextBox>
            </td>
               <td>
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" Text="Please provide DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>   
        </tr>
       
           <tr>
            <td>
                <asp:Label ID="lblHobbies" runat="server" Text="Hobbies  : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHobbies" runat="server" SkinID="textbox" ></asp:TextBox>
            </td>
               <td>
            <asp:RequiredFieldValidator ID="rfvHobies" runat="server" ControlToValidate="txtHobbies" Text="Please provide Hobbies" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>   
        </tr> 
            <tr>
            <td>
                <asp:Label ID="lblSmoker" runat="server" Text="Smoker/NonSmoker : " SkinID="label"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="Smoker" runat="server" Text="Smoker" GroupName="Smokest" SkinID="radio" />
                <asp:RadioButton ID="NonSmoker" runat="server" Text="NonSmoker" GroupName="Smokest" SkinID="radio" />
              </td>
              <%-- <td>
            <asp:RequiredFieldValidator ID="rfvProductLine" runat="server" ControlToValidate="lblProductLine" Text="Please provide Product Line" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>  --%> 
             </tr> 
           <tr>
               <td>

               </td>
           </tr>
            <tr>
               <td>
                   <br />
               </td>
           </tr>  
        
       <tr style="text-align:left;font-size:25px;font-family:Aharoni">
               <td colspan="2"> 
                   <center><asp:Label ID="lblLabe2" runat="server" Text="Enter Policy Details" SkinID="Title"></asp:Label></center></td>
           </tr> 
           <tr>
               <td>
                   <br />
               </td>
           </tr>          
        <tr>
            <td>
                <asp:Label ID="lblPolicyNumber" runat="server" Text="Policy Number : " SkinID="label"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPolicyNumber" ReadOnly="true" runat="server" TextMode="Number" SkinID="textbox"></asp:TextBox> 

                
            </td>
            <td>
            <asp:RangeValidator ID="rvPolicyNumber" ControlToValidate="txtPolicyNumber" runat="server" Type="Integer" ErrorMessage="Enter 7 digit policy number" MinimumValue="0000000" ForeColor="Red" Display="Dynamic" MaximumValue="9999999"></asp:RangeValidator>

            <asp:RequiredFieldValidator ID="rfvPolicyNumber" runat="server" ControlToValidate="txtPolicyNumber" Text="Please provide Policy Number" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
                   <tr>
            <td>
                <asp:Label ID="lblProduct" runat="server" Text="Product ID : " SkinID="label"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red" SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProduct" runat="server" TextMode="Number" SkinID="textbox"></asp:TextBox>
                 
                
            </td>
            <td>
                <asp:RangeValidator ID="rvProduct" ControlToValidate="txtProduct" runat="server" Type="Integer" ErrorMessage="Enter 4 digit Product ID" ForeColor="Red" Display="Dynamic" MinimumValue="0000" MaximumValue="9999"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfvProduct" runat="server" ControlToValidate="txtProduct" Text="Please provide ProductId" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
           
              <tr>
            <td>
                <asp:Label ID="lblPremiumPaymentMethod" runat="server" Text="Premium Payment Method : " SkinID="label"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:DropDownList   ID="ddlPremiumPaymentMethod" runat="server" SkinID="dropdown">
                        <asp:ListItem Enabled="true" Selected="True" Value="0" Text="Select Payment Method">
                        </asp:ListItem >                       
                 <asp:ListItem>Quarterly</asp:ListItem>
                             <asp:ListItem>Monthly</asp:ListItem>
                    <asp:ListItem>HalfYearly</asp:ListItem>
                            <asp:ListItem>Annually</asp:ListItem>
                   
                    </asp:DropDownList>
            </td>
             <%--<td>
            <asp:RequiredFieldValidator ID="rfvPremiumPaymentMethod" runat="server" ControlToValidate="lblPremiumPaymentMethod" Text="Please provide Premium Payment Method" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>  --%>
            
        </tr>
           <tr>
            <td>
                <asp:Label ID="lblNomineeName" runat="server" Text="Nominee Name  : " SkinID="label"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNomineeName" runat="server" SkinID="textbox" ></asp:TextBox>
            </td>
     <td>
            <asp:RequiredFieldValidator ID="rfvNomineeName" runat="server" ControlToValidate="txtNomineeName" Text="Please provide Nominee Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>  </tr> 
                <tr>
                     <td>
                <asp:Label ID="lblRelationWithNominee" runat="server" Text="Relation With Nominee : " SkinID="label"></asp:Label>
                         <asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
                     <td>
                <asp:DropDownList   ID="ddlRelationship" runat="server" SkinID="dropdown">
                        <asp:ListItem Enabled="true" Selected="True" Value="0" Text="RelationShip With Nominee ">
                        </asp:ListItem>                       
                 
                    <asp:ListItem>Father</asp:ListItem>
                    <asp:ListItem>Mother</asp:ListItem>
                    <asp:ListItem>Husband</asp:ListItem>
                    <asp:ListItem>Wife</asp:ListItem>                    
                     <asp:ListItem>Others</asp:ListItem>
                   
                    </asp:DropDownList>
            </td>
                </tr>
                <tr>
            <td></td>
            
        </tr>
            <tr>
               <td>
                   <br />
               </td>
           </tr>  

        <tr style="text-align: left; font-size: 25px; font-family: Aharoni">
            <td colspan="2">
                <center><asp:Label ID="lblLabel3" runat="server" Text="Enter Document Details" SkinID="Title"></asp:Label></center>
            </td>
        </tr>
         <tr>
               <td>
                   <br />
               </td>
           </tr>  
        <tr>
            <td>
                <asp:Label ID="lblIDProof" runat="server" Text="Nature Of Document : " SkinID="label"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlIDProof" runat="server" SkinID="dropdown">
                    <asp:ListItem Enabled="true" Selected="True" Value="0" Text="ID Proof " ></asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>PAN</asp:ListItem>
                    <asp:ListItem>Voter Card</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblIDProofNumber" runat="server" Text="Enter ID Proof Number : " SkinID="label"></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtIDProofNumber" runat="server" SkinID="textbox"></asp:TextBox>

            </td>

            <td>
                <asp:RequiredFieldValidator ID="rfvIDProofNumber" runat="server" ControlToValidate="txtIDProofNumber" Text="Please provide ID Proof Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td></td>
        </tr>
            <tr>
               <td>
                   <br />
               </td>
           </tr>  
        <tr>
             <td style="text-align:center">

            </td>
            <td>
                <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClick="btnAddCustomer_Click" Height="34px" Width="160px" SkinID="button" />

            </td>
               <td style="text-align:right">
                   <asp:Label ID="Label14" runat="server" Text="* Required" ForeColor="Red"></asp:Label>
               </td>

        </tr>
    </table>
    </center>


</asp:Content>
