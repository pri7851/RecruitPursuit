<%@ Page Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="User Login.aspx.cs" Inherits="User_User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">
    <h2 class="display-3">Coach Log In<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString %>" SelectCommand="SELECT [Usename], [Password] FROM [coach]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString %>" SelectCommand="SELECT [Sport_Id], [Sport_Name] FROM [Sport]"></asp:SqlDataSource>
    </h2>
    Select Sport:
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Sport_Name" DataValueField="Sport_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;<p>
            <br />
        
&nbsp;Username:
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <p>
            Password:&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <p>
            
            <br />
            <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="btnLogin_Click" Text="Login" />
           

            
 
        <p>
            
            <asp:Label ID="lbl1" runat="server"></asp:Label>
           

            
 
        </div>
</asp:Content>
