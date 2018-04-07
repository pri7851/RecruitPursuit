<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        left: 785px;
        top: 285px;
        margin-top: 0;
            position: absolute;
            z-index: 1;
            margin-bottom: 0;
        }
    .auto-style3 {
        top: 75px;
            width: 136px;
            height: 170px;
            position: absolute;
            z-index: 1;
            left: 15px;
        }
    .auto-style4 {
        z-index: 1;
        left: 785px;
        top: 340px;
            width: 183px;
            height: 163px;
            position: absolute;
        }
        .auto-style6 {
            position: absolute;
            top: 280px;
            left: 980px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 230px;
            left: 785px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:TextBox ID="TxtNotes" runat="server" CssClass="auto-style1"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="BtnViewSch" runat="server" class="btn btn-primary" OnClick="BtnViewSch_Click" Text="View Schedule" CssClass="auto-style9"    />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" CssClass="auto-style3">
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
           

        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:Button ID="AddNotes" runat="server" OnClick="Addnotes_Click" Text="Add Note" BackColor="#CC0000" ForeColor="White" CssClass="auto-style6" class="btn btn-primary"  />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSnote" Height="163px" Width="183px" CssClass="auto-style4" DataKeyNames="Note_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            <asp:BoundField DataField="NPost_date" HeaderText="Post Date" SortExpression="NPost_date" />
            <asp:BoundField DataField="Note_id" HeaderText="Note ID" InsertVisible="False" ReadOnly="True" SortExpression="Note_id" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDSnote" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT Note, NPost_date, Note_id FROM dbo.Notes WHERE (Pro_id = @Pro_id)" InsertCommand="INSERT INTO [Notes] ([post_date], [Notes]) VALUES (@post_date, @Notes)" DeleteCommand="DELETE FROM dbo.Notes WHERE (Note_id = @Note_id)">
        <DeleteParameters>
            <asp:Parameter Name="Note_id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="post_date" />
            <asp:Parameter Name="Notes" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_id" QueryStringField="Pro_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>


