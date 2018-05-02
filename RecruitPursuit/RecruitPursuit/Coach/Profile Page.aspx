<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    
    <style type="text/css">
    .auto-style1 {
        width: 1011px;
    }
    .auto-style2 {
        width: 139px;
        height: 29px;
    }
        .auto-style3 {
            font-size: medium;
            font-weight: 700;
        }
        .auto-style4 {
            font-size: medium;
        }

        .auto-style5 {
            font-size: large;
        }

    </style>
  
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
     <asp:DataList ID="DataList2" runat="server" DataKeyField="Pro_Id" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                  <h1>
                        <asp:Label ID="Rec_FNameLabel" runat="server" Text='<%# Eval("Rec_FName") %>' />
                        &nbsp;<asp:Label ID="Rec_LNameLabel" runat="server" Text='<%# Eval("Rec_LName") %>' />
                    </h1>
                   
                </ItemTemplate>
            </asp:DataList>   
    
  
    
           <asp:ScriptManager ID="asm" runat="server" />
     
        <asp:Panel ID="PanelStar1" runat="server" Visible="True">
        <span class="fa fa-star checked" style="font-size:31px"></span>
        <span class="fa fa-star " style="font-size:31px"></span>
        <span class="fa fa-star "style="font-size:31px"></span>
        <span class="fa fa-star "style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        </asp:Panel>

        <asp:Panel ID="PanelStar2" runat="server" Visible="False">
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked" style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        </asp:Panel>

        <asp:Panel ID="PanelStar3" runat="server" Visible="False">
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked" style="font-size:31px"></span>
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        </asp:Panel>

        <asp:Panel ID="PanelStar4" runat="server" Visible="False">
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked" style="font-size:31px"></span>
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star"style="font-size:31px"></span>
        </asp:Panel>

        <asp:Panel ID="PanelStar5" runat="server" Visible="False">
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked" style="font-size:31px"></span>
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked"style="font-size:31px"></span>
        <span class="fa fa-star checked"style="font-size:31px"></span>
        </asp:Panel>
      <br />
      
      <div style="float: left">
             <asp:TextBox ID="Slider1" runat="server" AutoPostBack="true" />
              </div>
        <div style="float: left">
           <asp:Textbox ID="SliderValue" runat="server" AutoPostBack="true" Height="0px" Width="0px" Wrap="False" />
            </div>
           <cc1:SliderExtender ID="se1" runat="server" BoundControlID="SliderValue" Maximum="5" Minimum="1" TargetControlId="Slider1" />
         
      <br />
     <br />
    <asp:Panel ID="Panel1" runat="server">

        <asp:Button ID="btnPersonal1" class="btn btn-primary" runat="server" Text="Personal" ForeColor="White" />
        <asp:Button ID="btnAcademic1" class="btn btn-outline-primary" runat="server" Text="Academic" OnClick="btnAcademic1_Click" />
        <asp:Button ID="btnAthletic1" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic1_Click" />
        <asp:Button ID="btnNotes1" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes1_Click" />
        <asp:Button ID="btnSchedule1" class="btn btn-outline-primary" runat="server" Text="Schedule" OnClick="btnSchedule1_Click"/>
        <br />
        <br />
               
            <asp:DataList ID="listPersonal" runat="server" DataKeyField="Pro_Id" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                
                    <strong> <span class="auto-style5">Address:</span></strong><span class="auto-style5">
                    <asp:Label ID="Rec_ZipLabel" runat="server" Text='<%# Eval("Rec_Zip") %>' />
                    <br />
                    <br />
                    <strong>Country:</strong>
                    <asp:Label ID="Rec_CityLabel" runat="server" Text='<%# Eval("Rec_City") %>' />
                    <br />
                    <br />
                    <strong>State:</strong>
                    <asp:Label ID="Rec_StateLabel" runat="server" Text='<%# Eval("Rec_State") %>' />
                    <br />
                    <br />
                    <strong>Zip:</strong>
                    <asp:Label ID="Rec_AddressLabel" runat="server" Text='<%# Eval("Rec_Address") %>' />
                    <br />
                    <br />
                    <strong>City: </strong>&nbsp;<asp:Label ID="Rec_CitizenLabel" runat="server" Text='<%# Eval("Rec_Citizen") %>' />
                    <br />
                    <br />
                    <strong>Email:</strong>
                    <asp:Label ID="Rec_CountryLabel" runat="server" Text='<%# Eval("Rec_Country") %>' />
                    <br />
                    <br />
                    <strong>Citizenship:</strong>
                    <asp:Label ID="Rec_DOBLabel" runat="server" Text='<%# Eval("Rec_DOB") %>' />
                    <br />
                    <br />
                    <strong>Home Phone:</strong>
                    <asp:Label ID="Rec_EmailLabel" runat="server" Text='<%# Eval("Rec_Email") %>' />
                    <br />
                    <br />
                    <strong>DOB:</strong>
                    <asp:Label ID="Rec_CellPhoneLabel" runat="server" Text='<%# Eval("Rec_CellPhone") %>' />
                    <br />
                    <br />
                    <strong>Father Name:</strong>
                    <asp:Label ID="Rec_HomePhoneLabel" runat="server" Text='<%# Eval("Rec_HomePhone") %>' />
                    <br />
                    <br />
                    <strong>Cell Phone:</strong>
                    <asp:Label ID="Rec_FatherOccLabel" runat="server" Text='<%# Eval("Rec_FatherOcc") %>' />
                    <br />
                    <br />
                    <strong>Mother Name:</strong>
                    <asp:Label ID="Rec_FatherNameLabel" runat="server" Text='<%# Eval("Rec_FatherName") %>' />
                    <br />
                    <br />
                    <strong>Father Occupation:</strong>
                    <asp:Label ID="Rec_MotherOccLabel" runat="server" Text='<%# Eval("Rec_MotherOcc") %>' />
                    <br />
                    <br />
                    <strong>Applied to Cal U?</strong>
                    <asp:Label ID="Rec_MotherNameLabel" runat="server" Text='<%# Eval("Rec_MotherName") %>' />
                    <br />
                    <br />
                    <strong>Mother Occupation:</strong>
                    <asp:Label ID="Rec_Reg2NCAALabel" runat="server" Text='<%# Eval("Rec_Reg2NCAA") %>' />
                    <br />
                    <br />
                    <strong>NCAA ID: </strong>&nbsp;<asp:Label ID="Rec_App2CalLabel" runat="server" Text='<%# Eval("Rec_App2Cal") %>' />
                    <br />
                    <br />
                    <strong>Registered to NCAA?</strong>
                    <asp:Label ID="Rec_NCAA_IDLabel" runat="server" Text='<%# Eval("Rec_NCAA_ID") %>' />
                    <br />
                    <br />
                    <strong>FAFSA:</strong>
                    <asp:Label ID="Rec_FAFSALabel" runat="server" Text='<%# Eval("Rec_FAFSA") %>' />
                    </span>
                    <br />
                    </span>
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
        
           <br />
  
            
            </asp:Panel>
 

           
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:Button ID="btnPersonal2" class="btn btn-outline-primary" runat="server" Text="Personal" OnClick="btnPersonal2_Click" />
        <asp:Button ID="btnAcademic2" class="btn btn-primary" runat="server" Text="Academic" ForeColor="White" />
        <asp:Button ID="btnAthletic2" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic2_Click" />
        <asp:Button ID="btnNotes2" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes2_Click" />
        <asp:Button ID="btnSchedule2" class="btn btn-outline-primary" runat="server" Text="Schedule" OnClick="btnSchedule2_Click"/>
        <asp:Button ID="btnDelete2" runat="server" Text="Delete" class="btn btn-outline-primary" OnClick="btnDelete2_Click" />
         <br />
        <br />
        <asp:DataList ID="listAcademic" runat="server" DataKeyField="Pro_Id" DataSourceID="SqlDataSource3">
               <ItemTemplate>
                  <strong><span class="auto-style5">Graduation Year:</span></strong><span class="auto-style5">
                   <asp:Label ID="Rec_HSGradYearLabel" runat="server" Text='<%# Eval("Rec_HSGradYear") %>' />
                   <br />
                   <br />
                   <strong>High School:</strong>
                   <asp:Label ID="Rec_HSNameLabel" runat="server" Text='<%# Eval("Rec_HSName") %>' />
                   <br />
                   <br />
                   <strong>GPA: </strong>
                   <asp:Label ID="Rec_HSGPALabel" runat="server" Text='<%# Eval("Rec_HSGPA") %>' />
                   <br />
                   <br />
                   <strong>SAT Verbal:</strong>
                   <asp:Label ID="Rec_SAT_VerbalLabel" runat="server" Text='<%# Eval("Rec_SAT_Verbal") %>' />
                   <br />
                   <br />
                   <strong>SAT Math:</strong>
                   <asp:Label ID="Rec_SAT_MathLabel" runat="server" Text='<%# Eval("Rec_SAT_Math") %>' />
                   <br />
                   <br />
                   <strong>SAT Total:</strong>
                   <asp:Label ID="Rec_SAT_TotLabel" runat="server" Text='<%# Eval("Rec_SAT_Tot") %>' />
                   <br />
                   <br />
                   <strong>ACT:</strong>
                   <asp:Label ID="Rec_ACTLabel" runat="server" Text='<%# Eval("Rec_ACT") %>' />
                   <br />
                   <br />
                   <strong>Academic Honors:</strong>
                   <asp:Label ID="Rec_Acad_HonorsLabel" runat="server" Text='<%# Eval("Rec_Acad_Honors") %>' />
                   <br />
                   <br />
                   <strong>Possible Major:</strong>
                   <asp:Label ID="Rec_Poss_MajorLabel" runat="server" Text='<%# Eval("Rec_Poss_Major") %>' />
                   <br />
                   <br />
                   <strong>Junior College Name:</strong>
                   <asp:Label ID="Rec_JCNameLabel" runat="server" Text='<%# Eval("Rec_JCName") %>' />
                   <br />
                   <br />
                   <strong>Number of Semesters:</strong>
                   <asp:Label ID="Rec_JC_NumSemLabel" runat="server" Text='<%# Eval("Rec_JC_NumSem") %>' />
                   <br />
                   <br />
                   <strong>Junior College GPA:</strong>
                   <asp:Label ID="Rec_JCGPALabel" runat="server" Text='<%# Eval("Rec_JCGPA") %>' />
                   <br />
                   <br />
                   <strong>Total Units:</strong>
                   <asp:Label ID="Rec_JC_Tot_UnitsLabel" runat="server" Text='<%# Eval("Rec_JC_Tot_Units") %>' />
                   <br />
                   <br />
                   <strong>Date AA Completed:</strong>
                   <asp:Label ID="Rec_DateAACompletedLabel" runat="server" Text='<%# Eval("Rec_DateAACompleted") %>' />
                   <br />
                   <br />
                   <strong>Junior College Coach_Name:</strong>
                   <asp:Label ID="Rec_JC_Coach_NameLabel" runat="server" Text='<%# Eval("Rec_JC_Coach_Name") %>' />
                   <br />
                   <br />
                   <strong>Junior College Coach_Email:</strong>
                   <asp:Label ID="Rec_JC_Coach_EmailLabel" runat="server" Text='<%# Eval("Rec_JC_Coach_Email") %>' />
                   <br />
                   <br />
                   <strong>Junior College Seasons_Played:</strong>
                   <asp:Label ID="Rec_JC_Seasons_PlayedLabel" runat="server" Text='<%# Eval("Rec_JC_Seasons_Played") %>' />
                   </span></span>
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
          <asp:Button ID="btnDelete3" runat="server" Text="Delete" class="btn btn-outline-primary" OnClick="btnDelete3_Click" />
        <br />
        <br />
        
        <span class="auto-style3">
        
        <br />
        <br />
        <br />
        <asp:DataList ID="dlSportQuestions" runat="server" DataSourceID="SqlDataSource5">
            <ItemTemplate>
                <span class="auto-style3">
               <strong> Question:</strong>
                <asp:Label ID="SportQuestTextLabel" runat="server" Text='<%# Eval("SportQuestText") %>' />
                <br />
            <strong> Answer: </strong>
                <asp:Label ID="Answer_textLabel" runat="server" Text='<%# Eval("Answer_text") %>' />
                <br />
                <br />
                    </span>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT dbo.SportQuestions.SportQuestText, dbo.Answers.Answer_text FROM dbo.Answers INNER JOIN dbo.SportQuestions ON dbo.Answers.SportQuestID = dbo.SportQuestions.SportQuestID WHERE (dbo.Answers.Pro_Id = @Pro_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" />
            </SelectParameters>
        </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Rec_FName], [Rec_LName] FROM [profile] WHERE ([Pro_Id] = @Pro_Id)">
              <SelectParameters>
                  <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" Type="Int32" />
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
        <asp:Button ID="btnDelete4" runat="server" class="btn btn-outline-primary" Text="Delete" OnClick="btnDelete4_Click"  />


    <br />
    <br />
     
    

    <br />
        <asp:TextBox ID="TxtNotes" runat="server" Height="275px" style="z-index: 1; top: 420px; left: 930px; text-align: left;" Width="609px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="AddNotes" runat="server"  OnClick="Addnotes_Click" Text="Add Note"  CssClass="auto-style15" class="btn btn-primary" style="z-index: 1;  top: 415px; left: 1120px"  />
        <br />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSnote" DataKeyNames="Note_id" CellPadding="5" >
        <Columns>
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" ItemStyle-Width="300px" HeaderStyle-Width="300px" />
            <asp:BoundField DataField="NPost_date" HeaderText="Post Date" SortExpression="NPost_date" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />

        </Columns>
        <HeaderStyle BackColor="#D9230F" ForeColor="White" />
    </asp:GridView>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <asp:Button ID="btnDelete5" runat="server" class="btn btn-outline-primary" Text="Delete" OnClick="btnDelete5_Click" />

   


        <br />

   


    <br />

    <asp:Button ID="ShowAddbtn" runat="server" OnClick="Showbtn_Click" Text="Add Schedule Info" />

        <br />
    

        <br />
        <asp:Table ID="AddSchTbl" runat="server" BackColor="#D9230F" BorderColor="black" BorderWidth="2" CellPadding="5" CellSpacing="5" CssClass="auto-style10" Font-Names="Palatino" Font-Size="X-Large" ForeColor="Snow" Visible="False">
            
            <asp:TableRow ID="TableRow1" runat="server" BackColor="#D9230F">
                <asp:TableCell>Tournament:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TmentTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server" BackColor="#D9230F">
                <asp:TableCell>Location:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="LocationTxt" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server" BackColor="#D9230F">
                <asp:TableCell>Start Date: </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="StartDateTxt" placeholder=" MM/DD/YYYY" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow6" runat="server" BackColor="#D9230F">
                <asp:TableCell>End Date:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="EndDateTxt" placeholder=" MM/DD/YYYY" runat="server"></asp:TextBox></asp:TableCell>
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
                   <asp:Button ID="Insertdatabtn" class="btn btn-secondary btn-lg btn-block" runat="server" Text="Add" OnClick="Insertdatabtn_click" Font-Size="Medium" />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>

        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" CellPadding="4" DataKeyNames="Sch_ID" datasourceid="SqlDataSource4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tournament" HeaderText="Tournament" SortExpression="Tournament" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate"  DataFormatString="{0:MM/dd/yyyy}" />
                <asp:BoundField DataField="EndDate" HeaderText="End Date" SortExpression="EndDate"  DataFormatString="{0:MM/dd/yyyy}" />
                <asp:BoundField DataField="Time" HeaderText="Times" SortExpression="Time" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" DeleteCommand="DELETE FROM [Schedule] WHERE [Sch_ID] = @Sch_ID" SelectCommand="SELECT * FROM [Schedule] WHERE ([Pro_id] = @Pro_id)" InsertCommand="INSERT INTO [Schedule] ([Pro_id], [Tournament], [Location], [StartDate], [EndDate], [Time], [Team]) VALUES (@Pro_id, @Tournament, @Location, @StartDate, @EndDate, @Time, @Team)" UpdateCommand="UPDATE [Schedule] SET [Pro_id] = @Pro_id, [Tournament] = @Tournament, [Location] = @Location, [StartDate] = @StartDate, [EndDate] = @EndDate, [Time] = @Time, [Team] = @Team WHERE [Sch_ID] = @Sch_ID">
        <DeleteParameters>
            <asp:Parameter Name="Sch_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pro_id" Type="Int32" />
            <asp:Parameter Name="Tournament" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter DbType="Date" Name="StartDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Team" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_id" QueryStringField="Pro_Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pro_id" Type="Int32" />
            <asp:Parameter Name="Tournament" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter DbType="Date" Name="StartDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Team" Type="String" />
            <asp:Parameter Name="Sch_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />

    <br />
    <br />
    <br />
    
       </asp:Panel>
    <asp:Panel runat="server" ID="Panel6" Visible="false">
        <asp:Button ID="btnPersonal6" class="btn btn-outline-primary" runat="server" Text="Personal" OnClick="btnPersonal5_Click"/>
        <asp:Button ID="btnAcademic6" class="btn btn-outline-primary" runat="server" Text="Academic" OnClick="btnAcademic5_Click" />
        <asp:Button ID="btnAthletic6" class="btn btn-outline-primary" runat="server" Text="Athletic" OnClick="btnAthletic5_Click" />
        <asp:Button ID="btnNotes6" class="btn btn-outline-primary" runat="server" Text="Notes" OnClick="btnNotes5_Click"  />
        <asp:Button ID="btnSchedule6" class="btn btn-outline-primary" runat="server" Text="Schedule"  OnClick="btnSchedule5_Click"/>
        <asp:Button ID="btnDelete6" runat="server" class="btn btn-primary" Text="Delete" ForeColor="White" />
        <br />
        <br />
        Upon successful deletion, you will be redirected back to the Home page.<br /> Are you sure you want to delete this recruit?<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDeleteConfirm" runat="server" Text="Delete" OnClick="btnDeleteConfirm_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDeleteCancel" runat="server" OnClick="btnDeleteCancel_Click" Text="Cancel" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [profile] WHERE ([Pro_Id] = @Pro_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Pro_Id" QueryStringField="Pro_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </asp:Panel>
     </div>
    </asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"></li>
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Profile</li>
    </ol>
</asp:Content>



