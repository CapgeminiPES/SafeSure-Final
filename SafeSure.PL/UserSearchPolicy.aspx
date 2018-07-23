<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="UserSearchPolicy.aspx.cs" Inherits="SafeSure.PL.UserSearchPolicy" Theme="PolicyThemes" %>
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
                           <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/img19.png" Height="114px" Width="158px" CssClass="auto-style1" /></center>
               </td>
           </tr>
           <tr>
               <td>

               </td>
           </tr>
           <tr>
               <td colspan="6" style="font-size:30px;background-color: white; color: #2454a0;;font-family:Aharoni" > 
                   <center><asp:Label ID="lblTitle" runat="server" Text="SEARCH POLICY DETAILS" SkinID="Title"></asp:Label></center>
               </td>
           </tr>
           <tr>
               <td>
                   <br />
               </td>
           </tr>
            
        <tr>
            <td>
                <asp:Label ID="lblSearchPolicy" Text="Search Policy" runat="server" SkinID="label"></asp:Label>
            </td>
            <td>
                
<asp:DropDownList ID="ddlSearchPolicy" AutoPostBack="true" SkinId="dropdown" runat="server" OnSelectedIndexChanged="ddlSearchPolicy_SelectedIndexChanged">
    <asp:ListItem >Policy Number</asp:ListItem>
    <asp:ListItem>Customer ID</asp:ListItem>
    <asp:ListItem>DOB</asp:ListItem>
    <asp:ListItem Selected="True">Select search method</asp:ListItem>
</asp:DropDownList>
             
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEnterPolicyNumber" runat="server" Text="EnterPolicyNumber: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEnterPolicyNumber" runat="server" SkinID="textbox"></asp:TextBox>
                  </td>
          </tr>

         <tr>
            <td>
                <asp:Label ID="lblEnterCustomerID" runat="server" Text="EnterCustomerID: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEnterCustomerID" runat="server" SkinID="textbox"/>
                    </td>
            
           
        </tr>
            <tr>
            <td>
                <asp:Label ID="lblEnterCustomerName" runat="server" Text="EnterCustomerName: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEnterCustomerName" runat="server" SkinID="textbox"></asp:TextBox>
                </td>
               
        </tr>
    
        <tr>
            <td>
                <asp:Label ID="lblDOB" runat="server" Text="EnterDateOfBirth: " SkinID="label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" SkinID="textbox"></asp:TextBox> 
                </td>
           
        </tr>
        <tr>
            <td>

            </td>
        </tr>

        <tr>
            <td>

            </td>
            <td colspan="3">
             
                <asp:Button ID="btnView" runat="server" Text="Search Policy"  SkinId="button" OnClick="btnView_Click"/>
               
            </td>
       
       </tr>      
              
              
           
    </table>
        <br /><br /><br />

        <center>
            <div id="gvSearch" style="width: 600px; overflow: scroll">
              <asp:GridView ID="gvSearchResult" runat="server" OnSelectedIndexChanged="gdView_SelectedIndexChanged" >
                  <Columns>
                      <asp:CommandField ButtonType="Button" HeaderText="View" ShowHeader="True" ShowSelectButton="True" />
                  </Columns>
              </asp:GridView> 
                </div>
        </center>
        <br />
        <br />

    </center>

</asp:Content>
