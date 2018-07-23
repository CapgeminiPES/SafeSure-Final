<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="UserUpdatePolicy.aspx.cs" Inherits="SafeSure.PL.UserUpdatePolicy" Theme="PolicyThemes" %>
<%@ MasterType VirtualPath="~/SafeSureMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">
    <br />
   
    <br />
   <center>
       <table style="text-align:left;width:1000px" >
           <tr>
               <td colspan="3">
                           <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img23.png" Height="106px" Width="176px" CssClass="auto-style1" /></center>
               </td>
           </tr>
           <tr>
               <td>
                   <br />
                   <br />
               </td>
           </tr>
       <tr>
               <td colspan="6" style="font-size:30px;background-color: white; color: #2454a0;font-family:Aharoni" > <center><asp:Label ID="lblTitle" runat="server" Text="UPDATE POLICY DETAILS" SkinID="Title" ></asp:Label></center></td>
           </tr>
           
           <tr>
               <td>

               </td>
           </tr>

           <tr>
            <td>
                <asp:Label ID="lblCustId"  runat="server" Text="Customer Id: " SkinID="label"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="txtCustomerId" ReadOnly="true" SkinID="textbox" BackColor="#cccccc" ForeColor="Black" runat="server" TextMode="Number"></asp:TextBox>
                
            </td>
            
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblPolicyNumber"  runat="server" Text="PolicyNumber: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPolicyNumber" ReadOnly="true" BackColor="#cccccc" ForeColor="Black" SkinID="textbox" runat="server" TextMode="Number"></asp:TextBox>
                
            </td>
            
        </tr>
           <tr>
            <td>
                <asp:Label ID="lblProductName" runat="server" SkinID="label" Text="ProductName: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server" ReadOnly="true" BackColor="#cccccc" ForeColor="Black" SkinID="textbox"></asp:TextBox>
                
            </td>
                
        </tr>

           <tr>
            <td>
                <asp:Label ID="lblProductLine" runat="server" SkinID="label" Text="Product Line : "></asp:Label>
            </td>
            <td>
                 <asp:RadioButton ID="rdbLife" Text="Life" runat="server" SkinID="radio" GroupName="Pline"></asp:RadioButton>
                <asp:RadioButton ID="rdbNonLife" Text="NonLife" runat="server" SkinID="radio" GroupName="Pline"></asp:RadioButton>
              </td>
              
             </tr> 
           
           <tr>
            <td>
                <asp:Label ID="lblInsuredName" SkinID="label" runat="server" Text="InsuredName: "></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtInsuredName" ReadOnly="true"  BackColor="#cccccc" ForeColor="Black" SkinID="textbox" runat="server" ></asp:TextBox>
                
            </td>
                <td class="auto-style1">
            <asp:RequiredFieldValidator ID="rfvInsuredName" s runat="server" ControlToValidate="txtInsuredName" Text="Please provide Insured Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>   
        </tr>  
                 
           <tr>
            <td>
                <asp:Label ID="lblDOB" SkinID="label" runat="server" Text="DOB: "></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtDOB" style="background-color: white; color: #2454a0" runat="server" TextMode="Date"></asp:TextBox>
                
            </td>
               <td class="auto-style1">
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" Display="Dynamic" Text="Please provide DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                 
             
                   <asp:CompareValidator ID="CompareValidator1"
      runat="server" ControlToValidate="txtDOB"  Operator="LessThan" Display="Dynamic" Type="Date" Text="DOB Should be less than current date" ForeColor="Red" />   </td>  
        </tr>
       <tr>
            <td>
                <asp:Label ID="lblGender" runat="server" Text="Gender : " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="rdbMale"  Text="Male" runat="server" SkinID="radio" GroupName="gen"></asp:RadioButton>
                <asp:RadioButton ID="rdbFemale" Text="Female" runat="server" SkinID="radio" GroupName="gen"></asp:RadioButton>
        </td>
                 
             </tr> 
      
 <tr>
            <td>
                <asp:Label ID="lblNomineeName" runat="server" Text="NomineeName: "  SkinID="label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNomineeName" runat="server"  SkinID="textbox" ></asp:TextBox>
                
            </td>
     <td class="auto-style1">
            <asp:RequiredFieldValidator ID="rfvNomineeName" runat="server" ControlToValidate="txtNomineeName" Text="Please provide Nominee Name" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNomineeName" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{1,15}$" runat="server" Text="Maximum 15 characters allowed." ForeColor="Red"></asp:RegularExpressionValidator></td>   
          </tr>  
           <tr>
     <td>
                <asp:Label ID="lblRelationWithNominee"  SkinId="label" runat="server" Text="RelationWithNominee: "></asp:Label>
            </td>
            <td><asp:DropDownList ID="ddlRelation" runat="server"  SkinId="dropdown" Width="154px" >
                <asp:ListItem Enabled="true" Selected="True" Value="0" Text="Select Relationship With Nominee ">
                        </asp:ListItem>   
                <asp:ListItem Value="Father">Father</asp:ListItem>
                <asp:ListItem Value="Mother">Mother</asp:ListItem>
                  <asp:ListItem Value="wife">wife</asp:ListItem>
                  <asp:ListItem Value="Husband">Husband</asp:ListItem>
                  <asp:ListItem Value="Others">Others</asp:ListItem>

                </asp:DropDownList>
               
            </td>
     
        </tr> 

           <tr>
            <td>
                <asp:Label ID="lblSmokerORNonSmoker" runat="server" Text="Smoker: " SkinID="label"></asp:Label>
            </td>
            <td  >
                <asp:RadioButton ID="rdbSmokeYes" Text="Yes" runat="server" GroupName="Smoke" SkinID="radio"></asp:RadioButton>
                <asp:RadioButton ID="rdbSmokeNo" Text="No" runat="server" GroupName="Smoke" SkinID="radio"></asp:RadioButton>
                  </td>
                
                
        </tr> 

            <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="Addresss : " SkinID="label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" SkinID="textbox" TextMode="MultiLine" Width="150px" Height="50px" ></asp:TextBox>
                
            </td>
                <td class="auto-style1">
                            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtAddress" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{1,30}$" runat="server" Text="Maximum 30 characters allowed." ForeColor="Red"></asp:RegularExpressionValidator></td>   

            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" Text="Please provide Address" ForeColor="Red"></asp:RequiredFieldValidator>
    
                </td>  
        </tr>

