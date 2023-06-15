<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

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
       <td align="right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username : </td>
       <td>
           <asp:TextBox ID="txtUname" runat="server" Width="150px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname"
               Display="Dynamic" ErrorMessage="Username is required!">*</asp:RequiredFieldValidator></td>
       </tr>
       <tr>
       <td align="right">Password: </td>
       <td>
           <asp:TextBox ID="txtAPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAPwd"
               Display="Dynamic" ErrorMessage="Password is required!">*</asp:RequiredFieldValidator></td>
       </tr>
      </table>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="96px" 
              onclick="btnLogin_Click" />
        <br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#CC0066"></asp:Label><br />
        <br />
          <br /><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <p>
        <br />
    </div>
    <br />
    <br />
    <br />
    <br />
   </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

