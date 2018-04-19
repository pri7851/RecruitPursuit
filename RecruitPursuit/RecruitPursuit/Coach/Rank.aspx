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
            top: 245px;
            left: 215px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 195px;
            left: 450px;
            z-index: 1;
            height: 19px;
            width: 87px;
            right: 732px;
        }
        .auto-style4 {
            position: absolute;
            top: 195px;
            left: 675px;
            z-index: 1;
            right: 491px;
            margin-top: 0px;
        }
        .auto-style5 {
            position: absolute;
            top: 120px;
            left: 585px;
            z-index: 1;
            width: 65px;
            height: 25px;
            right: 619px;
        }
        .auto-style6 {
            position: absolute;
            top: 165px;
            left: 460px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 165px;
            left: 690px;
            z-index: 1;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        <br />
        <asp:DropDownList ID="ddlGradyear" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SDddlGradDate" DataTextField="Rec_HSGradYear" DataValueField="Rec_HSGradYear" AppendDataBoundItems="True">
            <asp:ListItem Value="%">ALL</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlPosition" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CssClass="auto-style4" DataSourceID="SDddlPosition" DataTextField="Rec_PrimaryPosition" DataValueField="Rec_PrimaryPosition">
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
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDddlGradDate" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Rec_HSGradYear FROM dbo.profile WHERE ([Sport_Id] = @Sport_Id) group by [Rec_HSGradYear]">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Overline="False" Font-Underline="True" Text="Position"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Size="Large" Text="FILTER:"></asp:Label>
        <asp:SqlDataSource ID="SDddlPosition" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_PrimaryPosition] FROM [profile] WHERE ([Sport_Id] = @Sport_Id) group by [Rec_PrimaryPosition]">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDgv1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Rec_FName, Rec_LName, Rec_HSGradYear, Rec_HSGPA, Rec_PrimaryPosition, Rec_ACT, Rec_SAT_Tot FROM dbo.profile WHERE (Sport_Id = @Sport_Id)" 
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
    </p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Rank</li>
    </ol>
</asp:Content>

