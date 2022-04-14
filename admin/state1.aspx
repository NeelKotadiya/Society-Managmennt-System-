<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="state1.aspx.cs" Inherits="admin_state1" %>

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
        
          <div class="row">
         
           <div class="col-md-11"> <h2  style="text-align:center ; margin-top:50px ; margin-bottom:50px">STATE DETAILS</h2></div>
             <div class="row">
            <div class="col-md-1"><asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" style="margin-left:1150px" onclick="btnnew_Click" /></div>
            </div>
          </div>
          <table class="table table-bordered">
            <tr>
              <th>STATE ID</th>
              <th>STATE NAME</th>
              <th>SHORT NAME</th>
              <th>UPDATE</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptstate" runat="server" onitemcommand="rptstate_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("Stateid")  %></td>
                <td><%# Eval("Statename") %></td>
                <td><%# Eval("Shortname") %></td>
               
                <td><asp:Button class="btn btn-primary" ID="btnupdate" CommandName="update" CommandArgument='<%# Eval("stateid") %>' runat="server" Text="Update" /> </td>
                <td><asp:Button class="btn btn-danger" ID="btndelete"  CommandName="delete" CommandArgument='<%# Eval("stateid") %>' runat="server" Text="Delete" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
             <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click" /></div>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class="card">
          <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-6">
            <h2 class="text-dark" style="text-align:center">ADD STATE DETAILS</h2>
         <div class="form-group">
           <label>State Name</label>
             <asp:TextBox ID="txtstatename" class="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqfvalstatename" runat="server" 
                   ErrorMessage="Enter State Name" ControlToValidate="txtstatename" 
                   Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            
         </div>
         <div class="form-group">
           <label>Short Name</label>
             <asp:TextBox ID="txtshrtname" class="form-control" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="reqfvalshrtname" runat="server" 
                   ErrorMessage="Enter Short Name" ControlToValidate="txtshrtname" 
                   Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         </div>
        <div class="row">
          <div class="text-center form-group" style="margin-top:10px" >
             <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                  onclick="btnsave_Click"/>
             <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                  CausesValidation="False" onclick="btncancel_Click" />
           </div>
         </div>
        </div>
        </div>
        </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

