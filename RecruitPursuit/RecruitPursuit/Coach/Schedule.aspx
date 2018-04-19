<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Coach_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

    <style type="text/css">
        .auto-style3 {
            width: 650px;
            height: 265px;
            position: absolute;
            top: 184px;
            left: 412px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 120px;
            left: 655px;
            z-index: 1;
            height: 20px;
            margin-top: 0;
        }
        .auto-style5 {
            position: absolute;
            top: 120px;
            left: 500px;
            z-index: 1;
            height: 29px;
        }
        .auto-style9 {
            position: absolute;
            top: 125px;
            left: 420px;
            z-index: 1;
            height: 25px;
            width: 80px;
        }
        .auto-style10 {
            position: absolute;
            top: 125px;
            left: 625px;
            z-index: 1;
        }
        .auto-style11 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: absolute;
            top: 115px;
            left: 845px;
            z-index: 1;
        }
        .auto-style12 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: absolute;
            top: 115px;
            left: 900px;
            z-index: 1;
        }
    </style>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="White" BorderColor="#D9230F" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged1" ShowGridLines="True" Width="220px">
    <DayHeaderStyle BackColor="#D9230F" Font-Bold="True" Height="1px" ForeColor="White" />
    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
    <OtherMonthDayStyle ForeColor="#CC9966" />
    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
    <SelectorStyle BackColor="#FFCC66" />
    <TitleStyle BackColor="#D9230F" Font-Bold="True" Font-Size="9pt" ForeColor="White" />
    <TodayDayStyle BackColor="Red" ForeColor="White" />
        </asp:Calendar>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Date, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="DDL1" runat="server" CssClass="auto-style5" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="Rec_FName">First Name</asp:ListItem>
            <asp:ListItem Value="Rec_LName">Last Name</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem>Location</asp:ListItem>
            <asp:ListItem>Tournament</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style4"></asp:TextBox>
        
        <asp:Button ID="FilterBtn" runat="server" CssClass="auto-style11" OnClick="FilterBtn_Click" Text="Filter" />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="For"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Search by:"></asp:Label>
        <asp:Button ID="Clearbtn" runat="server" CssClass="auto-style12" OnClick="Clearbtn_Click" Text="Clear Filter" />
       
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderStyle="Groove" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False"  >
             <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Pro_id" DataNavigateUrlFormatString="Profile Page.aspx?Pro_Id={0}" Text="View Recruit" />
                <asp:BoundField DataField="Rec_FName" HeaderText="First Name" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Last Name" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team"  />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
             <FooterStyle BackColor="#D9230F" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#D9230F" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#D9230F" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="White" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
             <SortedAscendingCellStyle BackColor="#FDF5AC" />
             <SortedAscendingHeaderStyle BackColor="#4D0000" />
             <SortedDescendingCellStyle BackColor="#FCF6C0" />
             <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

  
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Schedule</li>
    </ol>
</asp:Content>

