<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Coach.master" CodeFile="Rank.aspx.cs" Inherits="Coach_Rank" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    Ranking Criteria<br __designer:mapid="0" />
    <br __designer:mapid="1" />
    Position:
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Position" DataValueField="Position">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    <br __designer:mapid="3" />
    <br __designer:mapid="4" />
    Grad Year:
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Rec_HSGradYear" DataValueField="Rec_HSGradYear">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br __designer:mapid="6" />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_HSGPA], [Rec_SAT_Tot], [Rec_ACT] FROM [profile]"></asp:SqlDataSource>
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position], [Rec_HSGradYear], [Sport_Id], [Rec_FName], [Rec_LName] FROM [profile] WHERE (([Position] = @Position) AND ([Rec_HSGradYear] = @Rec_HSGradYear) AND ([Sport_Id] = @Sport_Id))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Position" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Rec_HSGradYear" PropertyName="SelectedValue" Type="String" />
            <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Rank" CssClass="auto-style2" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSource3" Visible="False" BorderColor="Black" BorderStyle="Groove">
        <Columns>
            <asp:BoundField DataField="Rec_FName" HeaderText="First Name" SortExpression="Rec_FName" />
            <asp:BoundField DataField="Rec_LName" HeaderText="Last Name" SortExpression="Rec_LName" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Rec_HSGradYear" HeaderText="HS GradYear" SortExpression="Rec_HSGradYear" />
            <asp:BoundField DataField="Sport_Id" HeaderText="Sport Id" SortExpression="Sport_Id" />
        </Columns>
        <HeaderStyle BackColor="#D9230F" ForeColor="White" />
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            margin-top: 0px;
            width: 355px;
            height: 133px;
            position: relative;
            top: 6px;
            left: 5px;
            z-index: 1;
        }
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
