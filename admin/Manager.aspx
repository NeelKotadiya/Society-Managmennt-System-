<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="admin_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
          <div class="row">
            <div class="col-md-11"> <h2>MANAGER DETAILS</h2></div>
            <div class="col-md-1"><asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" onclick="btnnew_Click" /></div>
            </div>
          
          <table class="table table-bordered">
            <tr>
               
              <th>MANAGER NAME</th>
              <th>ADDRESS </th>
              
              <th>CONTACT NUMBER</th>
              <th>EMAIL ID</th>
              <th>DOCUMENT</th>
              <th>RESPONSIBILITY</th>
              <th>TIMING</th>
              
              <th>DESCRIPTION</th>
              <th>UPDATE</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptManager" runat="server" onitemcommand="rptManager_ItemCommand">
            <ItemTemplate>
             <tr>
               
                <td><%# Eval("Managername") %></td>
                <td><%# Eval("Address") %></td>
                
                 <td><%# Eval("Contactno") %></td>
                 <td><%# Eval("Emailid") %></td>
                 <td> <asp:Image style="width:100px;height:100px" ID="Image1" runat="server" ImageUrl='<%# "~/admin/docimages/" + Eval("Document") %>' /> </td>
                 <td><%# Eval("Responsibilities") %></td>
                 <td><%# Eval("Timing") %></td>
                 
                 <td><%# Eval("Description") %></td>
                <td><asp:Button class="btn btn-primary" ID="btnupdate" CommandName="update" CommandArgument='<%# Eval("Managerid") %>' runat="server" Text="Update" /> </td>
                <td><asp:Button class="btn btn-danger" ID="btndelete"  CommandName="delete" CommandArgument='<%# Eval("Managerid") %>' runat="server" Text="Delete" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class="col-md-11"> <h2 class="text-center">MANAGER DETAILS</h2></div>
         <div class="row">

         <div class="col-md-1"></div>
         <div class="col-md-5">
         
          <div class="form-group">
           <label>Manager Name</label>
             <asp:TextBox ID="txtmanagername" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="form-group">
           <label> Address </label>
             <asp:TextBox ID="txtaddress" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="form-group">
           <label>City</label>
            <asp:DropDownList  class="form-control" ID="ddcity" runat="server">
             </asp:DropDownList>
         </div>
          <div class="form-group">
           <label> Contact no. </label>
             <asp:TextBox ID="txtcontactno" class="form-control" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-md-1"></div>
         <div class="col-md-5">
          <div class="form-group">
           <label> Emailid </label>
             <asp:TextBox ID="txtemailid" class="form-control" runat="server"></asp:TextBox>
         </div>
          <div class="form-group">
           <label> Responsibility </label>
             <asp:TextBox ID="txtresponsibility" class="form-control" runat="server"></asp:TextBox>
         </div>
          <div class="form-group">
           <label> Timing </label>
             <asp:TextBox ID="txttiming" class="form-control" runat="server"></asp:TextBox>
         </div>
           <div class="form-group">
           <label>Document</label>
             <asp:FileUpload ID="fupdoc" runat="server" class="form-control" />
         </div>
          <div class="form-group">
           <label> Description </label>
             <asp:TextBox ID="txtdescription" class="form-control" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-md-2" ></div>
          <div class="col-md-4" >
           
           
         <div style="margin-top:10px" class="form-group">
             <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                 onclick="btnsave_Click" />
             <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                 onclick="btncancel_Click" />
         </div>

         </div>
         </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

