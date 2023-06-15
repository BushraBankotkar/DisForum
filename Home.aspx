<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<div id="banner">

</div>
<div>
<h1>Welcome to the Discussion Forum</h1>
Online discussion forums provide a collaborative environment for members to reflect on organization initiatives, express opinions, share thoughts and resources, and engage in community-wide discussions.<br />
</div>
<br />
<div>

<form id="Form1" runat="server">
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
    
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

