<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Search Results.aspx.cs" Inherits="Coach_Schedule_Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Search Results</li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" Text="Search Results"></asp:Label>
    </p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Pro_id" DataNavigateUrlFormatString="Profile page.aspx?Pro_Id={0}" NavigateUrl="~/Coach/Profile Page.aspx" Text="View Recruit" />
            <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
            <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
        </Columns>
         <HeaderStyle BackColor="#D9230F" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Rec_FName, Rec_LName, Pro_Id, Sport_Id FROM dbo.profile WHERE (Rec_FName = @Rec_FName) AND (Sport_Id = @Sport_Id) OR (Rec_LName = @Rec_LName)">
        <SelectParameters>
            <asp:SessionParameter Name="Rec_FName" SessionField="Name" />
            <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            <asp:SessionParameter Name="Rec_LName" SessionField="Name" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Rec_FName, Rec_LName, Pro_Id, Sport_Id FROM dbo.profile WHERE (Rec_FName = @Rec_FName) AND (Rec_LName = @Rec_LName) AND (Sport_Id = @Sport_Id)">
        <SelectParameters>
            <asp:SessionParameter Name="Rec_FName" SessionField="First_Name" Type="String" />
            <asp:SessionParameter Name="Rec_LName" SessionField="Last_Name" Type="String" />
            <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

