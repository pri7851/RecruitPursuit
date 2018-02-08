<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User Login.aspx.cs" Inherits="User_User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">
    <h2 class="display-3">Log In</h2>
  <hr class="my-4">
  <p>
           Select Sport:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Softball</asp:ListItem>
                <asp:ListItem>Baseball</asp:ListItem>
            </asp:DropDownList>
            </p>
        <p>
            <br />
        
&nbsp;Username:
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <p>
            <br />
            &nbsp;Password:&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <p>
            
            <br />
            <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="btnLogin_Click" Text="Login" />
           

            
 
        <p>
            
            <asp:Label ID="lbl1" runat="server"></asp:Label>
           

            
 
        </div>
</asp:Content>
