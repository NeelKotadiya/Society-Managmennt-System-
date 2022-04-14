<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="Suggestion.aspx.cs" Inherits="committee_Suggestion" %>

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
   
   
    .style1
    {
        height: 29px;
    }
   
   
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="card">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Your Suggestions</h2>
          <div class="col-md-3"></div>
            <div class="col-md-6">
<table class="table table-bordered">
            <tr>
              <%--<th>SUG ID</th>--%>
              <th>SUG DATE</th>
              <th>SUG FOR</th>
              <th>DETAIL</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptsug" runat="server" onitemcommand="rptsug_ItemCommand">
            <ItemTemplate>
             <tr>
                <%--<td><%# Eval("sugid")  %></td>--%>
                <td><%# Eval("sugdate" , "{0:dd/MM/yyyy}") %></td>
                <td><%# Eval("sugfor") %></td>
                <td><%# Eval("details") %></td>
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("sugid") %>' runat="server" Text="Delete" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>

            </div>
            <asp:Button class="btn btn-success" ID="Button1" runat="server" 
         Text="Back" style="margin-left:750px" onclick="Button1_Click"  
        />
            </div></div>
</asp:Content>

