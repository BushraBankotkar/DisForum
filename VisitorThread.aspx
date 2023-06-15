<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VisitorThread.aspx.cs" Inherits="VisitorThread" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">
    <div>
    <span class="BlockHeader">
        <span style="font-size:large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search
    </span>
    </span>
        <table>
            <tr>
                <td style="width: 100px">
                    Title :</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="204px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 18px">
                    Author Name :
                </td>
                <td style="height: 18px">
                    <asp:TextBox ID="txtAuthor" runat="server" Width="205px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    From Date :
                </td>
                <td>
                    <asp:TextBox ID="txtFromDate" runat="server" Width="86px"></asp:TextBox>
                    (MM/DD/YY)&nbsp; To Date :
                    <asp:TextBox ID="txtToDate" runat="server" Width="90px"></asp:TextBox>
                    (MM/DD/YY)</td>
            </tr>
        </table>
    
    </div>
        <br />
        <br />
        <center><asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /> &nbsp; &nbsp; <a href="Login.aspx">Go Back</a></center>
        <br />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" Cellpadding="5" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="tid" DataNavigateUrlFormatString="ShowVisitorThread.aspx?tid={0}"
                    DataTextField="title" HeaderText="Title" />
                <asp:HyperLinkField DataNavigateUrlFields="uid" DataNavigateUrlFormatString="ShowNonUsers.aspx?uid={0}"
                    DataTextField="fname" HeaderText="Author" />
                <asp:BoundField DataField="dp" HeaderText="Posted On" />
            </Columns>
            <HeaderStyle BackColor="#404040" ForeColor="White" />
        </asp:GridView>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

