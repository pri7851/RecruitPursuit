<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Welcome.master" CodeFile="Recruit Questionnaire.aspx.cs" Inherits="Recruit_Questionnaire" %>


   
         <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <h2>  
        <asp:Label ID="lblSport" runat="server"></asp:Label>
                 </h2>
                 <asp:Panel ID="Panel1" runat="server">
                              <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 25%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
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
    Have you applied to Cal U?<br />
        <br />
    Have you registered at eligibilitycenter.org (NCAA requirement)?<br />
        <br />
    NCAA Eligibility Center ID Number:&nbsp; <asp:TextBox ID="TextBoxNCAAID" runat="server"></asp:TextBox>
    <br />
        <br />
    Have you applied for Financial Aid with FAFSA?<br />
    <br />
        <asp:Button ID="btnNext1" runat="server" Text="Next" OnClick="btnNext1_Click"/>

        </asp:Panel>


             <asp:Panel ID="Panel2" runat="server" Visible="False">
                          <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
    <h2>Academic Information</h2>
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
 
        Possible Major at Cal U:<asp:TextBox ID="TextBoxPoss_Major" runat="server"></asp:TextBox>
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

                 <asp:Button ID="btnBack1" runat="server" Text="Back" OnClick="btnBack1_Click" /><asp:Button ID="btnNext2" runat="server" Text="Next" OnClick="btnNext2_Click"/>
        </asp:Panel>
             <asp:Panel ID="Panel3" runat="server" Visible="False">
                          <div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 75%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
            <p>
                <asp:Label ID="Output" runat="server"></asp:Label>
            </p>
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
                     <asp:BoundField DataField="SportQuestText" SortExpression="SportQuestText" />
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:TextBox ID="txt_SportQuestions" runat="server"></asp:TextBox>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions] WHERE ([Sport_Id] = @Sport_Id)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />
             <br />
                <asp:Button ID="Back2" runat="server" Text="Back" OnClick="Back2_Click" /><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                 </asp:Panel>
                </asp:Content>



