<%@ Page Title="Questionnaire" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            left: 1px;
            top: 1px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    Athletic Information:</h1>
    <p>
        <asp:Button ID="btnPreview" runat="server" Text="Preview Questionnaire" OnClick="btnPreview_Click" />
        <p>
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="My sport doesn't have positions." AutoPostBack="True" />
         <p>
         <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Positions" Visible="False" />
        <asp:Panel ID="Panel1" runat="server" Height="108px">
           
            Positions:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Position" DataValueField="Position" CssClass="auto-style3">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Position_Id, Sport_Id, Position FROM dbo.Positions WHERE (Sport_Id = @Sport_Id) AND (Position &lt;&gt; 'null')">
                <SelectParameters>
                    <asp:SessionParameter Name="Sport_Id" SessionField="SportID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit Positions" />

        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="196px">
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="SportQuestID">
            <Columns>
                <asp:BoundField DataField="SportQuestText" HeaderText="Question" SortExpression="SportQuestText" />
                <asp:CommandField ShowEditButton="True" ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <HeaderStyle BackColor="#D9230F" ForeColor="White" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [SportQuestions] WHERE ([Sport_Id] = @Sport_Id)" DeleteCommand="DELETE FROM [SportQuestions] WHERE [SportQuestID] = @SportQuestID" UpdateCommand="UPDATE dbo.SportQuestions SET SportQuestText = @SportQuestText WHERE (SportQuestID = @SportQuestID)">
                <DeleteParameters>
                    <asp:Parameter Name="SportQuestID" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SportQuestText" />
                    <asp:Parameter Name="SportQuestID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="ButtonNew" runat="server" type="button" OnClick="ButtonNew_Click" Text="New Question" />
            </asp:Panel>

    <p>
        
    </p>
    <p>
        
        <asp:Label ID="lblQuest" runat="server" Text="Criteria:" Visible="False"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBoxQuestion" runat="server" Height="23px" OnTextChanged="TextBox1_TextChanged" Width="836px" Visible="False"></asp:TextBox>
    </p>
    <asp:Label ID="lblExample" runat="server" ForeColor="Gray" style="font-style: italic" Text="Examples: Position, Batting Average, Height" Visible="False"></asp:Label>
    <br />
    <br />


    &nbsp;&nbsp;&nbsp;
   
    <br />
    <p>


    <asp:Button ID="ButtonAdd" type="button"  runat="server" OnClick="ButtonAdd_Click" Text="Add Question" Visible="False"/>
    </p>
    <p>
        <asp:Label ID="Output" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    
  
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Questionnaire</li>
    </ol>
</asp:Content>