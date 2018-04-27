<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="btnPersonal1" class="btn btn-primary" runat="server" Text="Personal" ForeColor="White" />
        <asp:Button ID="btnAcademic1" class="btn btn-outline-primary" runat="server" Text="Academic" OnClick="btnAcademic1_Click" />
        <asp:Button ID="btnAthletic1" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic1_Click" />
        <asp:Button ID="btnNotes1" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes1_Click" />
        <asp:Button ID="btnSchedule1" class="btn btn-outline-primary" runat="server" Text="Schedule" OnClick="btnSchedule1_Click"/>
        <br />
        <br />
           <asp:DataList runat="server" ID="listPersonal" DataKeyField="Pro_Id" DataSourceID="SqlDataSource2">
               <ItemTemplate>
                   Name:
                   <asp:Label ID="Rec_FNameLabel" runat="server" Text='<%# Eval("Rec_FName") %>' />
                   &nbsp;<asp:Label ID="Rec_LNameLabel" runat="server" Text='<%# Eval("Rec_LName") %>' />
                   <br />
                   Address:
                   <asp:Label ID="Rec_AddressLabel" runat="server" Text='<%# Eval("Rec_Address") %>' />
                   <br />
                   City:
                   <asp:Label ID="Rec_CityLabel" runat="server" Text='<%# Eval("Rec_City") %>' />
                   <br />
                   State:
                   <asp:Label ID="Rec_StateLabel" runat="server" Text='<%# Eval("Rec_State") %>' />
                   <br />
                   Zip:
                   <asp:Label ID="Rec_ZipLabel" runat="server" Text='<%# Eval("Rec_Zip") %>' />
                   <br />
                   Country:
                   <asp:Label ID="Rec_CountryLabel" runat="server" Text='<%# Eval("Rec_Country") %>' />
                   <br />
                   Citizenship:
                   <asp:Label ID="Rec_CitizenLabel" runat="server" Text='<%# Eval("Rec_Citizen") %>' />
                   <br />
                   Email:
                   <asp:Label ID="Rec_EmailLabel" runat="server" Text='<%# Eval("Rec_Email") %>' />
                   <br />
                   DOB:
                   <asp:Label ID="Rec_DOBLabel" runat="server" Text='<%# Eval("Rec_DOB") %>' />
                   <br />
                   Home Phone:
                   <asp:Label ID="Rec_HomePhoneLabel" runat="server" Text='<%# Eval("Rec_HomePhone") %>' />
                   <br />
                   Cell Phone:
                   <asp:Label ID="Rec_CellPhoneLabel" runat="server" Text='<%# Eval("Rec_CellPhone") %>' />
                   <br />
                   Father Name:
                   <asp:Label ID="Rec_FatherNameLabel" runat="server" Text='<%# Eval("Rec_FatherName") %>' />
                   <br />
                   Father Occupation:
                   <asp:Label ID="Rec_FatherOccLabel" runat="server" Text='<%# Eval("Rec_FatherOcc") %>' />
                   <br />
                   Mother Name:
                   <asp:Label ID="Rec_MotherNameLabel" runat="server" Text='<%# Eval("Rec_MotherName") %>' />
                   <br />
                   Mother Occupation:
                   <asp:Label ID="Rec_MotherOccLabel" runat="server" Text='<%# Eval("Rec_MotherOcc") %>' />
                   <br />
                   Applied to Cal U?
                   <asp:Label ID="Rec_App2CalLabel" runat="server" Text='<%# Eval("Rec_App2Cal") %>' />
                   <br />
                   Registered to NCAA?
                   <asp:Label ID="Rec_Reg2NCAALabel" runat="server" Text='<%# Eval("Rec_Reg2NCAA") %>' />
                   <br />
                   NCAA ID:
                   <asp:Label ID="Rec_NCAA_IDLabel" runat="server" Text='<%# Eval("Rec_NCAA_ID") %>' />
                   <br />
                   FAFSA:
                   <asp:Label ID="Rec_FAFSALabel" runat="server" Text='<%# Eval("Rec_FAFSA") %>' />
                   <br />
                   <br />
                   <br />
               </ItemTemplate>
           </asp:DataList>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" DeleteCommand="DELETE FROM [profile] WHERE [Pro_Id] = @Pro_Id" InsertCommand="INSERT INTO [profile] ([PostDate], [Sport_Id], [Rec_FName], [Rec_LName], [Rec_Address], [Rec_City], [Rec_State], [Rec_Zip], [Rec_Country], [Rec_Citizen], [Rec_Email], [Rec_DOB], [Rec_HomePhone], [Rec_CellPhone], [Rec_FatherName], [Rec_FatherOcc], [Rec_MotherName], [Rec_MotherOcc], [Rec_App2Cal], [Rec_Reg2NCAA], [Rec_NCAA_ID], [Rec_FAFSA], [Rec_HSName], [Rec_HSGradYear], [Rec_HSGPA], [Rec_SAT_Verbal], [Rec_SAT_Math], [Rec_SAT_Tot], [Rec_ACT], [Rec_Acad_Honors], [Rec_Poss_Major], [Rec_JCName], [Rec_JC_NumSem], [Rec_JCGPA], [Rec_JC_Tot_Units], [Rec_DateAACompleted], [Rec_JC_Coach_Name], [Rec_JC_Coach_Email], [Rec_JC_Seasons_Played], [Rec_PrimaryPosition], [Rec_SecondaryPosition]) VALUES (@PostDate, @Sport_Id, @Rec_FName, @Rec_LName, @Rec_Address, @Rec_City, @Rec_State, @Rec_Zip, @Rec_Country, @Rec_Citizen, @Rec_Email, @Rec_DOB, @Rec_HomePhone, @Rec_CellPhone, @Rec_FatherName, @Rec_FatherOcc, @Rec_MotherName, @Rec_MotherOcc, @Rec_App2Cal, @Rec_Reg2NCAA, @Rec_NCAA_ID, @Rec_FAFSA, @Rec_HSName, @Rec_HSGradYear, @Rec_HSGPA, @Rec_SAT_Verbal, @Rec_SAT_Math, @Rec_SAT_Tot, @Rec_ACT, @Rec_Acad_Honors, @Rec_Poss_Major, @Rec_JCName, @Rec_JC_NumSem, @Rec_JCGPA, @Rec_JC_Tot_Units, @Rec_DateAACompleted, @Rec_JC_Coach_Name, @Rec_JC_Coach_Email, @Rec_JC_Seasons_Played, @Rec_PrimaryPosition, @Rec_SecondaryPosition)" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)" UpdateCommand="UPDATE [profile] SET [PostDate] = @PostDate, [Sport_Id] = @Sport_Id, [Rec_FName] = @Rec_FName, [Rec_LName] = @Rec_LName, [Rec_Address] = @Rec_Address, [Rec_City] = @Rec_City, [Rec_State] = @Rec_State, [Rec_Zip] = @Rec_Zip, [Rec_Country] = @Rec_Country, [Rec_Citizen] = @Rec_Citizen, [Rec_Email] = @Rec_Email, [Rec_DOB] = @Rec_DOB, [Rec_HomePhone] = @Rec_HomePhone, [Rec_CellPhone] = @Rec_CellPhone, [Rec_FatherName] = @Rec_FatherName, [Rec_FatherOcc] = @Rec_FatherOcc, [Rec_MotherName] = @Rec_MotherName, [Rec_MotherOcc] = @Rec_MotherOcc, [Rec_App2Cal] = @Rec_App2Cal, [Rec_Reg2NCAA] = @Rec_Reg2NCAA, [Rec_NCAA_ID] = @Rec_NCAA_ID, [Rec_FAFSA] = @Rec_FAFSA, [Rec_HSName] = @Rec_HSName, [Rec_HSGradYear] = @Rec_HSGradYear, [Rec_HSGPA] = @Rec_HSGPA, [Rec_SAT_Verbal] = @Rec_SAT_Verbal, [Rec_SAT_Math] = @Rec_SAT_Math, [Rec_SAT_Tot] = @Rec_SAT_Tot, [Rec_ACT] = @Rec_ACT, [Rec_Acad_Honors] = @Rec_Acad_Honors, [Rec_Poss_Major] = @Rec_Poss_Major, [Rec_JCName] = @Rec_JCName, [Rec_JC_NumSem] = @Rec_JC_NumSem, [Rec_JCGPA] = @Rec_JCGPA, [Rec_JC_Tot_Units] = @Rec_JC_Tot_Units, [Rec_DateAACompleted] = @Rec_DateAACompleted, [Rec_JC_Coach_Name] = @Rec_JC_Coach_Name, [Rec_JC_Coach_Email] = @Rec_JC_Coach_Email, [Rec_JC_Seasons_Played] = @Rec_JC_Seasons_Played, [Rec_PrimaryPosition] = @Rec_PrimaryPosition, [Rec_SecondaryPosition] = @Rec_SecondaryPosition WHERE [Pro_Id] = @Pro_Id">
               <DeleteParameters>
                   <asp:Parameter Name="Pro_Id" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="PostDate" Type="String" />
                   <asp:Parameter Name="Sport_Id" Type="Int32" />
                   <asp:Parameter Name="Rec_FName" Type="String" />
                   <asp:Parameter Name="Rec_LName" Type="String" />
                   <asp:Parameter Name="Rec_Address" Type="String" />
                   <asp:Parameter Name="Rec_City" Type="String" />
                   <asp:Parameter Name="Rec_State" Type="String" />
                   <asp:Parameter Name="Rec_Zip" Type="Int32" />
                   <asp:Parameter Name="Rec_Country" Type="String" />
                   <asp:Parameter Name="Rec_Citizen" Type="String" />
                   <asp:Parameter Name="Rec_Email" Type="String" />
                   <asp:Parameter Name="Rec_DOB" Type="String" />
                   <asp:Parameter Name="Rec_HomePhone" Type="String" />
                   <asp:Parameter Name="Rec_CellPhone" Type="String" />
                   <asp:Parameter Name="Rec_FatherName" Type="String" />
                   <asp:Parameter Name="Rec_FatherOcc" Type="String" />
                   <asp:Parameter Name="Rec_MotherName" Type="String" />
                   <asp:Parameter Name="Rec_MotherOcc" Type="String" />
                   <asp:Parameter Name="Rec_App2Cal" Type="String" />
                   <asp:Parameter Name="Rec_Reg2NCAA" Type="String" />
                   <asp:Parameter Name="Rec_NCAA_ID" Type="String" />
                   <asp:Parameter Name="Rec_FAFSA" Type="String" />
                   <asp:Parameter Name="Rec_HSName" Type="String" />
                   <asp:Parameter Name="Rec_HSGradYear" Type="String" />
                   <asp:Parameter Name="Rec_HSGPA" Type="Double" />
                   <asp:Parameter Name="Rec_SAT_Verbal" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Math" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Tot" Type="Int32" />
                   <asp:Parameter Name="Rec_ACT" Type="Int32" />
                   <asp:Parameter Name="Rec_Acad_Honors" Type="String" />
                   <asp:Parameter Name="Rec_Poss_Major" Type="String" />
                   <asp:Parameter Name="Rec_JCName" Type="String" />
                   <asp:Parameter Name="Rec_JC_NumSem" Type="Int32" />
                   <asp:Parameter Name="Rec_JCGPA" Type="Int32" />
                   <asp:Parameter Name="Rec_JC_Tot_Units" Type="Int32" />
                   <asp:Parameter Name="Rec_DateAACompleted" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Name" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Email" Type="String" />
                   <asp:Parameter Name="Rec_JC_Seasons_Played" Type="Int32" />
                   <asp:Parameter Name="Rec_PrimaryPosition" Type="String" />
                   <asp:Parameter Name="Rec_SecondaryPosition" Type="String" />
               </InsertParameters>
               <SelectParameters>
                   <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" Type="Int32" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="PostDate" Type="String" />
                   <asp:Parameter Name="Sport_Id" Type="Int32" />
                   <asp:Parameter Name="Rec_FName" Type="String" />
                   <asp:Parameter Name="Rec_LName" Type="String" />
                   <asp:Parameter Name="Rec_Address" Type="String" />
                   <asp:Parameter Name="Rec_City" Type="String" />
                   <asp:Parameter Name="Rec_State" Type="String" />
                   <asp:Parameter Name="Rec_Zip" Type="Int32" />
                   <asp:Parameter Name="Rec_Country" Type="String" />
                   <asp:Parameter Name="Rec_Citizen" Type="String" />
                   <asp:Parameter Name="Rec_Email" Type="String" />
                   <asp:Parameter Name="Rec_DOB" Type="String" />
                   <asp:Parameter Name="Rec_HomePhone" Type="String" />
                   <asp:Parameter Name="Rec_CellPhone" Type="String" />
                   <asp:Parameter Name="Rec_FatherName" Type="String" />
                   <asp:Parameter Name="Rec_FatherOcc" Type="String" />
                   <asp:Parameter Name="Rec_MotherName" Type="String" />
                   <asp:Parameter Name="Rec_MotherOcc" Type="String" />
                   <asp:Parameter Name="Rec_App2Cal" Type="String" />
                   <asp:Parameter Name="Rec_Reg2NCAA" Type="String" />
                   <asp:Parameter Name="Rec_NCAA_ID" Type="String" />
                   <asp:Parameter Name="Rec_FAFSA" Type="String" />
                   <asp:Parameter Name="Rec_HSName" Type="String" />
                   <asp:Parameter Name="Rec_HSGradYear" Type="String" />
                   <asp:Parameter Name="Rec_HSGPA" Type="Double" />
                   <asp:Parameter Name="Rec_SAT_Verbal" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Math" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Tot" Type="Int32" />
                   <asp:Parameter Name="Rec_ACT" Type="Int32" />
                   <asp:Parameter Name="Rec_Acad_Honors" Type="String" />
                   <asp:Parameter Name="Rec_Poss_Major" Type="String" />
                   <asp:Parameter Name="Rec_JCName" Type="String" />
                   <asp:Parameter Name="Rec_JC_NumSem" Type="Int32" />
                   <asp:Parameter Name="Rec_JCGPA" Type="Int32" />
                   <asp:Parameter Name="Rec_JC_Tot_Units" Type="Int32" />
                   <asp:Parameter Name="Rec_DateAACompleted" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Name" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Email" Type="String" />
                   <asp:Parameter Name="Rec_JC_Seasons_Played" Type="Int32" />
                   <asp:Parameter Name="Rec_PrimaryPosition" Type="String" />
                   <asp:Parameter Name="Rec_SecondaryPosition" Type="String" />
                   <asp:Parameter Name="Pro_Id" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
        </asp:Panel>
 

           
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:Button ID="btnPersonal2" class="btn btn-outline-primary" runat="server" Text="Personal" OnClick="btnPersonal2_Click" />
        <asp:Button ID="btnAcademic2" class="btn btn-primary" runat="server" Text="Academic" ForeColor="White" />
        <asp:Button ID="btnAthletic2" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic2_Click" />
        <asp:Button ID="btnNotes2" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes2_Click" />
        <asp:Button ID="btnSchedule2" class="btn btn-outline-primary" runat="server" Text="Schedule" OnClick="btnSchedule2_Click"/>
         <br />
        <br />
        <asp:DataList ID="listAcademic" runat="server" DataKeyField="Pro_Id" DataSourceID="SqlDataSource3">
               <ItemTemplate>
                   Graduation Year:
                   <asp:Label ID="Rec_HSGradYearLabel" runat="server" Text='<%# Eval("Rec_HSGradYear") %>' />
                   <br />
                   High School:
                   <asp:Label ID="Rec_HSNameLabel" runat="server" Text='<%# Eval("Rec_HSName") %>' />
                   <br />
                   GPA:
                   <asp:Label ID="Rec_HSGPALabel" runat="server" Text='<%# Eval("Rec_HSGPA") %>' />
                   <br />
                   SAT Verbal:
                   <asp:Label ID="Rec_SAT_VerbalLabel" runat="server" Text='<%# Eval("Rec_SAT_Verbal") %>' />
                   <br />
                   SAT Math:
                   <asp:Label ID="Rec_SAT_MathLabel" runat="server" Text='<%# Eval("Rec_SAT_Math") %>' />
                   <br />
                   SAT Total:
                   <asp:Label ID="Rec_SAT_TotLabel" runat="server" Text='<%# Eval("Rec_SAT_Tot") %>' />
                   <br />
                   ACT:
                   <asp:Label ID="Rec_ACTLabel" runat="server" Text='<%# Eval("Rec_ACT") %>' />
                   <br />
                   Academic Honors:
                   <asp:Label ID="Rec_Acad_HonorsLabel" runat="server" Text='<%# Eval("Rec_Acad_Honors") %>' />
                   <br />
                   Possible Major:
                   <asp:Label ID="Rec_Poss_MajorLabel" runat="server" Text='<%# Eval("Rec_Poss_Major") %>' />
                   <br />
                   Junior College Name:
                   <asp:Label ID="Rec_JCNameLabel" runat="server" Text='<%# Eval("Rec_JCName") %>' />
                   <br />
                   Number of Semesters:
                   <asp:Label ID="Rec_JC_NumSemLabel" runat="server" Text='<%# Eval("Rec_JC_NumSem") %>' />
                   <br />
                   Junior College GPA:
                   <asp:Label ID="Rec_JCGPALabel" runat="server" Text='<%# Eval("Rec_JCGPA") %>' />
                   <br />
                   Total Units:
                   <asp:Label ID="Rec_JC_Tot_UnitsLabel" runat="server" Text='<%# Eval("Rec_JC_Tot_Units") %>' />
                   <br />
                   Date AA Completed:
                   <asp:Label ID="Rec_DateAACompletedLabel" runat="server" Text='<%# Eval("Rec_DateAACompleted") %>' />
                   <br />
                   Junior College Coach_Name:
                   <asp:Label ID="Rec_JC_Coach_NameLabel" runat="server" Text='<%# Eval("Rec_JC_Coach_Name") %>' />
                   <br />
                   Junior College Coach_Email:
                   <asp:Label ID="Rec_JC_Coach_EmailLabel" runat="server" Text='<%# Eval("Rec_JC_Coach_Email") %>' />
                   <br />
                   Junior College Seasons_Played:
                   <asp:Label ID="Rec_JC_Seasons_PlayedLabel" runat="server" Text='<%# Eval("Rec_JC_Seasons_Played") %>' />
                   <br />
