<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        left: 900px;
        top: 239px;
        margin-top: 0;
    }
    .auto-style2 {
        left: 902px;
        top: 239px;
    }
    .auto-style3 {
        left: 10px;
        top: 90px;
            width: 136px;
            height: 170px;
            position: absolute;
            z-index: 1;
        }
    .auto-style4 {
        z-index: 2;
        left: 901px;
        top: 264px;
    }
    .auto-style5 {
        position: absolute;
        top: 216px;
        left: 895px;
        z-index: 1;
        margin-top: 0;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:TextBox ID="TxtNotes" runat="server" CssClass="auto-style1"></asp:TextBox>
    <asp:Button ID="AddNotes" runat="server" OnClick="Addnotes_Click" Text="Add Note" CssClass="auto-style2" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnViewSch" runat="server" CssClass="auto-style5" OnClick="BtnViewSch_Click" Text="Veiw Schedule" />
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
            Rec_Username:
            <asp:Label ID="Rec_UsernameLabel" runat="server" Text='<%# Bind("Rec_Username") %>' />
            <br />
            Rec_password:
            <asp:Label ID="Rec_passwordLabel" runat="server" Text='<%# Bind("Rec_password") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSnote" Height="163px" Width="183px" CssClass="auto-style4">
        <Columns>
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            <asp:BoundField DataField="NPost_date" HeaderText="NPost_date" SortExpression="NPost_date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString1 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
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


