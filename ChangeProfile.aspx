<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="ChangeProfile.aspx.cs" Inherits="ChangeProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>
        Change Profile</h2>
    <table>
        <tr>
            <td style="width: 100px">
                First Name :
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFname" runat="server" Width="247px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Last Name :
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtLname" runat="server" Width="247px"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="width: 100px">
                Address :
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="58px" 
                    Width="247px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Occupation :
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtOccup" runat="server" Width="247px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Mobile :
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtMobile" runat="server" Width="247px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Photo JPG :
            </td>
            <td style="width: 100px">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="Change Profile" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
</asp:Content>

