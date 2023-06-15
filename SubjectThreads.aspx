<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="SubjectThreads.aspx.cs" Inherits="SubjectThreads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        Threads</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        EmptyDataText="No threads found in this subject!" Width="100%" 
        AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="tid" HeaderText="tid" SortExpression="tid" Visible="False" />
            <asp:HyperLinkField DataNavigateUrlFields="tid" DataNavigateUrlFormatString="ShowThread.aspx?tid={0}"
                DataTextField="title" HeaderText="Title/Question" SortExpression="title" >
            <HeaderStyle BackColor="Black" ForeColor="White" />
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
        SelectCommand="GetSubjectThreads" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="catcode" QueryStringField="catcode" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <a href="Default.aspx">Go back</a>
    </asp:Content>

