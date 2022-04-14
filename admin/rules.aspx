<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="rules.aspx.cs" Inherits="admin_rules" %>

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
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
          <div class="card">

     <div class="row">
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Rules</h2>
          <div class="col-md-0"></div>
            <div class="col-md-8">
           
            <div class="col-md-1">
                <asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" onclick="btnnew_Click" /></div>
           
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>RULEID</th>
              
              <th>RULEDETAILS</th>
              
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptrules" runat="server" onitemcommand="rptrules_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("Ruleid") %></td>              
               
                <td><%# Eval("ruledetails") %></td>
               
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("Ruleid") %>' runat="server" Text="Delete" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
            </div>
            </div>
            
        </div>
        </asp:View>
        
<asp:View ID="View2" runat="server">
<div class="card">
 <div class="row">
    <h2 class="text-dark" style="text-align:center">ADD RULES</h2>
      <div class="col-md-3"></div>
        <div class="col-md-6">
          <div class="col-md-10 form-group mt-3 mt-md-0">
             <div class="col-md-12 form-group mt-3 mt-md-0">
                  <label style="font-weight: bold">Ruletitle</label>
                  <asp:TextBox ID="txtruletitle" class="form-control" runat="server" Width="387px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalruletitle" runat="server" 
                      ErrorMessage="Enter Rule Title" ControlToValidate="txtruletitle" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   
               </div>
              <div class="col-md-12 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Ruledetails</label>
                 <asp:TextBox ID="txtruledetails" class="form-control" runat="server" Width="388px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalruledetails" runat="server" 
                      ErrorMessage="Enter Rule Details" ControlToValidate="txtruledetails" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  
              </div>
              <div class="col-md-12 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Ruletype</label>
                 <asp:TextBox ID="txtruletype" class="form-control" runat="server" Width="389px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalruletype" runat="server" 
                      ErrorMessage="Enter Rule Type" ControlToValidate="txtruletype" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  
              </div>
             
               <div class="row">
                  <div class="text-center form-group" style="margin-top:10px" >
                      <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
                       <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" onclick="btncancel_Click" CausesValidation="False" />
                  </div>
                </div>
         </div>
     </div>
  </div>
</div>
    
 
 </asp:View>
</asp:MultiView>

</asp:Content>