<br />
               </ItemTemplate>
           </asp:DataList>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" DeleteCommand="DELETE FROM [profile] WHERE [Pro_Id] = @Pro_Id" InsertCommand="INSERT INTO [profile] ([PostDate], [Sport_Id], [Rec_FName], [Rec_LName], [Rec_Address], [Rec_City], [Rec_State], [Rec_Zip], [Rec_Country], [Rec_Citizen], [Rec_Email], [Rec_DOB], [Rec_HomePhone], [Rec_CellPhone], [Rec_FatherName], [Rec_FatherOcc], [Rec_MotherName], [Rec_MotherOcc], [Rec_App2Cal], [Rec_Reg2NCAA], [Rec_NCAA_ID], [Rec_FAFSA], [Rec_HSName], [Rec_HSGradYear], [Rec_HSGPA], [Rec_SAT_Verbal], [Rec_SAT_Math], [Rec_SAT_Tot], [Rec_ACT], [Rec_Acad_Honors], [Rec_Poss_Major], [Rec_JCName], [Rec_JC_NumSem], [Rec_JCGPA], [Rec_JC_Tot_Units], [Rec_DateAACompleted], [Rec_JC_Coach_Name], [Rec_JC_Coach_Email], [Rec_JC_Seasons_Played], [Rec_PrimaryPosition], [Rec_SecondaryPosition]) VALUES (@PostDate, @Sport_Id, @Rec_FName, @Rec_LName, @Rec_Address, @Rec_City, @Rec_State, @Rec_Zip, @Rec_Country, @Rec_Citizen, @Rec_Email, @Rec_DOB, @Rec_HomePhone, @Rec_CellPhone, @Rec_FatherName, @Rec_FatherOcc, @Rec_MotherName, @Rec_MotherOcc, @Rec_App2Cal, @Rec_Reg2NCAA, @Rec_NCAA_ID, @Rec_FAFSA, @Rec_HSName, @Rec_HSGradYear, @Rec_HSGPA, @Rec_SAT_Verbal, @Rec_SAT_Math, @Rec_SAT_Tot, @Rec_ACT, @Rec_Acad_Honors, @Rec_Poss_Major, @Rec_JCName, @Rec_JC_NumSem, @Rec_JCGPA, @Rec_JC_Tot_Units, @Rec_DateAACompleted, @Rec_JC_Coach_Name, @Rec_JC_Coach_Email, @Rec_JC_Seasons_Played, @Rec_PrimaryPosition, @Rec_SecondaryPosition)" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)" UpdateCommand="UPDATE [profile] SET [PostDate] = @PostDate, [Sport_Id] = @Sport_Id, [Rec_FName] = @Rec_FName, [Rec_LName] = @Rec_LName, [Rec_Address] = @Rec_Address, [Rec_City] = @Rec_City, [Rec_State] = @Rec_State, [Rec_Zip] = @Rec_Zip, [Rec_Country] = @Rec_Country, [Rec_Citizen] = @Rec_Citizen, [Rec_Email] = @Rec_Email, [Rec_DOB] = @Rec_DOB, [Rec_HomePhone] = @Rec_HomePhone, [Rec_CellPhone] = @Rec_CellPhone, [Rec_FatherName] = @Rec_FatherName, [Rec_FatherOcc] = @Rec_FatherOcc, [Rec_MotherName] = @Rec_MotherName, [Rec_MotherOcc] = @Rec_MotherOcc, [Rec_App2Cal] = @Rec_App2Cal, [Rec_Reg2NCAA] = @Rec_Reg2NCAA, [Rec_NCAA_ID] = @Rec_NCAA_ID, [Rec_FAFSA] = @Rec_FAFSA, [Rec_HSName] = @Rec_HSName, [Rec_HSGradYear] = @Rec_HSGradYear, [Rec_HSGPA] = @Rec_HSGPA, [Rec_SAT_Verbal] = @Rec_SAT_Verbal, [Rec_SAT_Math] = @Rec_SAT_Math, [Rec_SAT_Tot] = @Rec_SAT_Tot, [Rec_ACT] = @Rec_ACT, [Rec_Acad_Honors] = @Rec_Acad_Honors, [Rec_Poss_Major] = @Rec_Poss_Major, [Rec_JCName] = @Rec_JCName, [Rec_JC_NumSem] = @Rec_JC_NumSem, [Rec_JCGPA] = @Rec_JCGPA, [Rec_JC_Tot_Units] = @Rec_JC_Tot_Units, [Rec_DateAACompleted] = @Rec_DateAACompleted, [Rec_JC_Coach_Name] = @Rec_JC_Coach_Name, [Rec_JC_Coach_Email] = @Rec_JC_Coach_Email, [Rec_JC_Seasons_Played] = @Rec_JC_Seasons_Played, [Rec_PrimaryPosition] = @Rec_PrimaryPosition, [Rec_SecondaryPosition] = @Rec_SecondaryPosition WHERE [Pro_Id] = @Pro_Id">
               <DeleteParameters>
                   <asp:Parameter Name="Pro_Id" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="PostDate" Type="String" />
                   <asp:Parameter Name="Sport_Id" Type="Int32" />
                   <asp:Parameter Name="Rec_FName" Type="String" />
                   <asp:Parameter Name="Rec_LName" Type="String" />
                   <asp:Parameter Name="Rec_Address" Type="String" />
                   <asp:Parameter Name="Rec_City" Type="String" />
                   <asp:Parameter Name="Rec_State" Type="String" />
                   <asp:Parameter Name="Rec_Zip" Type="Int32" />
                   <asp:Parameter Name="Rec_Country" Type="String" />
                   <asp:Parameter Name="Rec_Citizen" Type="String" />
                   <asp:Parameter Name="Rec_Email" Type="String" />
                   <asp:Parameter Name="Rec_DOB" Type="String" />
                   <asp:Parameter Name="Rec_HomePhone" Type="String" />
                   <asp:Parameter Name="Rec_CellPhone" Type="String" />
                   <asp:Parameter Name="Rec_FatherName" Type="String" />
                   <asp:Parameter Name="Rec_FatherOcc" Type="String" />
                   <asp:Parameter Name="Rec_MotherName" Type="String" />
                   <asp:Parameter Name="Rec_MotherOcc" Type="String" />
                   <asp:Parameter Name="Rec_App2Cal" Type="String" />
                   <asp:Parameter Name="Rec_Reg2NCAA" Type="String" />
                   <asp:Parameter Name="Rec_NCAA_ID" Type="String" />
                   <asp:Parameter Name="Rec_FAFSA" Type="String" />
                   <asp:Parameter Name="Rec_HSName" Type="String" />
                   <asp:Parameter Name="Rec_HSGradYear" Type="String" />
                   <asp:Parameter Name="Rec_HSGPA" Type="Double" />
                   <asp:Parameter Name="Rec_SAT_Verbal" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Math" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Tot" Type="Int32" />
                   <asp:Parameter Name="Rec_ACT" Type="Int32" />
                   <asp:Parameter Name="Rec_Acad_Honors" Type="String" />
                   <asp:Parameter Name="Rec_Poss_Major" Type="String" />
                   <asp:Parameter Name="Rec_JCName" Type="String" />
                   <asp:Parameter Name="Rec_JC_NumSem" Type="Int32" />
                   <asp:Parameter Name="Rec_JCGPA" Type="Int32" />
                   <asp:Parameter Name="Rec_JC_Tot_Units" Type="Int32" />
                   <asp:Parameter Name="Rec_DateAACompleted" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Name" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Email" Type="String" />
                   <asp:Parameter Name="Rec_JC_Seasons_Played" Type="Int32" />
                   <asp:Parameter Name="Rec_PrimaryPosition" Type="String" />
                   <asp:Parameter Name="Rec_SecondaryPosition" Type="String" />
               </InsertParameters>
               <SelectParameters>
                   <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" Type="Int32" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="PostDate" Type="String" />
                   <asp:Parameter Name="Sport_Id" Type="Int32" />
                   <asp:Parameter Name="Rec_FName" Type="String" />
                   <asp:Parameter Name="Rec_LName" Type="String" />
                   <asp:Parameter Name="Rec_Address" Type="String" />
                   <asp:Parameter Name="Rec_City" Type="String" />
                   <asp:Parameter Name="Rec_State" Type="String" />
                   <asp:Parameter Name="Rec_Zip" Type="Int32" />
                   <asp:Parameter Name="Rec_Country" Type="String" />
                   <asp:Parameter Name="Rec_Citizen" Type="String" />
                   <asp:Parameter Name="Rec_Email" Type="String" />
                   <asp:Parameter Name="Rec_DOB" Type="String" />
                   <asp:Parameter Name="Rec_HomePhone" Type="String" />
                   <asp:Parameter Name="Rec_CellPhone" Type="String" />
                   <asp:Parameter Name="Rec_FatherName" Type="String" />
                   <asp:Parameter Name="Rec_FatherOcc" Type="String" />
                   <asp:Parameter Name="Rec_MotherName" Type="String" />
                   <asp:Parameter Name="Rec_MotherOcc" Type="String" />
                   <asp:Parameter Name="Rec_App2Cal" Type="String" />
                   <asp:Parameter Name="Rec_Reg2NCAA" Type="String" />
                   <asp:Parameter Name="Rec_NCAA_ID" Type="String" />
                   <asp:Parameter Name="Rec_FAFSA" Type="String" />
                   <asp:Parameter Name="Rec_HSName" Type="String" />
                   <asp:Parameter Name="Rec_HSGradYear" Type="String" />
                   <asp:Parameter Name="Rec_HSGPA" Type="Double" />
                   <asp:Parameter Name="Rec_SAT_Verbal" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Math" Type="Int32" />
                   <asp:Parameter Name="Rec_SAT_Tot" Type="Int32" />
                   <asp:Parameter Name="Rec_ACT" Type="Int32" />
                   <asp:Parameter Name="Rec_Acad_Honors" Type="String" />
                   <asp:Parameter Name="Rec_Poss_Major" Type="String" />
                   <asp:Parameter Name="Rec_JCName" Type="String" />
                   <asp:Parameter Name="Rec_JC_NumSem" Type="Int32" />
                   <asp:Parameter Name="Rec_JCGPA" Type="Int32" />
                   <asp:Parameter Name="Rec_JC_Tot_Units" Type="Int32" />
                   <asp:Parameter Name="Rec_DateAACompleted" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Name" Type="String" />
                   <asp:Parameter Name="Rec_JC_Coach_Email" Type="String" />
                   <asp:Parameter Name="Rec_JC_Seasons_Played" Type="Int32" />
                   <asp:Parameter Name="Rec_PrimaryPosition" Type="String" />
                   <asp:Parameter Name="Rec_SecondaryPosition" Type="String" />
                   <asp:Parameter Name="Pro_Id" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
        </asp:Panel>
    
    
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        <asp:Button ID="btnPersonal3" class="btn btn-outline-primary" runat="server" Text="Personal" OnClick="btnPersonal3_Click" />
        <asp:Button ID="btnAcademic3" class="btn btn-outline-primary" runat="server" Text="Academic" OnClick="btnAcademic3_Click" />
        <asp:Button ID="btnAthletics3" class="btn btn-primary" runat="server" Text="Athletic" ForeColor="White" />
        <asp:Button ID="btnNotes3" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes3_Click" />
        <asp:Button ID="btnSchedule3" class="btn btn-outline-primary" runat="server" Text="Schedule" OnClick="btnSchedule3_Click"/>
          <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource5">
            <ItemTemplate>
                Question:
                <asp:Label ID="SportQuestTextLabel" runat="server" Text='<%# Eval("SportQuestText") %>' />
                <br />
                Answer:
                <asp:Label ID="Answer_textLabel" runat="server" Text='<%# Eval("Answer_text") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.SportQuestions.SportQuestText, dbo.Answers.Answer_text FROM dbo.Answers INNER JOIN dbo.SportQuestions ON dbo.Answers.SportQuestID = dbo.SportQuestions.SportQuestID WHERE (dbo.Answers.Pro_Id = @Pro_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
          <br />
        <br />

    </asp:Panel>
    
    <asp:Panel ID="Panel4" runat="server" Visible="False">
        <asp:Button ID="btnPersonal4" class="btn btn-outline-primary" runat="server" Text="Personal" OnClick="btnPersonal4_Click"/>
        <asp:Button ID="btnAcademic4" class="btn btn-outline-primary" runat="server" Text="Academic" OnClick="btnAcademic4_Click" />
        <asp:Button ID="btnAthletic4" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic4_Click" />
        <asp:Button ID="btnNotes4" class="btn btn-primary" runat="server" Text="Notes" OnClick="btnNotes4_Click" ForeColor="White" />
        <asp:Button ID="btnSchedule4" class="btn btn-outline-primary" runat="server" Text="Schedule" OnClick="btnSchedule4_Click" />


    <br />
    <br />
     
    

    <br />
        <asp:TextBox ID="TxtNotes" runat="server" CssClass="auto-style1" Height="275px" style="z-index: 1; top: 420px; left: 930px" Width="609px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="AddNotes" runat="server"  OnClick="Addnotes_Click" Text="Add Note"  CssClass="auto-style15" class="btn btn-primary" style="z-index: 1;  top: 415px; left: 1120px"  />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSnote" Height="163px" Width="183px" CssClass="auto-style4" DataKeyNames="Note_id" style="z-index: 1; width: 245px; height: 163px; top: 475px; left: 930px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            <asp:BoundField DataField="NPost_date" HeaderText="Post Date" SortExpression="NPost_date" />
            <asp:BoundField DataField="Note_id" HeaderText="Note ID" InsertVisible="False" ReadOnly="True" SortExpression="Note_id" />
        </Columns>
    </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDSnote" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT Note, NPost_date, Note_id FROM dbo.Notes WHERE (Pro_id = @Pro_id)" InsertCommand="INSERT INTO [Notes] ([post_date], [Notes]) VALUES (@post_date, @Notes)" DeleteCommand="DELETE FROM dbo.Notes WHERE (Note_id = @Note_id)">
        <DeleteParameters>
            <asp:Parameter Name="Note_id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="post_date" />
            <asp:Parameter Name="Notes" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_id" QueryStringField="Pro_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Panel>


    <asp:Panel ID="Panel5" runat="server" Visible="False">
        <asp:Button ID="btnPersonal5" class="btn btn-outline-primary" runat="server" Text="Personal" OnClick="btnPersonal5_Click"/>
        <asp:Button ID="btnAcademic5" class="btn btn-outline-primary" runat="server" Text="Academic" OnClick="btnAcademic5_Click" />
        <asp:Button ID="btnAthletic5" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic5_Click" />
        <asp:Button ID="btnNotes5" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes5_Click"  />
        <asp:Button ID="btnSchedule5" class="btn btn-primary" runat="server" Text="Schedule" ForeColor="White" OnClick="btnSchedule5_Click"/>

   


        <br />

   


    <br />

    <asp:Button ID="ShowAddbtn" runat="server" OnClick="Showbtn_Click" Text="Add Schedule Info" />

        <br />
    <p class="auto-style1">
    <asp:Label ID="Namelbl" runat="server" CssClass="auto-style11"></asp:Label>

        <br />
        <asp:Table ID="AddSchTbl" runat="server" BackColor="#D9230F" BorderColor="black" BorderWidth="2" CellPadding="5" CellSpacing="5" CssClass="auto-style10" Font-Names="Palatino" Font-Size="X-Large" ForeColor="Snow" Visible="False">
            <asp:TableHeaderRow runat="server" BackColor="#D9230F" Font-Bold="true" ForeColor="Snow">
                <asp:TableHeaderCell>Add Schedule</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="TableRow1" runat="server" BackColor="#D9230F">
                <asp:TableCell>Tournament:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TmentTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server" BackColor="#D9230F">
                <asp:TableCell>Location:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="LocationTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server" BackColor="#D9230F">
                <asp:TableCell>Date: MM/DD/YYYY</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="DateTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow4" runat="server" BackColor="#D9230F">
                <asp:TableCell>Times:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TimeTxt" runat="server" placeholder="Separate times with commas."></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow5" runat="server" BackColor="#D9230F">
                <asp:TableCell>Team:</asp:TableCell>
                <asp:TableCell>  <asp:TextBox ID="TeamTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow runat="server" BackColor="#D9230F">
                <asp:TableCell ColumnSpan="3" Font-Italic="true" HorizontalAlign="Right">
                   <asp:Button ID="Insertdatabtn" runat="server" Text="InsertData" OnClick="Insertdatabtn_click"  />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" CellPadding="4" DataKeyNames="Sch_ID" datasourceid="SqlDataSource4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Date" DataFormatString="{0:MM/DD/YYYY}" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="Sch_ID" HeaderText="Schedule #" InsertVisible="False" ReadOnly="True" SortExpression="Sch_ID" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#D9230F" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#D9230F" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" DeleteCommand="DELETE FROM Schedule WHERE (Sch_ID = @Sch_ID)" SelectCommand="SELECT dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Date, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Sch_ID FROM dbo.Schedule INNER JOIN dbo.profile ON dbo.Schedule.Pro_id = dbo.profile.Pro_Id WHERE (dbo.Schedule.Pro_id = @Pro_id)">
        <DeleteParameters>
            <asp:Parameter Name="Sch_ID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Pro_id" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:Button ID="Hidebtn" runat="server" CssClass="auto-style13" OnClick="Hide_Click" Text="Hide" Visible="False" />
    </p>
    <br />

    <br />
    <br />
    <br />
    
       </asp:Panel>
    </asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Profile</li>
    </ol>
</asp:Content>



