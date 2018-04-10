﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Preview.aspx.cs" Inherits="Coach_Preview" %>

         <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <h2>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:Label ID="lblSport" runat="server"></asp:Label>
        
        <h2>Personal Information</h2>
</h2> 
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

        
        
            <p>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Label ID="Output" runat="server"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Pro_Id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="Pro_Id" HeaderText="Pro_Id" InsertVisible="False" ReadOnly="True" SortExpression="Pro_Id" />
                        <asp:BoundField DataField="Sport_Id" HeaderText="Sport_Id" SortExpression="Sport_Id" />
                        <asp:BoundField DataField="Rec_FName" HeaderText="Rec_FName" SortExpression="Rec_FName" />
                        <asp:BoundField DataField="Rec_LName" HeaderText="Rec_LName" SortExpression="Rec_LName" />
                        <asp:BoundField DataField="Rec_Email" HeaderText="Rec_Email" SortExpression="Rec_Email" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" DeleteCommand="DELETE FROM [profile] WHERE [Pro_Id] = @Pro_Id" InsertCommand="INSERT INTO [profile] ([Sport_Id], [Rec_FName], [Rec_LName], [Rec_Email]) VALUES (@Sport_Id, @Rec_FName, @Rec_LName, @Rec_Email)" SelectCommand="SELECT [Pro_Id], [Sport_Id], [Rec_FName], [Rec_LName], [Rec_Email] FROM [profile] WHERE ([Sport_Id] = @Sport_Id)" UpdateCommand="UPDATE [profile] SET [Sport_Id] = @Sport_Id, [Rec_FName] = @Rec_FName, [Rec_LName] = @Rec_LName, [Rec_Email] = @Rec_Email WHERE [Pro_Id] = @Pro_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Pro_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sport_Id" Type="Int32" />
                        <asp:Parameter Name="Rec_FName" Type="String" />
                        <asp:Parameter Name="Rec_LName" Type="String" />
                        <asp:Parameter Name="Rec_Email" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sport_Id" Type="Int32" />
                        <asp:Parameter Name="Rec_FName" Type="String" />
                        <asp:Parameter Name="Rec_LName" Type="String" />
                        <asp:Parameter Name="Rec_Email" Type="String" />
                        <asp:Parameter Name="Pro_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <h1>Athletic Information</h1>

        
             <asp:DropDownList ID="DropDownListPositions" runat="server" DataSourceID="SqlDataSource5" DataTextField="Position" DataValueField="Position">
             </asp:DropDownList>

        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SportQuestText" HeaderText="Position" SortExpression="SportQuestText" />
                <asp:TemplateField HeaderText="Answer">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Position" DataValueField="Position">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Position" DataValueField="Position" SelectedValue='<%# Eval("Sport_Id", "{0}") %>' Width="95px">
                </asp:DropDownList>
            </EmptyDataTemplate>
        </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                 <Columns>
                     <asp:BoundField DataField="SportQuestText" HeaderText="Sport-Related Questions" SortExpression="SportQuestText" />
                     <asp:TemplateField HeaderText="Answer">
                         <ItemTemplate>
                             <asp:TextBox ID="txt_SportQuestions" runat="server"></asp:TextBox>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
             <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions] WHERE ([SportQuestText] = @SportQuestText)">
            <SelectParameters>
                <asp:Parameter DefaultValue="What is your position?" Name="SportQuestText" Type="String" />
            </SelectParameters>
             </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
            </SelectParameters>
             </asp:SqlDataSource>
             <br />
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions] WHERE ([Sport_Id] = @Sport_Id)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Sport_Id" SessionField="Sport_Id" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
    </asp:Content>
