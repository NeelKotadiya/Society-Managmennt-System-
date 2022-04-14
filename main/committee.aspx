<%@ Page Title="" Language="C#" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="true" CodeFile="committee.aspx.cs" Inherits="main_committee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="card">
          <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-6">
               <table class="table table-bordered">
            <tr>
              <th>COMMITTEE ID</th>
              <th>COMMITTEE NAME</th>
              <th>CONTACT NO</th>
              <th>EMAIL ID</th>
             
              
            </tr>
            <asp:Repeater ID="rptcommittee" runat="server"  >
            <ItemTemplate>
             <tr>
                <td><%# Eval("Memberid")  %></td>
                <td><%# Eval("Membername") %></td>
                <td><%# Eval("Contactno") %></td>
                <td><%# Eval("Emailid") %></td>
                
                
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
         </div>
         </div>
</asp:Content>

