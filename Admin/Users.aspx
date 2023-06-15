<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" CodeFile="Users.aspx.cs" Inherits="Default" %>

<asp:Content ContentPlaceHolderID="Head" Runat="Server"></asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">


    <div class="Menu">
    <span style="color:white; font-size:large; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Users</span>
    </div>
    <form runat="server">
    <center>
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="572px" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" 
        AllowPaging="True">
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="fname" HeaderText="First Name" 
                SortExpression="fname" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="lname" HeaderText="Last Name" 
                SortExpression="lname" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" >
            <FooterStyle BackColor="#CC66FF" />
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="country" HeaderText="Country" 
                SortExpression="country" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="occupation" HeaderText="Occupation" 
                SortExpression="occupation" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mobile" HeaderText="Mobile" 
                SortExpression="mobile" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="dj" HeaderText="Date of Joining" 
                SortExpression="dj" >
            <HeaderStyle BackColor="#CC66FF" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Fields>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        
            SelectCommand="SELECT [fname], [lname], [gender], [address], [country], [occupation], [mobile], [email], [dj] FROM [users] ORDER BY [uid] DESC"></asp:SqlDataSource>
    </center>
    </form>
    </asp:Content>

<asp:Content ContentPlaceHolderID="Footer" Runat="Server"></asp:Content>

<asp:Content ContentPlaceHolderID="AfterBody" Runat="Server"></asp:Content>