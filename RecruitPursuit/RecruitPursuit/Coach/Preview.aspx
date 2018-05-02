﻿<%@ Page Title="Preview" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Preview.aspx.cs" Inherits="Coach_Preview" %>

           <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
      <h1>Athletic Information</h1>

        
                 <asp:Panel ID="Panel4" runat="server" Visible="False">
                     Primary Position:&nbsp;<asp:DropDownList ID="DropDownListPrimaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT Position_Id, Sport_Id, Position FROM dbo.Positions WHERE (Sport_Id = @Sport_Id) AND (Position &lt;&gt; 'null')">
                         <SelectParameters>
                             <asp:SessionParameter Name="Sport_Id" SessionField="SportID" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     Secondary Position:&nbsp;<asp:DropDownList ID="DropDownListSecondaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position">
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



