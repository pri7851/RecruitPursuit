<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pick Sport.aspx.cs" Inherits="Coach_Pick_Sport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sport_Name" DataValueField="Sport_Name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT [Sport_Id], [Sport_Name] FROM [Sport]"></asp:SqlDataSource>
       
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
       
            </div>
    </form>
</body>
</html>
