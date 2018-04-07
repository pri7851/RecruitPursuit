<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    Athletic Information:</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </p>
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
    



        <br />
    <br />


        <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Question" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    <br />
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Output" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    
</asp:Content>

