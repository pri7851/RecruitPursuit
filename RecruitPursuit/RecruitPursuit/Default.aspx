<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style> 
.starRating{
    width: 50px;
    height: 50px;
    cursor: pointer;
    background-repeat: no-repeat;
    display: block;
}



.FilledStars {
    background-image: url("filter star.png");
}

.WaitingStars {
    background-image: url("filter star empty.png");
}

.EmptyStars {
    background-image: url("filter star empty.png");
}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <img src="filter%20star.png" /> <div>
              <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <cc1:Rating ID="Rating1" runat="server"
                StarCssClass="starRating"
                FilledStarCssClass="FilledStars"
                WaitingStarCssClass="WaitingStars"
                EmptyStarCssClass="EmptyStars"
                MaxRating="5" 
                CurrentRating="1">
                
            </cc1:Rating>
            </ContentTemplate>
            </asp:UpdatePanel>
            </div>
    </form>
</body>
</html>
