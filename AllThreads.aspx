<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="AllThreads.aspx.cs" Inherits="AllThreads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="20" 
        AllowSorting="True" Width="100%">
    <Columns>
    <asp:BoundField DataField="tid" HeaderText="tid" SortExpression="tid" Visible="False" />
            <asp:HyperLinkField DataNavigateUrlFields="tid" DataNavigateUrlFormatString="ShowThread.aspx?tid={0}"
                DataTextField="title" HeaderText="Title/Question" 
            SortExpression="title" >
            <HeaderStyle BackColor="Black" ForeColor="White" />
        <ItemStyle Wrap="False" />
        </asp:HyperLinkField>
            <asp:BoundField DataField="dp" HeaderText="Posted On" SortExpression="dp" >
            <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:BoundField>
            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" Visible="False" />
            <asp:HyperLinkField DataNavigateUrlFields="uid" DataNavigateUrlFormatString="displayuser.aspx?uid={0}"
                DataTextField="fname" HeaderText="Posted By" >
            <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:HyperLinkField>
            <asp:BoundField DataField="noreplys" HeaderText="Number of Replies" 
            ReadOnly="True" SortExpression="noreplys" >
        <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:BoundField>
   </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        SelectCommand="GetAllThreads" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>

