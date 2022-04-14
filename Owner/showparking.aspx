<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="showparking.aspx.cs" Inherits="Owner_showparking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style>
   .form-control
   {
      border:1px solid black;
      padding-left:10px;
     }
   
   .form-control:focus
   {
        border:1px solid black;
      
   }
   
   td,th
   {
      border:1px solid grey!important; 
   }
   
   .btn
   {
       margin-bottom:10px;
   }
   
   
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
<asp:View ID="View1" runat="server">
<div class="card">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px"><i class="fa fa-car" aria-hidden="true"></i>Parking Allocation</h2>
          <div class="col-md-4"></div>
            <div class="col-md-4">
               <table class="table table-bordered">
            <tr>
             
              <th>ALLODATE</th>
              <th>PARKID</th>
              <th>VIEW</th>
             
            </tr>
            <asp:Repeater ID="rptpark" runat="server" onitemcommand="rptpark_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("allodate" , "{0:dd/MM/yyyy}")%></td>
                <td><%# Eval("parkid") %></td>
               <td><asp:Button class="btn btn-danger" ID="btnview" runat="server" CommandArgument='<%# Eval("parkid") %>' runat="server" Text="Detail" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
         </div>
         <asp:Button class="btn btn-success" ID="Button1" runat="server" 
         Text="Back" style="margin-left:750px" onclick="Button1_Click"  
        />
         </div>
         
         </div>
         
</asp:View>
<asp:View ID="View2" runat="server">

<div class="card">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px"><i class="fa fa-car" aria-hidden="true"></i>Parking Details</h2>
          <div class="col-md-4"></div>
            <div class="col-md-4">

         
               <table class="table table-bordered">
            <tr>
              <th>LOCATION</th>
              <th>SLOT</th>
              <th>PARKSIZE</th>
              <th>STATUS</th>
             
            </tr>
            <asp:Repeater ID="rptpark1" runat="server">
            <ItemTemplate>
             <tr>
                <td><%# Eval("location")%></td>
                <td><%# Eval("slot") %></td>
                <td><%# Eval("parksize") %></td>
                 <td><%# Eval("status") %></td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            <div class="row">
<div class="form-group text-center">
  <asp:Button  class ="btn btn-success" ID="btnback" runat="server"  
        style="margin-bottom:15px" Text="Go Back" onclick="btnback_Click"  />
 </div>
 </div>
            </div>
         </div>
         </div>
         
         </div>
  </asp:View>
  </asp:MultiView>

</asp:Content>

