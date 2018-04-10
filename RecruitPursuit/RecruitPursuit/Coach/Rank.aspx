<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Coach.master" CodeFile="Rank.aspx.cs" Inherits="Coach_Rank" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
    <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
</p>
    <p>
        <a href="Home.aspx.cs">Home.aspx.cs<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </a></p>
    
</asp:Content>