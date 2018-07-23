<%@ Page Title="" Language="C#" MasterPageFile="~/SafeSureMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SafeSure.PL.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PolicyContent" runat="server">
    <div style="margin:20px">
        
        <h1 style="text-align:center" >Our Products and Policies</h1>

             <h2>Term insurance</h2>
Term plans are the most basic type of life insurance.They provide life cover with no savings / profits component. They are the most affordable form of life insurance as premiums are cheaper compared to other life insurance plans.

Online term insurance plans provide pure risk cover, which explains the lower premiums. A fixed sum of money - the sum assured – is paid to the beneficiaries if the policyholder expires over the policy term. If the policyholder survives, there is no pay out.
        <br /><br /><center><asp:Image ID="img2"  runat="server" ImageUrl="~/images/prod1.jpg" Height="136px" Width="277px"  /> </center><br />
         
<h2>Endowment plans</h2>
Endowment plans differ from term plans in one critical aspect i.e. maturity benefit. Unlike term plans which pay out the sum assured, along with profits, only in case of an eventuality over the policy term, endowment planspay out the sum assured under both scenarios – death and survival. However, endowment plans charge higher fees / expenses – reflected in premiums – for paying out sum assured, along with profits, in either scenario – death or maturity. The profits are an outcome of premiums being invested in asset markets – equities and debt.

<br /><br />
        <center><asp:Image  ID="Image4"  runat="server" ImageUrl="~/Images/prod2.jpg" Height="168px" Width="277px" CssClass="auto-style1" /></center>

            <br />
        <h2>Unit linked insurance plans (ULIP)</h2>

ULIPs are a variant of the traditional endowment plan.They pay out the sum assured (or the investment portfolio if its higher) on death/maturity.

ULIPs differ from traditional endowment plans in certain areas. As the name suggests, performance of ULIP is linked to markets. Individuals can choose the allocation for investments in stock/debt markets. The value of the investment portfolio is captured by the NAV (net asset value). To that end, there are many similarities between ULIPs and mutual funds. ULIPs differ in one area, they are a combination of investment and insurance, while mutual funds are a pure investment avenue
<br /><br /><br />
<center><asp:Image ID="Image2"  runat="server" ImageUrl="~/Images/prod3.png" Height="168px" Width="277px"/></center><br /><br />
<h2>Whole life policy</h2>
A whole life insurance policy covers a policyholder over his life. The main feature of a whole life policy is that the validity of the policy is not defined so the individual enjoys the life cover throughout his life. The policyholder pays regular premiums until his death, upon which the corpus is paid out to the family. The policy expiresonly in case of an eventuality as there is no pre-defined policy tenure.
<br /><br /><br />
<center>
<asp:Image ID="Image3"  runat="server" ImageUrl="~/Images/prod7.jpg" Height="168px" Width="277px" CssClass="auto-style1" />
        <br /><br />
    
</center>
        <h2>Money back policy</h2>
A money back policy is a variant of the endowment plan. It gives periodic payments over the policy term. To that end, a portion of the sum assured is paid out at regular intervals. If the policy holder survives the term, he gets the balance sum assured. In case of death over the policy term, the beneficiary gets the full sum assured.
        <br /><br />
        <center>
        <asp:Image ID="Image1"  runat="server" ImageUrl="~/Images/prod6.png" Height="243px" Width="277px" CssClass="auto-style1" />
        </center>
        <br /><br />
    </div>
    <br /><br />
    <br /><br />
</asp:Content>
