<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Coach.master" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Profile_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
   <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#personal">Personal</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#academic">Academic</a>
  </li>
       <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#athletic">Athletic</a>
  </li>
        <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#notes">Notes</a>
  </li>
   </ul>


    <div id="myTabContent" class="tab-content">
  <div class="tab-pane fade show active" id="personal">
    <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
  </div>
  <div class="tab-pane fade" id="academic">
      <asp:GridView ID="GridView1" runat="server"></asp:GridView>
  </div>
     </div>


    </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
        <li class="breadcrumb-item active">Profile</li>
    </ol>
</asp:Content>



