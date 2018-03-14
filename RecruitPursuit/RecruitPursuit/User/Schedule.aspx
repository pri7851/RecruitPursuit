<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="User_Schedule" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            height: 240px;
        }
        .auto-style4 {
            width: 485px;
            height: 227px;
            position: absolute;
            top: 82px;
            left: 422px;
            z-index: 1;
            margin-top: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style3">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" DataKeyNames="Sch_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="Sch_ID" HeaderText="Sch_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sch_ID" />
                <asp:BoundField DataField="Pro_id" HeaderText="Pro_id" SortExpression="Pro_id" />
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" DataFormatString="{0:hh:mm tt}" SortExpression ="Time" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
            </Columns>
        </asp:GridView>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString1 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Schedule] WHERE ([Pro_id] = @Pro_id)" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter Name="Pro_id" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

