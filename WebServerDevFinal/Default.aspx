<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebServerDevFinal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Address Book List</h1>
        <p class="lead">View your contacts below</p>
        <p><a href="/Add.aspx" class="btn btn-primary btn-lg">Click Here to Add more contacts</a></p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebServerDevFinalDBConnectionString2 %>" SelectCommand="SELECT c.FirstName, c.LastName, c.Address, c.Email, c.Phone, cc.CategoryName as 'Contact Type' FROM [Contacts] c JOIN [ContactCategory] cc on cc.ContactCategoryID = c.ContactCategory" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Contacts] WHERE [ID] = @original_ID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [Email] = @original_Email AND [Phone] = @original_Phone" InsertCommand="INSERT INTO [Contacts] ([FirstName], [LastName], [Address], [Email], [Phone]) VALUES (@FirstName, @LastName, @Address, @Email, @Phone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Contacts] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [Email] = @Email, [Phone] = @Phone WHERE [ID] = @original_ID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [Email] = @original_Email AND [Phone] = @original_Phone">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="219px" Width="1121px">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Contact Type" HeaderText="Contact Type" SortExpression="Contact Type" />
            </Columns>
        </asp:GridView>
    </div>

    

</asp:Content>
