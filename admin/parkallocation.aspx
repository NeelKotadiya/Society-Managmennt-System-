<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="parkallocation.aspx.cs" Inherits="admin_parkallocation" %>

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
           <div class="col-md-11"> <h2 style="text-align:center ; margin-top:50px ; margin-bottom:50px"><i class="fa fa-car" aria-hidden="true"></i>PARKING DETAILS</h2></div>
            <div class="col-md-1">
                
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>PARKING ID</th>
              <th>LOCATION</th>
              <th>SLOT</th>
              <th>PARKING SIZE</th>
              <th>PRICE</th>
              <th>PARKING TYPE</th>
             <th>STATUS</th>
             <th>ALLOCATION</th>
           
            </tr>
            <asp:Repeater ID="rptpark" runat="server" onitemcommand="rptpark_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("parkid")  %></td>
                <td><%# Eval("location") %></td>
                <td><%# Eval("slot")  %></td>
                <td><%# Eval("parksize") %></td>
                <td><%# Eval("price")  %></td>
                <td><%# Eval("parktype") %></td>
                <td><%# Eval("status") %></td>
              

              
                <td><asp:Button class="btn btn-primary" ID="btnallo" runat="server"  CommandArgument='<%# Eval("parkid") %>' runat="server" Text="Allocation" /> </td>
               
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>

        </div>
        <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click" /></div>
        </asp:View>

         <asp:View ID="View2" runat="server">
           <div class="card">
          <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-6">
             <h2 class="text-dark" style="text-align:center"><i class="fa fa-car" aria-hidden="true"></i>PARK ALLOCAT</h2>
           <div class="form-group">
         <label>Owner Name</label>
             <asp:DropDownList  class="form-control" ID="ddowner" runat="server">
             </asp:DropDownList>

              <div class="form-group">
             <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                      onclick="btnsave_Click"/>
             <asp:Button class="btn btn-danger" ID="btncancel1" runat="server" Text="Cancel"
                      CausesValidation="False" onclick="btncancel1_Click"/>
         </div>
         </div>
         </div>
         </div>
         </div>
      </asp:View> 
    </asp:MultiView>
</asp:Content>

