<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Athletic Information:</p>
<p>
    &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
    <asp:PlaceHolder ID="Placeholder1" runat="server"></asp:PlaceHolder>
    <p>
    <asp:Button ID="btnNew" class="btn btn-primary btn-lg" runat="server" Text="New" OnClick="btnNew_Click" />
    </p>
    
</asp:Content>

