<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        left: 785px;
        top: 285px;
        margin-top: 0;
            position: absolute;
            z-index: 1;
            margin-bottom: 0;
        }
    .auto-style3 {
        top: 75px;
            width: 136px;
            height: 170px;
            position: absolute;
            z-index: 1;
            left: 15px;
        }
    .auto-style4 {
        z-index: 1;
        left: 785px;
        top: 340px;
            width: 183px;
            height: 163px;
            position: absolute;
        }
        .auto-style14 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: relative;
            top: 47px;
            left: 785px;
        }
        .auto-style15 {
            color: #fff;
            background-color: #D9230F;
            border-color: #D9230F;
            position: relative;
            top: 11px;
            left: 965px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:TextBox ID="TxtNotes" runat="server" CssClass="auto-style1"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="BtnViewSch" runat="server" color="#fff" background-color = "#D9230F" border-color="#D9230F"  OnClick="BtnViewSch_Click" Text="View Schedule" CssClass="auto-style14"    />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" CssClass="auto-style3">
        <EditItemTemplate>
            Pro_Id:
            <asp:Label ID="Pro_IdLabel1" runat="server" Text='<%# Eval("Pro_Id") %>' />
            <br />
            Sport_Id:
            <asp:TextBox ID="Sport_IdTextBox" runat="server" Text='<%# Bind("Sport_Id") %>' />
            <br />
            Rec_FName:
            <asp:TextBox ID="Rec_FNameTextBox" runat="server" Text='<%# Bind("Rec_FName") %>' />
            <br />
            Rec_LName:
            <asp:TextBox ID="Rec_LNameTextBox" runat="server" Text='<%# Bind("Rec_LName") %>' />
            <br />
            Rec_Address:
            <asp:TextBox ID="Rec_AddressTextBox" runat="server" Text='<%# Bind("Rec_Address") %>' />
            <br />
            Rec_City:
            <asp:TextBox ID="Rec_CityTextBox" runat="server" Text='<%# Bind("Rec_City") %>' />
            <br />
            Rec_State:
            <asp:TextBox ID="Rec_StateTextBox" runat="server" Text='<%# Bind("Rec_State") %>' />
            <br />
            Rec_Zip:
            <asp:TextBox ID="Rec_ZipTextBox" runat="server" Text='<%# Bind("Rec_Zip") %>' />
            <br />
            Rec_Country:
            <asp:TextBox ID="Rec_CountryTextBox" runat="server" Text='<%# Bind("Rec_Country") %>' />
            <br />
            Rec_Citizen:
            <asp:TextBox ID="Rec_CitizenTextBox" runat="server" Text='<%# Bind("Rec_Citizen") %>' />
            <br />
            Rec_Email:
            <asp:TextBox ID="Rec_EmailTextBox" runat="server" Text='<%# Bind("Rec_Email") %>' />
            <br />
            Rec_DOB:
            <asp:TextBox ID="Rec_DOBTextBox" runat="server" Text='<%# Bind("Rec_DOB") %>' />
            <br />
            Rec_HomePhone:
            <asp:TextBox ID="Rec_HomePhoneTextBox" runat="server" Text='<%# Bind("Rec_HomePhone") %>' />
            <br />
            Rec_CellPhone:
            <asp:TextBox ID="Rec_CellPhoneTextBox" runat="server" Text='<%# Bind("Rec_CellPhone") %>' />
            <br />
            Rec_FatherName:
            <asp:TextBox ID="Rec_FatherNameTextBox" runat="server" Text='<%# Bind("Rec_FatherName") %>' />
            <br />
            Rec_FatherOcc:
            <asp:TextBox ID="Rec_FatherOccTextBox" runat="server" Text='<%# Bind("Rec_FatherOcc") %>' />
            <br />
            Rec_MotherName:
            <asp:TextBox ID="Rec_MotherNameTextBox" runat="server" Text='<%# Bind("Rec_MotherName") %>' />
            <br />
            Rec_MotherOcc:
            <asp:TextBox ID="Rec_MotherOccTextBox" runat="server" Text='<%# Bind("Rec_MotherOcc") %>' />
            <br />
            Rec_App2Cal:
            <asp:TextBox ID="Rec_App2CalTextBox" runat="server" Text='<%# Bind("Rec_App2Cal") %>' />
            <br />
            Rec_Reg2NCAA:
            <asp:TextBox ID="Rec_Reg2NCAATextBox" runat="server" Text='<%# Bind("Rec_Reg2NCAA") %>' />
            <br />
            Rec_NCAA_ID:
            <asp:TextBox ID="Rec_NCAA_IDTextBox" runat="server" Text='<%# Bind("Rec_NCAA_ID") %>' />
            <br />
            Rec_FAFSA:
            <asp:TextBox ID="Rec_FAFSATextBox" runat="server" Text='<%# Bind("Rec_FAFSA") %>' />
            <br />
            Rec_HSName:
            <asp:TextBox ID="Rec_HSNameTextBox" runat="server" Text='<%# Bind("Rec_HSName") %>' />
            <br />
            Rec_HSGradYear:
            <asp:TextBox ID="Rec_HSGradYearTextBox" runat="server" Text='<%# Bind("Rec_HSGradYear") %>' />
            <br />
            Rec_HSGPA:
            <asp:TextBox ID="Rec_HSGPATextBox" runat="server" Text='<%# Bind("Rec_HSGPA") %>' />
            <br />
            Rec_SAT_Verbal:
            <asp:TextBox ID="Rec_SAT_VerbalTextBox" runat="server" Text='<%# Bind("Rec_SAT_Verbal") %>' />
            <br />
            Rec_SAT_Math:
            <asp:TextBox ID="Rec_SAT_MathTextBox" runat="server" Text='<%# Bind("Rec_SAT_Math") %>' />
            <br />
            Rec_SAT_Tot:
            <asp:TextBox ID="Rec_SAT_TotTextBox" runat="server" Text='<%# Bind("Rec_SAT_Tot") %>' />
            <br />
            Rec_ACT:
            <asp:TextBox ID="Rec_ACTTextBox" runat="server" Text='<%# Bind("Rec_ACT") %>' />
            <br />
            Rec_Acad_Honors:
            <asp:TextBox ID="Rec_Acad_HonorsTextBox" runat="server" Text='<%# Bind("Rec_Acad_Honors") %>' />
            <br />
            Rec_Poss_Major:
            <asp:TextBox ID="Rec_Poss_MajorTextBox" runat="server" Text='<%# Bind("Rec_Poss_Major") %>' />
            <br />
            Rec_JCName:
            <asp:TextBox ID="Rec_JCNameTextBox" runat="server" Text='<%# Bind("Rec_JCName") %>' />
            <br />
            Rec_JC_NumSem:
            <asp:TextBox ID="Rec_JC_NumSemTextBox" runat="server" Text='<%# Bind("Rec_JC_NumSem") %>' />
            <br />
            Rec_JCGPA:
            <asp:TextBox ID="Rec_JCGPATextBox" runat="server" Text='<%# Bind("Rec_JCGPA") %>' />
            <br />
            Rec_JC_Tot_Units:
            <asp:TextBox ID="Rec_JC_Tot_UnitsTextBox" runat="server" Text='<%# Bind("Rec_JC_Tot_Units") %>' />
            <br />
            Rec_DateAACompleted:
            <asp:TextBox ID="Rec_DateAACompletedTextBox" runat="server" Text='<%# Bind("Rec_DateAACompleted") %>' />
            <br />
            Rec_JC_Coach_Name:
            <asp:TextBox ID="Rec_JC_Coach_NameTextBox" runat="server" Text='<%# Bind("Rec_JC_Coach_Name") %>' />
            <br />
            Rec_JC_Coach_Email:
            <asp:TextBox ID="Rec_JC_Coach_EmailTextBox" runat="server" Text='<%# Bind("Rec_JC_Coach_Email") %>' />
            <br />
            Rec_JC_Seasons_Played:
            <asp:TextBox ID="Rec_JC_Seasons_PlayedTextBox" runat="server" Text='<%# Bind("Rec_JC_Seasons_Played") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Sport_Id:
            <asp:TextBox ID="Sport_IdTextBox" runat="server" Text='<%# Bind("Sport_Id") %>' />
            <br />
            Rec_FName:
            <asp:TextBox ID="Rec_FNameTextBox" runat="server" Text='<%# Bind("Rec_FName") %>' />
            <br />
            Rec_LName:
            <asp:TextBox ID="Rec_LNameTextBox" runat="server" Text='<%# Bind("Rec_LName") %>' />
            <br />
            Rec_Address:
            <asp:TextBox ID="Rec_AddressTextBox" runat="server" Text='<%# Bind("Rec_Address") %>' />
            <br />
            Rec_City:
            <asp:TextBox ID="Rec_CityTextBox" runat="server" Text='<%# Bind("Rec_City") %>' />
            <br />
            Rec_State:
            <asp:TextBox ID="Rec_StateTextBox" runat="server" Text='<%# Bind("Rec_State") %>' />
            <br />
            Rec_Zip:
            <asp:TextBox ID="Rec_ZipTextBox" runat="server" Text='<%# Bind("Rec_Zip") %>' />
            <br />
            Rec_Country:
            <asp:TextBox ID="Rec_CountryTextBox" runat="server" Text='<%# Bind("Rec_Country") %>' />
            <br />
            Rec_Citizen:
            <asp:TextBox ID="Rec_CitizenTextBox" runat="server" Text='<%# Bind("Rec_Citizen") %>' />
            <br />
            Rec_Email:
            <asp:TextBox ID="Rec_EmailTextBox" runat="server" Text='<%# Bind("Rec_Email") %>' />
            <br />
            Rec_DOB:
            <asp:TextBox ID="Rec_DOBTextBox" runat="server" Text='<%# Bind("Rec_DOB") %>' />
            <br />
            Rec_HomePhone:
            <asp:TextBox ID="Rec_HomePhoneTextBox" runat="server" Text='<%# Bind("Rec_HomePhone") %>' />
            <br />
            Rec_CellPhone:
            <asp:TextBox ID="Rec_CellPhoneTextBox" runat="server" Text='<%# Bind("Rec_CellPhone") %>' />
            <br />
            Rec_FatherName:
            <asp:TextBox ID="Rec_FatherNameTextBox" runat="server" Text='<%# Bind("Rec_FatherName") %>' />
            <br />
            Rec_FatherOcc:
            <asp:TextBox ID="Rec_FatherOccTextBox" runat="server" Text='<%# Bind("Rec_FatherOcc") %>' />
            <br />
            Rec_MotherName:
            <asp:TextBox ID="Rec_MotherNameTextBox" runat="server" Text='<%# Bind("Rec_MotherName") %>' />
            <br />
            Rec_MotherOcc:
            <asp:TextBox ID="Rec_MotherOccTextBox" runat="server" Text='<%# Bind("Rec_MotherOcc") %>' />
            <br />
            Rec_App2Cal:
            <asp:TextBox ID="Rec_App2CalTextBox" runat="server" Text='<%# Bind("Rec_App2Cal") %>' />
            <br />
            Rec_Reg2NCAA:
            <asp:TextBox ID="Rec_Reg2NCAATextBox" runat="server" Text='<%# Bind("Rec_Reg2NCAA") %>' />
            <br />
            Rec_NCAA_ID:
            <asp:TextBox ID="Rec_NCAA_IDTextBox" runat="server" Text='<%# Bind("Rec_NCAA_ID") %>' />
            <br />
            Rec_FAFSA:
            <asp:TextBox ID="Rec_FAFSATextBox" runat="server" Text='<%# Bind("Rec_FAFSA") %>' />
            <br />
            Rec_HSName:
            <asp:TextBox ID="Rec_HSNameTextBox" runat="server" Text='<%# Bind("Rec_HSName") %>' />
            <br />
            Rec_HSGradYear:
            <asp:TextBox ID="Rec_HSGradYearTextBox" runat="server" Text='<%# Bind("Rec_HSGradYear") %>' />
            <br />
            Rec_HSGPA:
            <asp:TextBox ID="Rec_HSGPATextBox" runat="server" Text='<%# Bind("Rec_HSGPA") %>' />
            <br />
            Rec_SAT_Verbal:
            <asp:TextBox ID="Rec_SAT_VerbalTextBox" runat="server" Text='<%# Bind("Rec_SAT_Verbal") %>' />
            <br />
            Rec_SAT_Math:
            <asp:TextBox ID="Rec_SAT_MathTextBox" runat="server" Text='<%# Bind("Rec_SAT_Math") %>' />
            <br />
            Rec_SAT_Tot:
            <asp:TextBox ID="Rec_SAT_TotTextBox" runat="server" Text='<%# Bind("Rec_SAT_Tot") %>' />
            <br />
            Rec_ACT:
            <asp:TextBox ID="Rec_ACTTextBox" runat="server" Text='<%# Bind("Rec_ACT") %>' />
            <br />
            Rec_Acad_Honors:
            <asp:TextBox ID="Rec_Acad_HonorsTextBox" runat="server" Text='<%# Bind("Rec_Acad_Honors") %>' />
            <br />
            Rec_Poss_Major:
            <asp:TextBox ID="Rec_Poss_MajorTextBox" runat="server" Text='<%# Bind("Rec_Poss_Major") %>' />
            <br />
            Rec_JCName:
            <asp:TextBox ID="Rec_JCNameTextBox" runat="server" Text='<%# Bind("Rec_JCName") %>' />
            <br />
            Rec_JC_NumSem:
            <asp:TextBox ID="Rec_JC_NumSemTextBox" runat="server" Text='<%# Bind("Rec_JC_NumSem") %>' />
            <br />
            Rec_JCGPA:
            <asp:TextBox ID="Rec_JCGPATextBox" runat="server" Text='<%# Bind("Rec_JCGPA") %>' />
            <br />
            Rec_JC_Tot_Units:
            <asp:TextBox ID="Rec_JC_Tot_UnitsTextBox" runat="server" Text='<%# Bind("Rec_JC_Tot_Units") %>' />
            <br />
            Rec_DateAACompleted:
            <asp:TextBox ID="Rec_DateAACompletedTextBox" runat="server" Text='<%# Bind("Rec_DateAACompleted") %>' />
            <br />
            Rec_JC_Coach_Name:
            <asp:TextBox ID="Rec_JC_Coach_NameTextBox" runat="server" Text='<%# Bind("Rec_JC_Coach_Name") %>' />
            <br />
            Rec_JC_Coach_Email:
            <asp:TextBox ID="Rec_JC_Coach_EmailTextBox" runat="server" Text='<%# Bind("Rec_JC_Coach_Email") %>' />
            <br />
            Rec_JC_Seasons_Played:
            <asp:TextBox ID="Rec_JC_Seasons_PlayedTextBox" runat="server" Text='<%# Bind("Rec_JC_Seasons_Played") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Pro_Id:
            <asp:Label ID="Pro_IdLabel" runat="server" Text='<%# Eval("Pro_Id") %>' />
            <br />
            Sport_Id:
            <asp:Label ID="Sport_IdLabel" runat="server" Text='<%# Bind("Sport_Id") %>' />
            <br />
            Rec_FName:
            <asp:Label ID="Rec_FNameLabel" runat="server" Text='<%# Bind("Rec_FName") %>' />
            <br />
            Rec_LName:
            <asp:Label ID="Rec_LNameLabel" runat="server" Text='<%# Bind("Rec_LName") %>' />
            <br />
            Rec_Address:
            <asp:Label ID="Rec_AddressLabel" runat="server" Text='<%# Bind("Rec_Address") %>' />
            <br />
           

            Rec_City:
            <asp:Label ID="Rec_CityLabel" runat="server" Text='<%# Bind("Rec_City") %>' />
            <br />
            Rec_State:
            <asp:Label ID="Rec_StateLabel" runat="server" Text='<%# Bind("Rec_State") %>' />
            <br />
            Rec_Zip:
            <asp:Label ID="Rec_ZipLabel" runat="server" Text='<%# Bind("Rec_Zip") %>' />
            <br />
            Rec_Country:
            <asp:Label ID="Rec_CountryLabel" runat="server" Text='<%# Bind("Rec_Country") %>' />
            <br />
            Rec_Citizen:
            <asp:Label ID="Rec_CitizenLabel" runat="server" Text='<%# Bind("Rec_Citizen") %>' />
            <br />
            Rec_Email:
            <asp:Label ID="Rec_EmailLabel" runat="server" Text='<%# Bind("Rec_Email") %>' />
            <br />
            Rec_DOB:
            <asp:Label ID="Rec_DOBLabel" runat="server" Text='<%# Bind("Rec_DOB") %>' />
            <br />
            Rec_HomePhone:
            <asp:Label ID="Rec_HomePhoneLabel" runat="server" Text='<%# Bind("Rec_HomePhone") %>' />
            <br />
            Rec_CellPhone:
            <asp:Label ID="Rec_CellPhoneLabel" runat="server" Text='<%# Bind("Rec_CellPhone") %>' />
            <br />
            Rec_FatherName:
            <asp:Label ID="Rec_FatherNameLabel" runat="server" Text='<%# Bind("Rec_FatherName") %>' />
            <br />
            Rec_FatherOcc:
            <asp:Label ID="Rec_FatherOccLabel" runat="server" Text='<%# Bind("Rec_FatherOcc") %>' />
            <br />
            Rec_MotherName:
            <asp:Label ID="Rec_MotherNameLabel" runat="server" Text='<%# Bind("Rec_MotherName") %>' />
            <br />
            Rec_MotherOcc:
            <asp:Label ID="Rec_MotherOccLabel" runat="server" Text='<%# Bind("Rec_MotherOcc") %>' />
            <br />
            Rec_App2Cal:
            <asp:Label ID="Rec_App2CalLabel" runat="server" Text='<%# Bind("Rec_App2Cal") %>' />
            <br />
            Rec_Reg2NCAA:
            <asp:Label ID="Rec_Reg2NCAALabel" runat="server" Text='<%# Bind("Rec_Reg2NCAA") %>' />
            <br />
            Rec_NCAA_ID:
            <asp:Label ID="Rec_NCAA_IDLabel" runat="server" Text='<%# Bind("Rec_NCAA_ID") %>' />
            <br />
            Rec_FAFSA:<br />&nbsp;
            <asp:Label ID="Rec_FAFSALabel" runat="server" Text='<%# Bind("Rec_FAFSA") %>' />
            <br />
            ACADEMIC INFO<br /> Rec_HSName:
            <asp:Label ID="Rec_HSNameLabel" runat="server" Text='<%# Bind("Rec_HSName") %>' />
            <br />
            Rec_HSGradYear:
            <asp:Label ID="Rec_HSGradYearLabel" runat="server" Text='<%# Bind("Rec_HSGradYear") %>' />
            <br />
            Rec_HSGPA:
            <asp:Label ID="Rec_HSGPALabel" runat="server" Text='<%# Bind("Rec_HSGPA") %>' />
            <br />
            Rec_SAT_Verbal:
            <asp:Label ID="Rec_SAT_VerbalLabel" runat="server" Text='<%# Bind("Rec_SAT_Verbal") %>' />
            <br />
            Rec_SAT_Math:
            <asp:Label ID="Rec_SAT_MathLabel" runat="server" Text='<%# Bind("Rec_SAT_Math") %>' />
            <br />
            Rec_SAT_Tot:
            <asp:Label ID="Rec_SAT_TotLabel" runat="server" Text='<%# Bind("Rec_SAT_Tot") %>' />
            <br />
            Rec_ACT:
            <asp:Label ID="Rec_ACTLabel" runat="server" Text='<%# Bind("Rec_ACT") %>' />
            <br />
            Rec_Acad_Honors:
            <asp:Label ID="Rec_Acad_HonorsLabel" runat="server" Text='<%# Bind("Rec_Acad_Honors") %>' />
            <br />
            Rec_Poss_Major:
            <asp:Label ID="Rec_Poss_MajorLabel" runat="server" Text='<%# Bind("Rec_Poss_Major") %>' />
            <br />
            Rec_JCName:
            <asp:Label ID="Rec_JCNameLabel" runat="server" Text='<%# Bind("Rec_JCName") %>' />
            <br />
            Rec_JC_NumSem:
            <asp:Label ID="Rec_JC_NumSemLabel" runat="server" Text='<%# Bind("Rec_JC_NumSem") %>' />
            <br />
            Rec_JCGPA:
            <asp:Label ID="Rec_JCGPALabel" runat="server" Text='<%# Bind("Rec_JCGPA") %>' />
            <br />
            Rec_JC_Tot_Units:
            <asp:Label ID="Rec_JC_Tot_UnitsLabel" runat="server" Text='<%# Bind("Rec_JC_Tot_Units") %>' />
            <br />
            Rec_DateAACompleted:
            <asp:Label ID="Rec_DateAACompletedLabel" runat="server" Text='<%# Bind("Rec_DateAACompleted") %>' />
            <br />
            Rec_JC_Coach_Name:
            <asp:Label ID="Rec_JC_Coach_NameLabel" runat="server" Text='<%# Bind("Rec_JC_Coach_Name") %>' />
            <br />
            Rec_JC_Coach_Email:
            <asp:Label ID="Rec_JC_Coach_EmailLabel" runat="server" Text='<%# Bind("Rec_JC_Coach_Email") %>' />
            <br />
            Rec_JC_Seasons_Played:
            <asp:Label ID="Rec_JC_Seasons_PlayedLabel" runat="server" Text='<%# Bind("Rec_JC_Seasons_Played") %>' />
            <br />
           

        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:Button ID="AddNotes" runat="server"  OnClick="Addnotes_Click" Text="Add Note"  CssClass="auto-style15" class="btn btn-primary"  />
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSnote" Height="163px" Width="183px" CssClass="auto-style4" DataKeyNames="Note_id">
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
    </asp:Content>


