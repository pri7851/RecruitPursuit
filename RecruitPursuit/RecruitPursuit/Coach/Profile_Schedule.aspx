﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile_Schedule.aspx.cs" Inherits="User_Schedule" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 5px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 851px;
            height: 261px;
            position: absolute;
            top: 175px;
            left: 250px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 540px;
            left: 545px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 540px;
            left: 800px;
            z-index: 1;
            width: 48px;
        }
        .auto-style10 {
            left: 435px;
            top: 528px;
            width: 533px;
            height: 267px;
        }
        .auto-style11 {
            position: absolute;
            top: 110px;
            left: 280px;
            z-index: 1;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style1">
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataKeyNames="Sch_ID">
            <Columns>
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:MM/DD/YYYY}" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="Sch_ID" HeaderText="Sch_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sch_ID" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
     
       <asp:Table ID="AddSchTbl" 
            runat="server" 
            Font-Size="X-Large" 
            Font-Names="Palatino"
            BackColor="black"
            BorderColor="black"
            BorderWidth="2"
            ForeColor="Snow"
            CellPadding="5"
            CellSpacing="5" CssClass="auto-style10" Visible="False" style="position: relative"
            >
            <asp:TableHeaderRow 
                runat="server" 
                ForeColor="Snow"
                BackColor="darkred"
                Font-Bold="true"
                >
                <asp:TableHeaderCell>Add Schedule</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            <asp:TableRow 
                ID="TableRow1" 
                runat="server" 
                BackColor="darkred"
                >
                <asp:TableCell>Tournament:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TmentTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow2" 
                runat="server" 
                BackColor="darkred"
                >
                <asp:TableCell>Location:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="LocationTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow3" 
                runat="server" 
                BackColor="darkRed"
                >
                <asp:TableCell>Date: MM/DD/YYYY</asp:TableCell>
                 <asp:TableCell><asp:TextBox ID="DateTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow4" 
                runat="server" 
                BackColor="Darkred"
                >
               <asp:TableCell>Time:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TimeTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow5" 
                runat="server" 
                BackColor="darkRed"
                >
                <asp:TableCell>Team:</asp:TableCell>
                <asp:TableCell>  <asp:TextBox ID="TeamTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow 
                runat="server" 
                BackColor="darkred"
                >
                 <asp:TableCell
                    ColumnSpan="3" 
                    HorizontalAlign="Right"
                    Font-Italic="true"
                    >
                   <asp:Button ID="Insertdatabtn" runat="server" Text="InsertData" OnClick="Insertdatabtn_click"  />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
     

        

    </p>
    <asp:Button ID="ShowAddbtn" runat="server" CssClass="auto-style8" OnClick="Showbtn_Click" Text="Add Schedule Info" />
    <asp:Button ID="Hidebtn" runat="server" CssClass="auto-style9" Text="Hide" OnClick="Hide_Click" Visible="False" />
   
  
        <br />
   
  
        <asp:Label ID="Namelbl" runat="server" CssClass="auto-style11"></asp:Label>
   
  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"   ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Date, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Sch_ID FROM dbo.Schedule INNER JOIN dbo.profile ON dbo.Schedule.Pro_id = dbo.profile.Pro_Id WHERE (dbo.Schedule.Pro_id = @Pro_id)" DeleteCommand="DELETE FROM Schedule WHERE (Sch_ID = @Sch_ID)">
            <DeleteParameters>
                <asp:Parameter Name="Sch_ID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Pro_id" SessionField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </asp:Content>

 