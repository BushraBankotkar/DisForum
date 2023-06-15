<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="AddThread.aspx.cs" Inherits="AddThread" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <h2>Add Thread</h2>
    <p>
        <table>
            <tr>
                <td>
                    Select Subject :
                </td>
                <td>
                    <asp:DropDownList ID="ddlSubjects" runat="server" DataSourceID="SqlDataSource1" DataTextField="catname"
                        DataValueField="catcode" Width="320px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:30px"></tr>
            <tr>
                <td valign="top">
                    Enter Title/Question :
                </td>
                <td>
                    <asp:TextBox ID="titleText" runat="server"
                        TextMode="MultiLine" Width="396px" Columns="30" Rows="5" placeholder="Enter Title/Question"></asp:TextBox></td>
            </tr>
            <tr>
                <td valign="top">
                    Enter Text :
                </td>
                <td>
                    <asp:TextBox ID="txtText" runat="server" Columns="50" Rows="10" 
                        TextMode="MultiLine" Width="396px" placeholder="Enter Text"></asp:TextBox></td>
            </tr>
        </table>
    </p>
    <p align="center">
        <asp:Button ID="btnAdd" runat="server" Text="Add Thread" onclick="btnAdd_Click" 
            style="height: 26px"/>&nbsp;</p>
    <p>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>&nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
            
            SelectCommand="SELECT [catcode], [catname] FROM [Category] ORDER BY [catname]"></asp:SqlDataSource>
        &nbsp;</p>
        </center>
</asp:Content>

