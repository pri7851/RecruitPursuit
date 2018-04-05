<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    Athletic Information:</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="SportQuestID">
            <Columns>
                <asp:BoundField DataField="SportQuestID" HeaderText="SportQuestID" SortExpression="SportQuestID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
                <asp:BoundField DataField="SportQuestText" HeaderText="SportQuestText" SortExpression="SportQuestText" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [SportQuestions] WHERE ([Sport_Id] = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
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
    <asp:Label ID="lblAnswer" runat="server" Text="Pick an answer style:" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" Visible="False" Height="16px" Width="137px">
        <asp:ListItem>TextBox</asp:ListItem>
        <asp:ListItem Value="Drop Down List">Drop Down List</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="False">
    <asp:Label ID="lblOptions" runat="server" Text="What options would you like to include in the Drop Down List?"></asp:Label>
    <br /><br />
    Option 1:&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 2:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt2" runat="server"></asp:TextBox>
    <br />
    Option 3:&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt3" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 4:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt4" runat="server"></asp:TextBox>
    <br />
    Option 5:&nbsp;&nbsp; <asp:TextBox ID="TextBoxOpt5" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 6:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt6" runat="server"></asp:TextBox>
    <br />
    Option 7:&nbsp;&nbsp; <asp:TextBox ID="TextBoxOpt7" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 8:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt8" runat="server"></asp:TextBox>
    <br />
    Option 9:&nbsp;&nbsp; <asp:TextBox ID="TextBoxOpt9" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 10:&nbsp;
    <asp:TextBox ID="TextBoxOpt10" runat="server"></asp:TextBox>

    </asp:PlaceHolder>
    <br />
    <br />
    <asp:PlaceHolder  ID="PlaceHolder2" runat="server" Visible="False">
        Option 11:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 12:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Option 13:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 14:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    Option 15:&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 16:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    Option 17:&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 18:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    Option 19:&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 20:&nbsp; &nbsp;
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    </asp:PlaceHolder>
    <br />
    <br />
    <asp:PlaceHolder ID="PlaceHolder3" runat="server" Visible="False">
        Option 21:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 22:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <br />
    Option 23:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 24:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    <br />
    Option 25:&nbsp;&nbsp; <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 26:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
    <br />
    Option 27:&nbsp;&nbsp; <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 28:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />
    Option 29:&nbsp;&nbsp; <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 30:&nbsp; &nbsp;
    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
    </asp:PlaceHolder>


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

