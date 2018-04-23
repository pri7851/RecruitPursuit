<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">
        <h1 class="display-3">Welcome</h1>
  <hr class="my-4">
  <h4>Please select one of the following options below:</h4>
  <p class="lead">
  
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Administrator" class="btn btn-primary btn-lg" BackColor="#CC0000" ForeColor="White" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Coach" class="btn btn-primary btn-lg" BackColor="#CC0000" ForeColor="White" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="btn_Recruit" runat="server" class="btn btn-primary btn-lg" OnClick="btn_Recruit_Click"  Text="Recruit" BackColor="#CC0000" ForeColor="White" />
  </p>
</div>
       
    <p>
   
    <p>
        
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Sport_Name], [Sport_Id] FROM [Sport]"></asp:SqlDataSource>
    </p>
    </asp:Content>

