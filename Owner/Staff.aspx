<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Owner_Staff" %>

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
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
<div class="row">
            <div > <h2 style="text-align:center ; color:#e00a27 ; font-family:Times New Roman">STAFF DETAILS</h2></div>
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          <table class="table table-bordered">
            <tr>
             <th>STAFF NAME</th>
             <th>CONTACT NUMBER</th>
             <th>POST</th>
             <th>IMAGE</th>
             <th>TIMING</th>
             <th>GENDER</th>
          </tr>
            <asp:Repeater ID="rptStaff" runat="server" >
            <ItemTemplate>
             <tr>
               
                <td><%# Eval("Staffname") %></td>
                <td><%# Eval("Contactno") %></td>
                <td><%# Eval("Post") %></td>
                <td> <asp:Image style="width:100px;height:100px" ID="Image2" runat="server" ImageUrl='<%# "~/admin/staffimages/" + Eval("Image") %>' /> </td>
                <td><%# Eval("Timing") %></td>
                <td><%# Eval("Gender") %></td>
            </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
            </div>
</asp:Content>

