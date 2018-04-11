<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Coach.master" CodeFile="Rank.aspx.cs" Inherits="Coach_Rank" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    Ranking Criteria<br __designer:mapid="0" />
    <br __designer:mapid="1" />
    Position:
    &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Position" DataValueField="Position" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="Filter">
    
    </asp:DropDownList>
    <br __designer:mapid="3" />
    <br __designer:mapid="4" />
    Grad Year:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Rec_HSGradYear" DataValueField="Rec_HSGradYear" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="Filter">
    </asp:DropDownList>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br __designer:mapid="6" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
        <SelectParameters>
            <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_HSGradYear] FROM [profile] WHERE ([Sport_Id] = @Sport_Id)">
        <SelectParameters>
            <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_PrimaryPosition], [Rec_FName], [Rec_LName], [Sport_Id], [Rec_HSGradYear] FROM [profile] WHERE (([Rec_PrimaryPosition] = @Rec_PrimaryPosition) AND ([Sport_Id] = @Sport_Id) AND ([Rec_HSGradYear] = @Rec_HSGradYear))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Rec_PrimaryPosition" PropertyName="SelectedValue" Type="String" />
            <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList3" Name="Rec_HSGradYear" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="PageIndexChanging" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Rec_PrimaryPosition" HeaderText="Rec_PrimaryPosition" SortExpression="Rec_PrimaryPosition" />
            <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
            <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
            <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
            <asp:BoundField DataField="Rec_HSGradYear" HeaderText="Rec_HSGradYear" SortExpression="Rec_HSGradYear" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Rank" CssClass="auto-style2" />
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: relative;
            top: 4px;
            left: 5px;
            z-index: 1;
        }
    </style>
</asp:Content>
