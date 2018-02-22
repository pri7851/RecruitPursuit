<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="Administrator_Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="jumbotron">
    <h2 class="display-3">Administration Log In</h2>
  <hr class="my-4">
   
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;C:\Users\Justin\Documents\Justin's Backup\School\Senior Project\Database\recruitpursuit.mdf&quot;;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Usename], [Password] FROM [coach]"></asp:SqlDataSource>
   
            <br />
Username:
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <br />
            <br />
Password:            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        
        <br />
        <br />
         <asp:Button ID="Button1"  class="btn btn-primary btn-lg" runat="server" Text="Log In" OnClick="Button1_Click" />
        <br />
        <br />
        <br />

        <asp:Label ID="lbl1" runat="server"></asp:Label>
         </div>
</asp:Content>
