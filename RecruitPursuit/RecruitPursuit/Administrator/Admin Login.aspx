<%@ Page Language="C#"  MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="Administrator_Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="jumbotron">
    <h2 class="display-3">Administration Log In</h2>
         <asp:HyperLink ID="hplBack" runat="server" NavigateUrl="~/Welcome.aspx">Back</asp:HyperLink>
  <hr class="my-4">
   
            <br />
Username:
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <br />
            <br />
Password:            <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged" TextMode="Password" ></asp:TextBox>
        
        <br />
         <br />
        <br />
         <asp:Button ID="Button1"  class="btn btn-primary btn-lg" runat="server" Text="Log In" OnClick="Button1_Click" />
        <br />
        <br />
        <br />

        <asp:Label ID="lbl1" runat="server"></asp:Label>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Usename], [Password] FROM [coach]"></asp:SqlDataSource>
         </div>
</asp:Content>
