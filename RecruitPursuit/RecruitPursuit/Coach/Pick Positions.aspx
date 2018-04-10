<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Coach.master" CodeFile="Pick Positions.aspx.cs" Inherits="Coach_Pick_Positions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="True">
    <asp:Label ID="lblOptions" runat="server" Text="Please enter your sports positions:"></asp:Label>
    <br /><br />
    Position:&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
<br />
    
    <asp:Button ID="Button1" runat="server" Text="Add Positions" OnClick="Button1_Click" />
    &nbsp;

     <br />
     <br />
     <asp:Label ID="Output" runat="server" Text="Label"></asp:Label>
    <br />
         </asp:PlaceHolder>
     <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [Positions]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Positions] WHERE [Position_Id] = @original_Position_Id AND [Sport_Id] = @original_Sport_Id AND (([Position] = @original_Position) OR ([Position] IS NULL AND @original_Position IS NULL))" InsertCommand="INSERT INTO [Positions] ([Sport_Id], [Position]) VALUES (@Sport_Id, @Position)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Positions] SET [Sport_Id] = @Sport_Id, [Position] = @Position WHERE [Position_Id] = @original_Position_Id AND [Sport_Id] = @original_Sport_Id AND (([Position] = @original_Position) OR ([Position] IS NULL AND @original_Position IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Position_Id" Type="Int32" />
            <asp:Parameter Name="original_Sport_Id" Type="Int32" />
            <asp:Parameter Name="original_Position" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sport_Id" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Sport_Id" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="original_Position_Id" Type="Int32" />
            <asp:Parameter Name="original_Sport_Id" Type="Int32" />
            <asp:Parameter Name="original_Position" Type="String" />
        </UpdateParameters>
     </asp:SqlDataSource>
     <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Position_Id">
         <Columns>
             <asp:BoundField DataField="Position_Id" HeaderText="Position_Id" InsertVisible="False" ReadOnly="True" SortExpression="Position_Id" />
             <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
             <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
         </Columns>
         <HeaderStyle BackColor="#D9230F" ForeColor="White" />
     </asp:GridView>
</asp:Content>
