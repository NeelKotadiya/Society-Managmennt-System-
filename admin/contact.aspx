<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="admin_contact" %>

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

    <div class="row">
          
           <div class="col-md-11" style="text-align:center ; margin-top:50px ; margin-bottom:50px"> <h2>CONTACT US DETAILS</h2></div>
           <div class="col-md-2"></div>
            <div class="col-md-9">
               <table class="table table-bordered">
            <tr>
              <th>USER NAME</th>
              <th>EMAIL</th>
              <th>SUBJECT</th>
              <th>MESSAGE</th>
             
              
            </tr>
            <asp:Repeater ID="rptowner" runat="server"  >
            <ItemTemplate>
             <tr>
                <td><%# Eval("username")  %></td>
                <td><%# Eval("email") %></td>
                <td><%# Eval("subject") %></td>
                <td><%# Eval("message") %></td>
                
                
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
         
         </div>
         <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click"   /></div>
</asp:Content>

