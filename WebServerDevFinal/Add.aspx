<%@ Page Title="Add Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.vb" Inherits="WebServerDevFinal.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add Contact</h2>
    <asp:Label ID="lblFirst" runat="server" Text="First Name: "></asp:Label>
    <asp:TextBox ID="txtFirst" runat="server" Width="162px"></asp:TextBox>
    <br/>
    <asp:Label ID="lblLast" runat="server" Text="Last Name: "></asp:Label>
    <asp:TextBox ID="txtLast" runat="server" Width="163px"></asp:TextBox>
    <br/>
    <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" Width="297px"></asp:TextBox>
    <br/>
    <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="236px"></asp:TextBox>
    <br/>
    <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" Width="153px"></asp:TextBox>
    <br/>
    <asp:Label ID="lblCategory" runat="server" Text="Contact Category: "></asp:Label>
    <asp:DropDownList ID="dropCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName"/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebServerDevFinalDBConnectionString2 %>" SelectCommand="SELECT [CategoryName] FROM [ContactCategory]"></asp:SqlDataSource>
    
    <br/>
    <br/>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    <br/>
    <br/>
    <br/>
    <p><a href="/Default.aspx" class="btn btn-primary btn-sm">Click Here to View Contact List</a></p>
</asp:Content>
