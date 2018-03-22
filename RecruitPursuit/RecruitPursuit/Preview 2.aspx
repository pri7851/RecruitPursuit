<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Preview 2.aspx.cs" Inherits="Preview_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           
    <h2>Personal Information</h2>

    Name:  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
    <br />
    Address:  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
    <br />
    City:  <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        <br />
    <br />
    State:  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
    <br />
    Zip Code:  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
    <br />
    Country:  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
    <br />
    Citizenship:  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
        <br />
    Email:  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
        <br />
    Date of Birth:  <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
        <br />
    Home Phone Number:  <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
        <br />
    Cell Phone Number:  <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <br />
        <br />
    Father&#39;s Name:  <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    <br />
        <br />
    Father&#39;s Occupation:  <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <br />
        <br />
    Mother&#39;s Name:  <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
    <br />
        <br />
    Mother&#39;s Occupation:  <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    <br />
        <br />
    Have you applied to Cal U?<br />
        <br />
    Have you registered at eligibilitycenter.org (NCAA requirement)?<br />
        <br />
    NCAA Eligibility Center ID Number:&nbsp; <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    <br />
        <br />
    Have you applied for Financial Aid with FAFSA?<br />
    <br />
        </div>
        <div>
    <h2>Academic Information</h2>
        <h4>High School Information</h4>
        Name of High School:  <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    <br />

            <br />

        High School Graduation Year:  <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />

            <br />

        Cumulative Grade-Point Average:  <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
    <br />
 
            <br />
 
        SAT Verbal:  <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
    <br />

            <br />

        SAT Math:  <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
    <br />

            <br />

        SAT Total:  <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
    <br />
  
            <br />
  
        ACT Score (if applicable):  <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
    <br />

            <br />

        Academic Honors:  <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
    <br />
 
            <br />
 
        Possible Major at Cal U:<br />
            <h4>Junior/Previous College Information (If Applicable)</h4>
    Name of Junior/Previous College: <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            <br />
            <br />
    Total Number Full-Time Semesters:  <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            <br />
            <br />
    Cumulative Grade-Point Average:  <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            <br />
            <br />
    Total Number of Units Completed:  <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            <br />
            <br />
    Date AA Completed:  <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            <br />
            <br />
    JC/Previous Coach&#39;s Name:  <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
            <br />
            <br />
    JC/Previous Coach&#39;s Phone:  <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
            <br />
            <br />
    Number of Seasons played at JC/Previous School:  <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
            <br />

        </div>
        <div>
            <h1>Athletic Information</h1>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SportQuestText" HeaderText="SportQuestText" SortExpression="SportQuestText" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\JANE\RECRUITPURSUIT.MDFConnectionString %>" SelectCommand="SELECT [SportQuestText] FROM [SportQuestions]"></asp:SqlDataSource>
    </form>
</body>
</html>
