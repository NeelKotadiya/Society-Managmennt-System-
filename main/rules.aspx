<%@ Page Title="" Language="C#" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="true" CodeFile="rules.aspx.cs" Inherits="main_rules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
<div class="col-md-12" style="text-align:center"> <h1>You Have To Follow.....</h1></div>
      <div class="text-white text-left me-2 d-flex align-items-center justify-content-center">
          <table class="table ">
            <tr>
              <th>RULE NO</th>
              <th style="text-align:center">RULES</th>
             
            </tr>
            <asp:Repeater ID="rptrule" runat="server" 
                  >
            <ItemTemplate>
             <tr>
                <td><%# Eval("Ruleid")  %></td>
                <td><%# Eval("Ruledetails") %></td>
                
            </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
            </div>
</asp:Content>