<tr>
            <td>
                <asp:Label ID="lblTelephoneNumber" SkinID="label" runat="server" Text="TelephoneNumber: "></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTelephoneNumber" runat="server"  SkinID="textbox"></asp:TextBox>
                
            </td>
     <td class="auto-style1">
            <asp:RequiredFieldValidator ID="rfvTelephoneNumber" runat="server" ControlToValidate="txtTelephoneNumber" Text="Please provideTelephone Number" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelephoneNumber" Text="Invalid Mobile number" ValidationExpression="[6-9]{1}[0-9]{9}" ForeColor="Red"></asp:RegularExpressionValidator>
           </td>  
        </tr>




           
       
        <tr>
            <td>
                <asp:Label ID="lblPremiumPaymentMethod" SkinID="label" runat="server" Text="PremiumPaymentMethod: "></asp:Label>
            </td>
            <td>
                <asp:DropDownList  ID="ddlPremiumPaymentMethod" SkinId="dropdown" Width="134px" runat="server" Height="19px">
                        <asp:ListItem Enabled="true" Selected="True" Value="0" Text="Select Payment Method ">
                        </asp:ListItem>                       
                            <asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
                            <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
                            <asp:ListItem Value="HalfYearly">HalfYearly</asp:ListItem>
                            <asp:ListItem Value="Annually">Annually</asp:ListItem>
                   
                    </asp:DropDownList>
            </td>
             <td class="auto-style1">
            <asp:RequiredFieldValidator ID="rfvPremiumPaymentMethod" runat="server" ControlToValidate="ddlPremiumPaymentMethod" Text="Please provide Premium Payment Method" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            
        </tr>

            <tr>
            <td>
                <asp:Label ID="lblIDProof" runat="server" Text="ID Proof : " SkinID="label"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:DropDownList  ID="ddlIDProof" runat="server" SkinID="dropdown" Width="134px"  >
                        <asp:ListItem Enabled="true" Selected="True" Value="0" Text=" Select One ID Proof " ></asp:ListItem>    
                              <asp:ListItem Value="Aadhar Card">Aadhar Card</asp:ListItem>          
                              <asp:ListItem Value="PAN">PAN</asp:ListItem>       
                              <asp:ListItem Value="Voter Card">Voter Card</asp:ListItem>       
                              <asp:ListItem Value="Passport">Passport</asp:ListItem>         
                    </asp:DropDownList>
            </td>
                
                <td>
            <asp:RequiredFieldValidator ID="rfvIDProof" runat="server" ControlToValidate="ddlIDProof" Text="Please provide ID Proof " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
           <tr>
                <td>
                <asp:Label ID="lblIDProofNumber" runat="server" Text="IDProofNumber : " SkinID="label"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtIDProofNumber" runat="server"  SkinID="textbox"></asp:TextBox>
                
            </td>

                <td>
            <asp:RequiredFieldValidator ID="rfvIDProofNumber" runat="server" ControlToValidate="txtIDProofNumber" Text="Please provide ID Proof Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>  
               </tr>
                <tr>
            <td>
                <asp:Label ID="lblendo" SkinID="label" runat="server" Text="Endorsement Status: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtendo" runat="server" ReadOnly="true" BackColor="#cccccc" ForeColor="Black"  SkinID="textbox"></asp:TextBox>                
            </td>
        </tr>
           
        
           
           
           <tr>
               <td></td>

           </tr> 
           
        <tr>
            <td style="text-align:right">
                <asp:Button ID="btncancel" runat="server" Text="Back To Search"  SkinID="button" OnClick="btncancel_Click" />
            </td>
         
          <td style="text-align:right" >
            
                 <asp:Button ID="btnUpdate" runat="server" Text="Update"  SkinID="button" OnClick="btnUpdate_Click" ValidationGroup="Group2" />
        </td>
              </tr>
           <tr>
               <td colspan="3" style="text-align:right">
                   <asp:Label ID="Label8" runat="server" Text="* Required" ForeColor="Red"></asp:Label>
               </td>

           </tr>
    </table>
    </div>
</asp:Content>
