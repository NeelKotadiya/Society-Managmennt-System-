<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="Technician.aspx.cs" Inherits="Owner_Technician" %>

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
            <div > <h2 style="text-align:center ; color:#e00a27 ; font-family:Times New Roman">TECHNICIAN DETAILS</h2></div>
            
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
         
          <table class="table table-bordered">
            <tr>
              <th>TECH NAME</th>
              <th>CONTACT NUMBER</th>
              <th>TECHTYPE</th>
              <th>EXPERT</th>
             </tr>
            <asp:Repeater ID="rptTech" runat="server" >
            <ItemTemplate>
             <tr>
                <td><%# Eval("Techname") %></td>
                <td><%# Eval("Contactno") %></td>
                <td><%# Eval("TechType") %></td>
                 <td><%# Eval("Expert") %></td>
                </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
             <div>
             <asp:Button ID="btnback" runat="server" Text="Back" BackColor="#006600" Font-Bold="True" onclick="btnback_Click" />
            </div>
    </div>
    </div>
</asp:Content>

