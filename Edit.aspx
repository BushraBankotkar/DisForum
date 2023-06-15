<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center ><h1>Edit Threads</h1></center>

    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" AllowPaging="True" Width="100%">
        <Columns>
            <asp:BoundField DataField="tid" HeaderText="ID" SortExpression="tid" >
            <HeaderStyle BackColor="black" ForeColor="white"/>
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="tid" DataNavigateUrlFormatString="EditThread.aspx?tid={0}"
                DataTextField="title" HeaderText="Title" >
            <HeaderStyle BackColor="black" ForeColor="white"/>
            </asp:HyperLinkField>
            <asp:BoundField DataField="catname" HeaderText="Category" 
                SortExpression="catname" >
            <HeaderStyle BackColor="black" ForeColor="white" />
            </asp:BoundField>
            <asp:BoundField DataField="dp" HeaderText="Posted On" SortExpression="dp" >
            <HeaderStyle BackColor="black" ForeColor="white" />
            </asp:BoundField>
            <asp:BoundField DataField="noreplys" HeaderText="Replies" ReadOnly="True" 
                SortExpression="noreplys" >
            <HeaderStyle BackColor="black" ForeColor="white"/>
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
        SelectCommand="MyThreads" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

