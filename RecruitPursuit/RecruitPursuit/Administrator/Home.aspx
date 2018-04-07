<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Administrator_Home" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        Coaches:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Coach_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Coach_Id" HeaderText="Coach_Id" InsertVisible="False" ReadOnly="True" SortExpression="Coach_Id" />
                <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
                <asp:BoundField DataField="C_FName" HeaderText="C_FName" SortExpression="C_FName" />
                <asp:BoundField DataField="C_LName" HeaderText="C_LName" SortExpression="C_LName" />
                <asp:BoundField DataField="C_title" HeaderText="C_title" SortExpression="C_title" />
                <asp:BoundField DataField="Usename" HeaderText="Usename" SortExpression="Usename" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        Recruits:<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Pro_Id" HeaderText="Pro_Id" InsertVisible="False" ReadOnly="True" SortExpression="Pro_Id" />
                <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
                <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
                <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
                <asp:BoundField DataField="Rec_Address" HeaderText="Rec_Address" SortExpression="Rec_Address" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [coach] WHERE ([Sport_Id] = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Pro_Id], [Sport_Id], [Rec_FName], [Rec_LName], [Rec_Address] FROM [profile] WHERE ([Sport_Id] = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>