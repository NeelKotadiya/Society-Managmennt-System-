<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="committee_Feedback" %>

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
           <div class="col-md-3"></div>
            <div class="col-md-6">
<div class="row">
  <div style="text-align:center ; color:#e00a27 ; font-family:Times New Roman"> <h2>Your Feedback </h2></div>
</div>

 <table class="table">
            <tr>
            <%--  <th>FEEDBACK ID</th>--%>
              <th>FEEDBACK DATE</th>
              <th>DETAIL</th>
              <th>FEEDBACK FOR</th>
              <th>RATING</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptfeedback" runat="server" 
                onitemcommand="rptfeedback_ItemCommand">
            <ItemTemplate>
             <tr>
               <%-- <td><%# Eval("feedbackid")  %></td>--%>
                <td><%# Eval("feedbackdate" , "{0:dd/MM/yyyy}") %></td>
                <td><%# Eval("details")%></td>
                 <td><%# Eval("feedbackfor") %></td>
                 <td><%# Eval("rating") %></td>
                
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("feedbackid") %>' runat="server" Text="Delete" /> </td>
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
</asp:Content>

