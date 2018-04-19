<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Coach.master" CodeFile="Pick Positions.aspx.cs" Inherits="Coach_Pick_Positions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Position_Id">
         <Columns>
             <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
         </Columns>
     </asp:GridView>

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitPursuitConnectionStringMain %>" SelectCommand="SELECT * FROM [Positions] WHERE (([Sport_Id] = @Sport_Id) AND ([Position] &lt;&gt; @Position))" DeleteCommand="DELETE FROM [Positions] WHERE [Position_Id] = @original_Position_Id" InsertCommand="INSERT INTO [Positions] ([Sport_Id], [Position]) VALUES (@Sport_Id, @Position)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Positions] SET [Position] = @Position WHERE [Position_Id] = @original_Position_Id">
        <DeleteParameters>
            <asp:Parameter Name="original_Position_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sport_Id" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Sport_Id" SessionField="SportID" Type="Int32" />
            <asp:Parameter DefaultValue="null" Name="Position" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="original_Position_Id" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
     
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">

    <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item"><a href="Questionnaire.aspx">Questionnaire</a></li>
        
        <li class="breadcrumb-item active">Edit Positions</li>
    </ol>
</asp:Content>
