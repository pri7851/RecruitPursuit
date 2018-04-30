<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Coach_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

    <style type="text/css">
        .auto-style3 {
            width: 650px;
            height: 265px;
            
            top: 184px;
            left: 412px;
            z-index: 1;
            font-size: medium;
        }
        .auto-style4 {
            
            top: 120px;
            left: 655px;
            z-index: 1;
            height: 20px;
            margin-top: 0;
        }
        .auto-style5 {
            
            top: 120px;
            left: 500px;
            z-index: 1;
            height: 29px;
        }
        .auto-style9 {
            
            top: 125px;
            left: 419px;
            z-index: 1;
            height: 25px;
            width: 80px;
        }
        </style>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Search by:"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DDL1" runat="server" CssClass="auto-style5" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem>Location</asp:ListItem>
            <asp:ListItem>Tournament</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style4" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
        
        &nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="FilterBtn" runat="server" class="btn-primary" OnClick="FilterBtn_Click" Text="Filter" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Clearbtn" runat="server" class="btn-primary" OnClick="Clearbtn_Click" Text="Clear Filter" />
       
        <br />
       
       <br />
       
    <asp:Calendar ID="Calendar1" runat="server" Position="absolute" Visible="False" BackColor="White" BorderColor="#D9230F" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="262px" OnSelectionChanged="Calendar1_SelectionChanged1" ShowGridLines="True" Width="303px">
    <DayHeaderStyle BackColor="#D9230F" Font-Bold="True" Height="1px" ForeColor="White" />
    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
    <OtherMonthDayStyle ForeColor="#CC9966" />
    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
    <SelectorStyle BackColor="#FFCC66" />
    <TitleStyle BackColor="#D9230F" Font-Bold="True" Font-Size="9pt" ForeColor="White" />
    <TodayDayStyle BackColor="Red" ForeColor="White" />
        </asp:Calendar>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName,dbo.profile.Rec_FName+ dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.StartDate, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
                <asp:SessionParameter Name="Rec_FName" SessionField="Name" />
                <asp:SessionParameter Name="Rec_LName" SessionField="Name" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.StartDate, dbo.Schedule.EndDate, dbo.Schedule.Time, dbo.Schedule.Team FROM dbo.Schedule INNER JOIN dbo.profile ON dbo.Schedule.Pro_id = dbo.profile.Pro_Id WHERE (dbo.Schedule.Tournament = @Tournament)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Sunrise Classic" Name="Tournament" />
            </SelectParameters>
        </asp:SqlDataSource>
       <br />
       
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3"  AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderStyle="Groove" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False"  >
             <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Pro_id" DataNavigateUrlFormatString="Profile Page.aspx?Pro_Id={0}" Text="View Recruit" />
                <asp:BoundField DataField="Rec_FName" HeaderText="First Name" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Last Name" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team"  />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="StartDate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="StartDate" />
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

