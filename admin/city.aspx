
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="admin_city" %>

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
           <div class="col-md-11"> <h2  style="text-align:center ; margin-top:50px ; margin-bottom:50px">CITY DETAILS</h2></div>
             <div class="row">
            <div class="col-md-1"><asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" style="margin-left:1150px" onclick="btnnew_Click" /></div>
            </div>
          </div>
          <table class="table table-bordered">
            <tr>
              <th>CITY ID</th>
              <th>CITY NAME</th>
              <th>SHORT NAME</th>
              <th>PINCODE</th>
              <th>STATE</th>
              <th>UPDATE</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptcity" runat="server" onitemcommand="rptcity_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("cityid")  %></td>
                <td><%# Eval("cityname") %></td>
                <td><%# Eval("shortname") %></td>
                <td><%# Eval("pincode") %></td>
                 <td><%# Eval("stateid") %></td>
                <td><asp:Button class="btn btn-primary" ID="btnupdate" runat="server"  CommandName="update" CommandArgument='<%# Eval("cityid") %>' runat="server" Text="Update" /> </td>
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("cityid") %>' runat="server" Text="Delete" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
             <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click"  /></div>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class="card">
          <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-6">
             <h2 class="text-dark" style="text-align:center">Add City</h2>
         <div class="form-group">
           <label>City Name</label>
             <asp:TextBox ID="txtcityname" class="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="reqfcityname" runat="server" 
                 ErrorMessage="Plaese Enter City Name" ControlToValidate="txtcityname" 
                 Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         </div>
         <div class="form-group">
           <label>Short Name</label>
             <asp:TextBox ID="txtshortname" class="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="reqfsname" runat="server" 
                 ErrorMessage="Plaese Enter Short Name" ControlToValidate="txtshortname" 
                 Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         </div>
         <div class="form-group">
           <label>Pincode</label>
             <asp:TextBox ID="txtpincode" class="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="reqfpincode" runat="server" 
                 ErrorMessage="Plaese Enter Pincode" ControlToValidate="txtpincode" 
                 Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         </div>
         
         <div class="form-group">
         <label>State Name</label>
             <asp:DropDownList  class="form-control" ID="ddstate" runat="server">
             </asp:DropDownList>
         </div>
         <div class="form-group">
             <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                 onclick="btnsave_Click" />
             <asp:Button class="btn btn-danger" ID="btncancel1" runat="server" Text="Cancel" 
                 onclick="btncancel1_Click" CausesValidation="False" 
               />
         </div>
         </div>
         </div>
         </div>

        </asp:View>
    </asp:MultiView>

</asp:Content>

