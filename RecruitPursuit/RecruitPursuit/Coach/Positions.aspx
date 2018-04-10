<%@ Page Title="" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Positions.aspx.cs" Inherits="Coach_Positions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="My sport doesn't have positions." AutoPostBack="True" /> <br /> <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
    <asp:Label ID="lblOptions" runat="server" Text="What positions does your team have?"></asp:Label>
    <br /><br />
    Option 1:&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 2:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt2" runat="server"></asp:TextBox>
    <br />
    Option 3:&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt3" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 4:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt4" runat="server"></asp:TextBox>
    <br />
    Option 5:&nbsp;&nbsp; <asp:TextBox ID="TextBoxOpt5" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 6:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt6" runat="server"></asp:TextBox>
    <br />
    Option 7:&nbsp;&nbsp; <asp:TextBox ID="TextBoxOpt7" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 8:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxOpt8" runat="server"></asp:TextBox>
    <br />
    Option 9:&nbsp;&nbsp; <asp:TextBox ID="TextBoxOpt9" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 10:&nbsp;
    <asp:TextBox ID="TextBoxOpt10" runat="server"></asp:TextBox>

    </asp:PlaceHolder>
    <br />
    <br />
    <asp:PlaceHolder  ID="PlaceHolder2" runat="server" Visible="False">
        Option 11:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 12:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Option 13:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 14:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    Option 15:&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 16:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    Option 17:&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 18:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    Option 19:&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 20:&nbsp; &nbsp;
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    </asp:PlaceHolder>
    <br />
    <br />
    <asp:PlaceHolder ID="PlaceHolder3" runat="server" Visible="False">
        Option 21:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 22:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <br />
    Option 23:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 24:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    <br />
    Option 25:&nbsp;&nbsp; <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 26:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
    <br />
    Option 27:&nbsp;&nbsp; <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 28:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />
    Option 29:&nbsp;&nbsp; <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 30:&nbsp; &nbsp;
    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
    </asp:PlaceHolder>
        <br />
        <asp:Button ID="BtnShow" runat="server" OnClick="BtnShow_Click" Text="Show More" />
        <asp:Button ID="btnLess" runat="server" OnClick="btnLess_Click" Text="Show Less" Width="97px" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
</asp:Content>

