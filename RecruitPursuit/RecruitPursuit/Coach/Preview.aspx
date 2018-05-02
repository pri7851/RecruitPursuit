<%@ Page Title="Preview" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Preview.aspx.cs" Inherits="Coach_Preview" %>

           <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
      <h1>Athletic Information</h1>

        
                 <asp:Panel ID="Panel4" runat="server">
                     <asp:Label ID="lblPrimaryPosition" runat="server" Text="Primary Position: "></asp:Label>
                     &nbsp;<asp:DropDownList ID="DropDownListPrimaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position" CssClass="auto-style1">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                         <SelectParameters>
                             <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     <asp:Label ID="lblSecondaryPosition" runat="server" Text="Secondary Position: "></asp:Label>
                     <asp:DropDownList ID="DropDownListSecondaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position" CssClass="auto-style1">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                         <SelectParameters>
                             <asp:SessionParameter Name="Sport_Id" SessionField="SportID" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 </asp:Panel>
                 &nbsp;<br />
                 &nbsp;&nbsp;<br />
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                 <Columns>
                     <asp:BoundField DataField="SportQuestID" HeaderText="Question ID" InsertVisible="False" ReadOnly="True" SortExpression="SportQuestID" />
                     <asp:BoundField DataField="SportQuestText" SortExpression="SportQuestText" />
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:TextBox ID="txt_SportQuestions" runat="server"></asp:TextBox>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
                 <HeaderStyle BackColor="#D9230F" ForeColor="White" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT[SportQuestID], [SportQuestText] FROM [SportQuestions] WHERE ([Sport_Id] = @Sport_Id)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />
             <br />
               </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item"><a href="Questionnaire.aspx">Questionnaire</a></li>
        <li class="breadcrumb-item active">Preview</li>
    </ol>
</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            left: 3px;
            top: 1px;
        }
    </style>
</asp:Content>




