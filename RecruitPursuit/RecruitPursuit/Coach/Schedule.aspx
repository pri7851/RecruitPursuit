<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Coach_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style3 {
            width: 650px;
            height: 265px;
            position: absolute;
            top: 329px;
            left: 407px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 224px;
            left: 656px;
            z-index: 1;
            height: 20px;
            margin-top: 0;
        }
        .auto-style5 {
            position: absolute;
            top: 223px;
            left: 505px;
            z-index: 1;
            height: 29px;
        }
        .auto-style9 {
            position: absolute;
            top: 223px;
            left: 427px;
            z-index: 1;
            height: 25px;
            width: 80px;
        }
        .auto-style10 {
            position: absolute;
            top: 225px;
            left: 623px;
            z-index: 1;
        }
        .auto-style11 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: absolute;
            top: 215px;
            left: 870px;
            z-index: 1;
        }
        .auto-style12 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: absolute;
            top: 213px;
            left: 926px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 287px;
            left: 656px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 204px;
            left: 844px;
            z-index: 1;
            height: 14px;
            width: 16px;
            margin-top: 15px;
        }
        .auto-style20 {
            position: absolute;
            top: 294px;
            left: 851px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 198px;
            left: 707px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 259px;
            left: 698px;
            z-index: 1;
        }
    </style>
   
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <asp:Label ID="SDlbl" runat="server" CssClass="auto-style21" Text="Enter Start Date:" Visible="False"></asp:Label>

    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    
    
    <asp:Label ID="EDlbl" runat="server" CssClass="auto-style22" Text="Enter End Date:" Visible="False"></asp:Label>

    
    
    <asp:ImageButton ID="imgPopup" ImageUrl="~/calendar.JPG" ImageAlign="Bottom"
    runat="server" CssClass="auto-style19" />

    <asp:ImageButton ID="imgPopup2" ImageUrl="~/calendar.JPG" ImageAlign="Bottom"
    runat="server" CssClass="auto-style20" Visible="False"  />


      
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.profile.Rec_FName + dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id, dbo.Schedule.StartDate, dbo.Schedule.EndDate FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.profile.Rec_FName + dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id, dbo.Schedule.StartDate, dbo.Schedule.EndDate FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id  WHERE (Rec_FName = @Rec_FName) AND (Sport_Id = @Sport_Id) OR (Rec_LName = @Rec_LName)">
            <SelectParameters>
                <asp:SessionParameter Name="Rec_FName" SessionField="Name" />
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
                <asp:SessionParameter Name="Rec_LName" SessionField="Name" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.profile.Rec_FName + dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id, dbo.Schedule.StartDate, dbo.Schedule.EndDate FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (Rec_FName = @Rec_FName) AND (Rec_LName = @Rec_LName) AND (Sport_Id = @Sport_Id)
">
        <SelectParameters>
            <asp:SessionParameter Name="Rec_FName" SessionField="First_Name" />
            <asp:SessionParameter Name="Rec_LName" SessionField="Last_Name" />
            <asp:SessionParameter DefaultValue="" Name="Sport_Id" SessionField="Sport_Id" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.profile.Rec_FName + dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id, dbo.Schedule.StartDate, dbo.Schedule.EndDate FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id) AND (dbo.Schedule.StartDate BETWEEN @StartDate AND @EndDate)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
                <asp:ControlParameter ControlID="txtSearch" Name="StartDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="EndDate" PropertyName="Text" />
            </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="DDL1" runat="server" CssClass="auto-style5" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem>Location</asp:ListItem>
            <asp:ListItem>Tournament</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style4" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtSearch" />
       
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="txtSearch_TextChanged" CssClass="auto-style14" Visible="False"></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" PopupButtonID="imgPopup2" runat="server" TargetControlID="TextBox1" />
       
    <asp:Button ID="FilterBtn" runat="server" CssClass="auto-style11" OnClick="FilterBtn_Click" Text="Filter" />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="For"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Search by:"></asp:Label>
        <asp:Button ID="Clearbtn" runat="server" CssClass="auto-style12" OnClick="Clearbtn_Click" Text="Clear Filter" />
       
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3"  AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderStyle="Groove" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   >
             <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Pro_id" DataNavigateUrlFormatString="Profile Page.aspx?Pro_Id={0}" Text="View Recruit" />
                <asp:BoundField DataField="Rec_FName" HeaderText="First Name" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Last Name" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team"  />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" DataFormatString="{0:MM/dd/yyyy}" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" DataFormatString="{0:MM/dd/yyyy}" />
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

