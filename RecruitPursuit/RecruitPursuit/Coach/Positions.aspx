<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Positions.aspx.cs" Inherits="Coach_Positions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="My sport doesn't have positions." AutoPostBack="True" /> <br /> <br />
         <asp:Panel ID="Panel1" runat="server">
             Please enter a position:<br />
             <asp:TextBox ID="TextBoxPosition"  runat="server"></asp:TextBox>
             &nbsp;&nbsp;
             <asp:Button ID="btnInsert" runat="server" Text="Add" OnClick="btnInsert_Click" />
         </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">
            Edit Positions:<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Position_Id">
                <Columns>
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <HeaderStyle BackColor="#D9230F" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" DeleteCommand="DELETE FROM [Positions] WHERE [Position_Id] = @Position_Id" InsertCommand="INSERT INTO [Positions] ([Sport_Id], [Position]) VALUES (@Sport_Id, @Position)" SelectCommand="SELECT * FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)" UpdateCommand="UPDATE dbo.Positions SET Position = @Position WHERE (Position_Id = @Position_Id)">
                <DeleteParameters>
                    <asp:Parameter Name="Position_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sport_Id" Type="Int32" />
                    <asp:Parameter Name="Position" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Position" Type="String" />
                    <asp:Parameter Name="Position_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnDone" runat="server" Text="Done" OnClick="btnDone_Click" />
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item"><a href="Questionnaire.aspx">Questionnaire</a></li>
        
        <li class="breadcrumb-item active">Add Positions</li>
    </ol>
    </asp:Content>