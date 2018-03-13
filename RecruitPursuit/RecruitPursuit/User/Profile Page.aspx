<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:TextBox ID="TxtNotes" runat="server"></asp:TextBox>
    <asp:Button ID="AddNotes" runat="server" OnClick="Addnotes_Click" Text="Add Note" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            Pro_Id:
            <asp:Label ID="Pro_IdLabel1" runat="server" Text='<%# Eval("Pro_Id") %>' />
            <br />
            Sport_Id:
            <asp:TextBox ID="Sport_IdTextBox" runat="server" Text='<%# Bind("Sport_Id") %>' />
            <br />
            Rec_FName:
            <asp:TextBox ID="Rec_FNameTextBox" runat="server" Text='<%# Bind("Rec_FName") %>' />
            <br />
            Rec_LName:
            <asp:TextBox ID="Rec_LNameTextBox" runat="server" Text='<%# Bind("Rec_LName") %>' />
            <br />
            Rec_Email:
            <asp:TextBox ID="Rec_EmailTextBox" runat="server" Text='<%# Bind("Rec_Email") %>' />
            <br />
            Rec_Username:
            <asp:TextBox ID="Rec_UsernameTextBox" runat="server" Text='<%# Bind("Rec_Username") %>' />
            <br />
            Rec_password:
            <asp:TextBox ID="Rec_passwordTextBox" runat="server" Text='<%# Bind("Rec_password") %>' />
            <br />
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Pro_Id:
            <asp:TextBox ID="Pro_IdTextBox" runat="server" Text='<%# Bind("Pro_Id") %>' />
            <br />
            Sport_Id:
            <asp:TextBox ID="Sport_IdTextBox" runat="server" Text='<%# Bind("Sport_Id") %>' />
            <br />
            Rec_FName:
            <asp:TextBox ID="Rec_FNameTextBox" runat="server" Text='<%# Bind("Rec_FName") %>' />
            <br />
            Rec_LName:
            <asp:TextBox ID="Rec_LNameTextBox" runat="server" Text='<%# Bind("Rec_LName") %>' />
            <br />
            Rec_Email:
            <asp:TextBox ID="Rec_EmailTextBox" runat="server" Text='<%# Bind("Rec_Email") %>' />
            <br />
            Rec_Username:
            <asp:TextBox ID="Rec_UsernameTextBox" runat="server" Text='<%# Bind("Rec_Username") %>' />
            <br />
            Rec_password:
            <asp:TextBox ID="Rec_passwordTextBox" runat="server" Text='<%# Bind("Rec_password") %>' />
            <br />
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Pro_Id:
            <asp:Label ID="Pro_IdLabel" runat="server" Text='<%# Eval("Pro_Id") %>' />
            <br />
            Sport_Id:
            <asp:Label ID="Sport_IdLabel" runat="server" Text='<%# Bind("Sport_Id") %>' />
            <br />
            Rec_FName:
            <asp:Label ID="Rec_FNameLabel" runat="server" Text='<%# Bind("Rec_FName") %>' />
            <br />
            Rec_LName:
            <asp:Label ID="Rec_LNameLabel" runat="server" Text='<%# Bind("Rec_LName") %>' />
            <br />
            Rec_Email:
            <asp:Label ID="Rec_EmailLabel" runat="server" Text='<%# Bind("Rec_Email") %>' />
            <br />
            Rec_Username:
            <asp:Label ID="Rec_UsernameLabel" runat="server" Text='<%# Bind("Rec_Username") %>' />
            <br />
            Rec_password:
            <asp:Label ID="Rec_passwordLabel" runat="server" Text='<%# Bind("Rec_password") %>' />
            <br />

            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString1 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT profile.*, coach.Sport_Id AS Expr1 FROM coach CROSS JOIN profile WHERE (coach.Sport_Id = @Session)">
        <SelectParameters>
            <asp:SessionParameter Name="Session" SessionField="SportId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDSnote" Height="163px" style="z-index: 2" Width="183px">
        <Columns>
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            <asp:BoundField DataField="NPost_date" HeaderText="NPost_date" SortExpression="NPost_date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDSnote" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString1 %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT Note, NPost_date FROM Notes WHERE (Pro_id = @Pro_id)" InsertCommand="INSERT INTO [Notes] ([post_date], [Notes]) VALUES (@post_date, @Notes)">
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="post_date" />
            <asp:Parameter Name="Notes" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_id" QueryStringField="Pro_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>


