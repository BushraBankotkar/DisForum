<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h2>
        Search Threads<br />
    </h2>
    
    <p>
        Thread Text :
        <asp:TextBox ID="txtText" runat="server"></asp:TextBox>&nbsp;</p>

        <p>Author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></p>
    <p>
        From Date &nbsp; : 
        <asp:TextBox ID="txtFromDate" runat="server" Width="67px"></asp:TextBox>
        (mm/dd/yy) To Date :
        <asp:TextBox ID="txtToDate" runat="server" Width="79px"></asp:TextBox>&nbsp;
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /></p>
    <p>
        &nbsp;</p>
        </center>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="5"
            Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="tid" DataNavigateUrlFormatString="ShowThread.aspx?tid={0}"
                    DataTextField="title" HeaderText="Thread" >
                <HeaderStyle BackColor="#0C9234" />
                </asp:HyperLinkField>
                <asp:HyperLinkField DataNavigateUrlFields="uid" DataNavigateUrlFormatString="displayuser.aspx?uid={0}"
                    DataTextField="fname" HeaderText="Posted By" >
                <HeaderStyle BackColor="#0C9234" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="dp" HeaderText="Posted On" >
                <HeaderStyle BackColor="#0C9234" />
                </asp:BoundField>
                <asp:BoundField DataField="catname" HeaderText="Category" >
                <HeaderStyle BackColor="#0C9234" />
                </asp:BoundField>
                <asp:BoundField DataField="noreplys" HeaderText="No of Replies" >
                <HeaderStyle BackColor="#0C9234" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        &nbsp;</p>
</asp:Content>

