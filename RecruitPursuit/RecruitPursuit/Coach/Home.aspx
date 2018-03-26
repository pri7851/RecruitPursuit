<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="lblSession" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Log Out" />
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT profile.Pro_Id, profile.Sport_Id, profile.Rec_FName, profile.Rec_LName, profile.Rec_Email FROM Sport INNER JOIN profile ON Sport.Sport_Id = profile.Sport_Id WHERE (profile.Sport_Id = @Session)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="Session" SessionField="SportId" />
            </SelectParameters>
             
         </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
            <Columns>

                <asp:HyperLinkField NavigateUrl="~/User/Profile Page.aspx" Text="View Recruit" DataNavigateUrlFields="Pro_id" DataNavigateUrlFormatString="Profile page.aspx?Pro_Id={0}" />

                <asp:BoundField DataField="Pro_Id" HeaderText="Pro_Id" ReadOnly="True" SortExpression="Pro_Id" />
                <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
                <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Rec_Email" HeaderText="Rec_Email" SortExpression="Rec_Email" />

            </Columns>
        </asp:GridView>
        </asp:Content>

