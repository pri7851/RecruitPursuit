<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    Athletic Information:</h1>
    <p>
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="My sport doesn't have positions." AutoPostBack="True" />
        <asp:Panel ID="Panel1" runat="server" Height="152px">
            Positions:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Position" DataValueField="Position">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Sport_Id" SessionField="SportID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit Positions" />

        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="196px">
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="SportQuestText" HeaderText="SportQuestText" SortExpression="SportQuestText" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions]"></asp:SqlDataSource>
            <br />
            </asp:Panel>

    <p>
        <asp:Button ID="ButtonNew" runat="server" OnClick="ButtonNew_Click" class="btn btn-primary" Text="New Question" />
    </p>
    <p>
        <asp:Label ID="lblQuest" runat="server" Text="Criteria:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxQuestion" runat="server" Height="23px" OnTextChanged="TextBox1_TextChanged" Width="836px" Visible="False"></asp:TextBox>
    </p>
    <asp:Label ID="lblExample" runat="server" ForeColor="Gray" style="font-style: italic" Text="Examples: Position, Batting Average, Height" Visible="False"></asp:Label>
    <br />
    <br />


        <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Question" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    <br />
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnPreview" runat="server" Text="Preview Questionnaire" />
        <asp:Label ID="Output" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    
  
</asp:Content>

