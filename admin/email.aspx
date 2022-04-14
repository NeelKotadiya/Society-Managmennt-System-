<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="email.aspx.cs" Inherits="admin_email" %>

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
           <div class="col-md-3"></div>
            <div class="col-md-6">
              <div class="col-md-11"> <h3 style="text-align:center ; margin-top:50px"><i class="fa fa-envelope" ></i>Make Mail</h3></div>
         
        
              <div class="form-group">
           <label>EmailTo</label>
             <asp:TextBox ID="txtemailto" class="form-control" runat="server"></asp:TextBox>
             </div>
              <div class="form-group">
          
              <div class="form-group">
           <label>subject</label>
             <asp:TextBox ID="txtsubject" class="form-control" runat="server"></asp:TextBox>
             </div>
              <div class="form-group">
           <label>description</label>
             <asp:TextBox ID="txtdescription" class="form-control" runat="server"></asp:TextBox>
             </div>
             
        <div class="text-center form-group" style="margin-top:10px" >
             <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="send" 
                 onclick="btnsave_Click" />
             <asp:Button class="btn btn-danger" ID="btncancel1" runat="server" Text="Cancel" 
                 CausesValidation="False" onclick="btncancel1_Click" />
         </div>
         <div class="form-group">
                     <asp:Label  ID="lblmsg" runat="server"></asp:Label>
                   </div>
         </div>
         </div>
</asp:Content>

