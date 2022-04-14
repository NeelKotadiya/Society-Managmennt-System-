<%@ Page Title="" Language="C#" MasterPageFile="~/owner/ownermaster.master" AutoEventWireup="true" CodeFile="solution.aspx.cs" Inherits="owner_solution" %>

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
 <div class="card">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Your Solution</h2>
          <div class="col-md-3"></div>
            <div class="col-md-6">
  
   <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
         
          <table class="table table-bordered">
            <tr>
              <th>COMPLAINDATE</th>
              <th>COMPLAINFOR</th>
              <th>DETAILS</th>
              <th>SOLUTION</th>
            </tr>
            <asp:Repeater ID="rptsolution" runat="server">
            <ItemTemplate>
             <tr>
                <td><%# Eval("complaindate" , "{0:dd/MM/yyyy}")  %></td>
                <td><%# Eval("complainfor") %></td>
                <td><%# Eval("details")  %></td>
                <td><%# Eval("solution") %></td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            
   </div>
    <div>
       <asp:Button ID="btnback" runat="server" Text="Back" BackColor="#006600" Font-Bold="True" style="margin-left:350px ; margin-bottom:10px" onclick="btnback_Click" />
   </div>
</div>
</div>
</asp:Content>

