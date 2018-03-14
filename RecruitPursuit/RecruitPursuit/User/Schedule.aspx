<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="User_Schedule" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            width: 217px;
            height: 163px;
            position: absolute;
            top: 52px;
            left: 407px;
            z-index: 1;
            margin-top: 21px;
        }
        .auto-style3 {
            height: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style3">
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString1 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Schedule] WHERE ([Pro_id] = @Pro_id)">
        <SelectParameters>
            <asp:SessionParameter Name="Pro_id" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

