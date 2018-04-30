<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Rank.aspx.cs" Inherits="Coach_Ranktest2" %>

<script runat="server">

   
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 407px;
        }
        .auto-style2 {
            width: 850px;
            height: 190px;
            position: absolute;
            top: 288px;
            left: 268px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 350px;
            left: 137px;
            z-index: 1;
            height: 19px;
            width: 99px;
            right: 1326px;
        }
        .auto-style4 {
            position: absolute;
            top: 413px;
            left: 134px;
            z-index: 1;
            right: 1333px;
            margin-top: 0px;
        }
        .auto-style6 {
            position: absolute;
            top: 351px;
            left: 45px;
            z-index: 1;
            height: 28px;
        }
        .auto-style7 {
            position: absolute;
            top: 410px;
            left: 51px;
            z-index: 1;
            position: absolute;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Underline="True" Text="Grad Year"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Underline="True" Text="Grad Year"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="position: absolute; z-index: 1; left: 55px; top: 305px; font-weight: 700; text-decoration: underline" Text="Filter By:"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 516px; top: 220px; position: absolute; font-weight: 700; text-decoration: underline" Text="Sort By:"></asp:Label>
        <asp:DropDownList ID="ddlSort" runat="server" style="position: absolute; top: 219px; left: 592px;" AutoPostBack="True" OnTextChanged="ddlSort_TextChanged">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem Value="PostDate">Most Recent</asp:ListItem>
            <asp:ListItem Value="Rec_HSGPA">GPA</asp:ListItem>
            <asp:ListItem Value="Rec_SAT_Tot">SAT</asp:ListItem>
            <asp:ListItem Value="Rec_ACT">ACT</asp:ListItem>
        </asp:DropDownList>
    </p>
    
    <p class="auto-style1">
        <br />
        <asp:DropDownList ID="ddlGradyear" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SDddlGradDate" DataTextField="Rec_HSGradYear" DataValueField="Rec_HSGradYear" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlGradyear_SelectedIndexChanged">
            <asp:ListItem Value="%">ALL</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlPosition" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CssClass="auto-style4" DataSourceID="SDddlPosition" DataTextField="Rec_PrimaryPosition" DataValueField="Rec_PrimaryPosition" OnSelectedIndexChanged="ddlPosition_SelectedIndexChanged">
            <asp:ListItem Value="%">All Positions</asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SDgv1">
            <Columns>
                <asp:BoundField DataField="Rec_FName" HeaderText="First Name" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Last Name" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Rec_PrimaryPosition" HeaderText="Position" SortExpression="Rec_PrimaryPosition" />
                <asp:BoundField DataField="Rec_HSGradYear" HeaderText="Grad Year" SortExpression="Rec_HSGradYear" />
                <asp:BoundField DataField="Rec_HSGPA" HeaderText="GPA" SortExpression="Rec_HSGPA" />
                <asp:BoundField DataField="Rec_SAT_Tot" HeaderText="SAT Score" SortExpression="Rec_SAT_Tot" />
                <asp:BoundField DataField="Rec_ACT" HeaderText="ACT Score" SortExpression="Rec_ACT" />
                <asp:BoundField DataField="PostDate" HeaderText="Date Added" SortExpression="PostDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDddlGradDate" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Rec_HSGradYear FROM dbo.profile WHERE ([Sport_Id] = @Sport_Id) group by [Rec_HSGradYear]">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Overline="False" Font-Underline="True" Text="Position"></asp:Label>
        <asp:SqlDataSource ID="SDddlPosition" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_PrimaryPosition] FROM [profile] WHERE ([Sport_Id] = @Sport_Id) group by [Rec_PrimaryPosition]">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDgv1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Rec_FName, Rec_LName, Rec_HSGradYear, Rec_HSGPA, Rec_PrimaryPosition, Rec_ACT, Rec_SAT_Tot, PostDate FROM dbo.profile WHERE (Sport_Id = @Sport_Id)" 
            FilterExpression="[Rec_HSGradYear] like '{0}%' and [Rec_PrimaryPosition] like '{1}'"> 
            <FilterParameters>
            <asp:ControlParameter ControlID="ddlGradYear" Name="Gradyear" 
                      PropertyName="SelectedValue" 
                      Type="String" />
             <asp:ControlParameter ControlID="ddlPosition" Name="Position" 
                      PropertyName="SelectedValue" 
                      Type="String" />
</FilterParameters>
            
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Underline="True" Text="Grad Year"></asp:Label>
        <asp:SqlDataSource ID="SDddlGPA" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_HSGPA] FROM [profile] WHERE ([Sport_Id] = @Sport_Id) ORDER BY [Rec_HSGPA] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDddlSAT" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_SAT_Tot] FROM [profile] WHERE ([Sport_Id] = @Sport_Id) ORDER BY [Rec_SAT_Tot] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDddlACT" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_ACT] FROM [profile] WHERE ([Sport_Id] = @Sport_Id) ORDER BY [Rec_ACT] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Rank</li>
    </ol>
</asp:Content>

