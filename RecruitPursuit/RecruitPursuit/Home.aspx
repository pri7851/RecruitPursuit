<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Pro_Id" DataNavigateUrlFormatString="profile page.aspx?Pro_id={0}" Text="view" NavigateUrl="~/Profile Page.aspx" />
                <asp:BoundField DataField="Pro_Id" HeaderText="Pro_id" ReadOnly="True" />
                <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
                <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Rec_Email" HeaderText="Rec_Email" SortExpression="Rec_Email" />
                <asp:BoundField DataField="Rec_Username" HeaderText="Rec_Username" SortExpression="Rec_Username" />

                <asp:BoundField DataField="Rec_password" HeaderText="Rec_password" SortExpression="Rec_password" />
                <asp:CommandField ShowDeleteButton="True" />

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString %>" SelectCommand="SELECT profile.* FROM profile" DeleteCommand="DELETE FROM profile WHERE (Pro_Id = @pro_id)">
             
            <DeleteParameters>
                <asp:Parameter Name="pro_id" />
            </DeleteParameters>
            
         </asp:SqlDataSource>
    </p>
</asp:Content>

