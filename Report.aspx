<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h2>Report</h2>

State your reason: 
    <asp:TextBox ID="reason" runat="server" Width="300px" TextMode="MultiLine" Columns="4" Rows="5"></asp:TextBox>
    <br />
    <br />
    Comments:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="comment" runat="server" TextMode="MultiLine" 
        Width="300px" Columns="4" Rows="5" ></asp:TextBox>
    <br />
    <br />
    <br />
    &nbsp;<asp:Button ID="ReportBtn" runat="server" Text="Submit" 
        onclick="ReportBtn_Click"/>
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
     <asp:Label runat="server" ID="tid" text='<%# Eval("tid")%>' Visible="false"></asp:Label>
    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" SelectCommand="SELECT tid, title, text, uid, dp, catcode FROM Threads
WHERE tid=@tid">
        <SelectParameters>
            <asp:QueryStringParameter Name="tid" QueryStringField="tid" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>
</asp:Content>

