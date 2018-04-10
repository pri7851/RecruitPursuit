<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: absolute;
            top: 490px;
            left: 10px;
        }
        .auto-style2 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: absolute;
            top: 120px;
            left: 20px;
            z-index: 1;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    Athletic Information:</h1>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <HeaderStyle BackColor="#D9230F" ForeColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:Button ID="ButtonNew" runat="server" OnClick="ButtonNew_Click" class="btn btn-primary" Text="New Question" CssClass="auto-style2" />
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


        <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Question" Visible="False" CssClass="auto-style1" style="z-index: 1" />
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

