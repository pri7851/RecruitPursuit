<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Coach_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

    <style type="text/css">
        .auto-style3 {
            width: 175px;
            height: 133px;
            position: relative;
            top: -11px;
            left: 415px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 120px;
            left: 660px;
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
        .auto-style6 {
            position: absolute;
            top: 120px;
            left: 850px;
            z-index: 1;
            height: 30px;
        }
        .auto-style7 {
            position: absolute;
            top: 230px;
            left: 10px;
        }
        .auto-style8 {
            position: absolute;
            top: 120px;
            left: 905px;
            z-index: 1;
            height: 30px;
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
    </style>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style5">
            <asp:ListItem Value="Rec_FName">First Name</asp:ListItem>
            <asp:ListItem Value="Rec_LName">Last Name</asp:ListItem>
            <asp:ListItem>Location</asp:ListItem>
            <asp:ListItem>Tournament</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style4"></asp:TextBox>
        
        <asp:Button ID="FilterBtn" runat="server" CssClass="auto-style6" OnClick="FilterBtn_Click" Text="Filter" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Date, dbo.Schedule.Time, dbo.Schedule.Pro_id FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="For"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Search by:"></asp:Label>
        <asp:Button ID="Clearbtn" runat="server" CssClass="auto-style8" OnClick="Clearbtn_Click" Text="Clear Filter" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataSourceID="SqlDataSource1" AllowPaging="True"  >
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Pro_id" DataNavigateUrlFormatString="Profile Page.aspx?Pro_Id={0}" Text="View Recruit" />
                <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:MM/DD/YYYY}" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <br class="auto-style7" />
           
</asp:Content>

