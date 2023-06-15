<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">
    <div class="logindiv"> 
      <div class="header">Login</div>
      <p />
      &nbsp;
      <table>
       <tr>
       <td align="right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email Address : </td>
       <td>
           <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
               Display="Dynamic" ErrorMessage="Email address is required!">*</asp:RequiredFieldValidator></td>
       </tr>
       <tr>
       <td align="right">Password: </td>
       <td>
           <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
               Display="Dynamic" ErrorMessage="Password is required!">*</asp:RequiredFieldValidator></td>
       </tr>
      </table>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="96px" 
              onclick="btnLogin_Click" />
        <br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#CC0066"></asp:Label><br />
        <br />
        <a href="ForgotPassword.aspx">I Forgot My Password!</a>  &nbsp;
        <a href="Registration.aspx">Register As New User!</a>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <p>
        <br />
    </div>
    <br />
    <br />
    <br />
   </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

