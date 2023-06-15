<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="EditThread.aspx.cs" Inherits="EditThread" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center><h1>
     Edit Thread</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="tid" DataSourceID="SqlDataSource1" DefaultMode="Edit" width="80%">
          <EditItemTemplate>
            Title <br />
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' Width="80%">
            </asp:TextBox>
            <br /> 
            Text <br />
            <asp:TextBox ID="textTextBox" runat="server" Text='<%# Bind("text") %>' TextMode ="MultiLine" Rows="15" Width="80%">
            </asp:TextBox>
            <p />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update">
            </asp:Button>
            <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:Button>
        </EditItemTemplate>
        <ItemTemplate>
            Title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' Width="80%"></asp:Label><br />
            text:
            <asp:Label ID="textLabel" runat="server" Text='<%# Bind("text") %>' Width="80%"></asp:Label><br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit">
            </asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
        DeleteCommand="DELETE FROM [Threads] WHERE [tid] = @tid" 
        InsertCommand="INSERT INTO [Threads] ([tid], [title], [text]) VALUES (@tid, @title, @text)"
        SelectCommand="SELECT [tid], [title], [text] FROM [Threads] WHERE ([tid] = @tid)"
        UpdateCommand="UPDATE [Threads] SET [title] = @title, [text] = @text WHERE [tid] = @tid">
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="text" Type="String" />
            <asp:Parameter Name="tid" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="tid" QueryStringField="tid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>
</asp:Content>

