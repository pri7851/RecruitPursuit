<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recruitpursuitConnectionString %>" OldValuesParameterFormatString="original_{0}" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


