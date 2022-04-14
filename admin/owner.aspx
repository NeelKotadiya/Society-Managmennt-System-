<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="owner.aspx.cs" Inherits="admin_owner" %>

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
          
           <div class="col-md-11" style="text-align:center ; margin-top:50px ; margin-bottom:50px"> <h2>OWNER DETAILS</h2></div>
           <div class="col-md-3"></div>
            <div class="col-md-6">
               <table class="table table-bordered">
            <tr>
              <th>OWNER ID</th>
              <th>OWNER NAME</th>
              <th>CONTACT NO</th>
              <th>EMAIL ID</th>
             
              
            </tr>
            <asp:Repeater ID="rptsubmit" runat="server"  >
            <ItemTemplate>
             <tr>
                <td><%# Eval("Ownerid")  %></td>
                <td><%# Eval("Ownername") %></td>
                <td><%# Eval("contactno") %></td>
                <td><%# Eval("emailid") %></td>
                
                
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
         
         </div>
         <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click"  /></div>
</asp:Content>

