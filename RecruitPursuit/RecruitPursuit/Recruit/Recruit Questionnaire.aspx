<%@ Page Title="Questionnaire" Language="C#" AutoEventWireup="true" MasterPageFile="~/Welcome.master" CodeFile="Recruit Questionnaire.aspx.cs" Inherits="Recruit_Questionnaire" %>


   
         <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             
             <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 1px;
        }
    </style>
             <div style="padding-left: 40px; padding-top: 10px; padding-right: 40px; padding-bottom: 10px;">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <h2>  
        <asp:Label ID="lblSport" runat="server"></asp:Label>
                 </h2>
                 <asp:Panel ID="Panel1" runat="server">
                              <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 25%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
        <h2>&nbsp;</h2>
 
                              <h2>Personal Information</h2>
 
    First Name:  <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
        <br />
    <br />
    Last Name:  <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
        <br />
    <br />
    Address:  <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
        <br />
    <br />
    City:  <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
        <br />
    <br />
    State:  <asp:TextBox ID="TextBoxState" runat="server"></asp:TextBox>
        <br />
    <br />
    Zip Code:  <asp:TextBox ID="TextBoxZip" runat="server"></asp:TextBox>
        <br />
    <br />
    Country:  <asp:TextBox ID="TextBoxCountry" runat="server"></asp:TextBox>
        <br />
    <br />
    Citizenship:  <asp:TextBox ID="TextBoxCitizen" runat="server"></asp:TextBox>
    <br />
        <br />
    Email:  <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
    <br />
        <br />
    Date of Birth:  <asp:TextBox ID="TextBoxDOB" runat="server"></asp:TextBox>
    <br />
        <br />
    Home Phone Number:  <asp:TextBox ID="TextBoxHomePhone" runat="server"></asp:TextBox>
    <br />
        <br />
    Cell Phone Number:  <asp:TextBox ID="TextBoxCellPhone" runat="server"></asp:TextBox>
    <br />
        <br />
    Father&#39;s Name:  <asp:TextBox ID="TextBoxFatherName" runat="server"></asp:TextBox>
    <br />
        <br />
    Father&#39;s Occupation:  <asp:TextBox ID="TextBoxFatherOcc" runat="server"></asp:TextBox>
    <br />
        <br />
    Mother&#39;s Name:  <asp:TextBox ID="TextBoxMotherName" runat="server"></asp:TextBox>
    <br />
        <br />
    Mother&#39;s Occupation:  <asp:TextBox ID="TextBoxMotherOcc" runat="server"></asp:TextBox>
    <br />
        <br />
                              Have you applied to Cal U?&nbsp;&nbsp;
                              <asp:RadioButtonList ID="RadioButtonListApplied" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CellPadding="5" RepeatColumns="2" Width="150px">
                                  <asp:ListItem>Yes&nbsp;&nbsp;&nbsp;    </asp:ListItem>
                                  <asp:ListItem Value="No"></asp:ListItem>
                              </asp:RadioButtonList>
        <br />
                              <br />
                              Have you registered at eligibilitycenter.org (NCAA requirement)?&nbsp;&nbsp;
                     <asp:RadioButtonList ID="RadioButtonNCAA" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CellPadding="5" RepeatColumns="2" Width="150px">
                                  <asp:ListItem>Yes&nbsp;&nbsp;&nbsp;    </asp:ListItem>
                                  <asp:ListItem Value="No"></asp:ListItem>
                              </asp:RadioButtonList><br />
                              <br />
    NCAA Eligibility Center ID Number:&nbsp; <asp:TextBox ID="TextBoxNCAAID" runat="server"></asp:TextBox>
    <br />
        <br />
                              Have you applied for Financial Aid with FAFSA?&nbsp;&nbsp;  
                     <asp:RadioButtonList ID="RadioButtonListFAFSA" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CellPadding="5" RepeatColumns="2" Width="150px">
                                  <asp:ListItem>Yes&nbsp;&nbsp;&nbsp;    </asp:ListItem>
                                  <asp:ListItem Value="No"></asp:ListItem>
                              </asp:RadioButtonList>&nbsp;
                              <br />
    <br />
        <asp:Button ID="btnNext1" runat="server" Text="Next" OnClick="btnNext1_Click"/>

        </asp:Panel>


             <asp:Panel ID="Panel2" runat="server" Visible="False">
                          <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
    <h2>&nbsp;</h2>
                          <h2>Academic Information</h2>
                          <p>
                              &nbsp;</p>
                          <h4>High School Information</h4>
        Name of High School:  <asp:TextBox ID="TextBoxHSName" runat="server"></asp:TextBox>
    <br />

            <br />

        High School Graduation Year:  <asp:TextBox ID="TextBoxHSGradYear" runat="server"></asp:TextBox>
    <br />

            <br />

        Cumulative Grade-Point Average:  <asp:TextBox ID="TextBoxHSGPA" runat="server"></asp:TextBox>
    <br />
 
            <br />
 
        SAT Verbal:  <asp:TextBox ID="TextBoxSAT_Verb" runat="server"></asp:TextBox>
    <br />

            <br />

        SAT Math:  <asp:TextBox ID="TextBoxSAT_Math" runat="server"></asp:TextBox>
    <br />

            <br />

        SAT Total:  <asp:TextBox ID="TextBoxSAT_Tot" runat="server"></asp:TextBox>
    <br />
  
            <br />
  
        ACT Score (if applicable):  <asp:TextBox ID="TextBoxACT" runat="server"></asp:TextBox>
    <br />

            <br />

        Academic Honors:  <asp:TextBox ID="TextBoxAcad_Honors" runat="server"></asp:TextBox>
    <br />
 
            <br />
 
                          Possible Major at Cal U:
                          <asp:TextBox ID="TextBoxPoss_Major" runat="server"></asp:TextBox>
                          <br />
                          <br />
                          <br />
                          <br />
                          <h4>Junior/Previous College Information (If Applicable)</h4>
                          Name of Junior/Previous College: <asp:TextBox ID="TextBoxJCName" runat="server"></asp:TextBox>
            <br />
            <br />
    Total Number Full-Time Semesters:  <asp:TextBox ID="TextBoxJC_NumSem" runat="server"></asp:TextBox>
            <br />
            <br />
    Cumulative Grade-Point Average:  <asp:TextBox ID="TextBoxJCGPA" runat="server"></asp:TextBox>
            <br />
            <br />
    Total Number of Units Completed:  <asp:TextBox ID="TextBoxJC_Tot_Units" runat="server"></asp:TextBox>
            <br />
            <br />
    Date AA Completed:  <asp:TextBox ID="TextBoxDateAACompleted" runat="server"></asp:TextBox>
            <br />
            <br />
    JC/Previous Coach&#39;s Name:  <asp:TextBox ID="TextBoxJC_Coach_Name" runat="server"></asp:TextBox>
            <br />
            <br />
             JC/Previous Coach&#39;s Email:&nbsp;  <asp:TextBox ID="TextBoxJC_Coach_Email" runat="server"></asp:TextBox>
            <br />
            <br />
    Number of Seasons played at JC/Previous School:  <asp:TextBox ID="TextBoxJC_Seasons_Played" runat="server"></asp:TextBox>
            <br />

                          <asp:Button ID="btnNext2" runat="server" Text="Next" OnClick="btnNext2_Click"/>
        </asp:Panel>
             <asp:Panel ID="Panel3" runat="server" Visible="False">
                          <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 75%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
                          <h2>&nbsp;</h2>
                          <h2>
                              <asp:Label ID="Output" runat="server"></asp:Label>
                              Athletic Information</h2>
                 <br />
                 </asp:Panel>
        
                 <asp:Panel ID="Panel4" runat="server" Visible="False">
                     <asp:Label ID="lblPrimaryPosition" runat="server" Text="Primary Position:"></asp:Label>
                     &nbsp;<asp:DropDownList ID="DropDownListPrimaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position" CssClass="auto-style1">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                         <SelectParameters>
                             <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     <br />
                     <asp:Label ID="lblSecondaryPosition" runat="server" Text="Secondary Position:"></asp:Label>
                     <asp:DropDownList ID="DropDownListSecondaryPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position" CssClass="auto-style1">
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
                          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                  </asp:Panel>
                          <asp:Panel ID="Panel5" runat="server" Visible="False">
                           <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 100%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
                              Thank you for your submission!</asp:Panel>
                </div>
                </asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            left: 3px;
            top: 1px;
        }
        .auto-style3 {
            left: 3px;
            top: 2px;
        }
    </style>
</asp:Content>




