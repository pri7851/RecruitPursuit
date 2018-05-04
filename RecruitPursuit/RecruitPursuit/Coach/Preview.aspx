<%@ Page Title="Preview" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Preview.aspx.cs" Inherits="Coach_Preview" %>

           <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
               
               <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 1px;
        }
                   .auto-style2 {
                       left: 1px;
                       top: 11px;
                   }
    </style>
        
               <h2>
                              Athletic Information</h2>
                 <br />
  
                 <asp:Panel ID="Panel4" runat="server" Visible="True">
                     <asp:Label ID="lblPrimaryPosition" runat="server" Text="Primary Position:"></asp:Label>
                     &nbsp;&nbsp;<asp:DropDownList ID="DropDownListPrimaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position" CssClass="auto-style1">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                         <SelectParameters>
                             <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     <br />
                     <asp:Label ID="lblSecondaryPosition" runat="server" Text="Secondary Position:"></asp:Label>
                     &nbsp;<asp:DropDownList ID="DropDownListSecondaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position" CssClass="auto-style1" >
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                         <SelectParameters>
                             <asp:SessionParameter Name="Sport_Id" SessionField="SportID" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 <div style="padding-left:-50px">
                     &nbsp;&nbsp;<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="SportQuestID" DataSourceID="SqlDataSource6" CellPadding="7" HorizontalAlign="Left" GridLines="None" ShowHeader="False">
                              <Columns>
                                  <asp:BoundField DataField="SportQuestID" SortExpression="SportQuestID" InsertVisible="False" ReadOnly="True" >
                                  <ControlStyle ForeColor="White" Width="0px" />
                                  <ItemStyle ForeColor="White" Width="0px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="SportQuestText" SortExpression="SportQuestText" />
                                  <asp:TemplateField>
                                      <ItemTemplate>
                                          <asp:TextBox ID="txt_SportQuestions" runat="server"></asp:TextBox>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <HeaderStyle BackColor="#D9230F" ForeColor="White" />
                          </asp:GridView>
                     </div>
                          <br />
                          <div class="text-left">
                          </div>
             <br />
                          <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestID], [SportQuestText] FROM [SportQuestions] WHERE ([Sport_Id] = @Sport_Id)">
                              <SelectParameters>
                                  <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                              </SelectParameters>
                          </asp:SqlDataSource>
             <br />
                          
                  </asp:Panel>
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




