<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Questionnaire Preview.aspx.cs" Inherits="Coach_Questionnaire_Preview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Personal Information</h2>
    Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Address:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    City:<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
    <br />
    State:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    Zip Code:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    Country:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    Citizenship:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    Email:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    Date of Birth:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    Home Phone Number:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
    Cell Phone Number:<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <br />
    Father&#39;s Name:<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    <br />
    Father&#39;s Occupation:<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <br />
    Mother&#39;s Name:<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
    <br />
    Mother&#39;s Occupation:<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    <br />
    Have you applied to Cal U?<br />
    Have you registered at eligibilitycenter.org (NCAA requirement)?<br />
    NCAA Eligibility Center ID Number:<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    <br />
    Have you applied for Financial Aid with FAFSA?<br />
    <br />
    <h2>Academic Information</h2>
        <h4>High School Information</h4>
        Name of High School:<asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    <br />

        High School Graduation Year:<asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />

        Cumulative Grade-Point Average:<asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
    <br />
 
        SAT Verbal:<asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
    <br />

        SAT Math:<asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
    <br />

        SAT Total:<asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
    <br />
  
        ACT Score (if applicable):<asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
    <br />

        Academic Honors:<br />
    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
 
        Possible Major at Cal U:<br />
    <br />
    <h4>Junior/Previous College Information (If Applicable)</h4>
    Name of Junior/Previous College:&nbsp; <br />
    Total Number Full-Time Semesters:<br />
    Cumulative Grade-Point Average:<br />
    Total Number of Units Completed:<br />
    Date AA Completed:<br />
    JC/Previous Coach&#39;s Name:<br />
    JC/Previous Coach&#39;s Phone:<br />
    Number of Seasons played at JC/Previous School:<br />
 
</asp:Content>
