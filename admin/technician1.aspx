<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="technician1.aspx.cs" Inherits="admin_technician1" %>

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
            <div class="col-md-11"> <h2  style="text-align:center ; margin-top:50px ; margin-bottom:50px">TECHNICIAN DETAILS</h2></div>
              <div class="row">
            <div class="col-md-1">
                <asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" style="margin-left:1150px" onclick="btnnew_Click"/></div>
            </div>
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>TECH ID</th>
              <th>TECH NAME</th>
              <th>CONTACTNO</th>
              <th>EMAILID</th>
              <th>TECHTYPE</th>
              <th>EXPERT</th>
              <th>UPDATE</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rpttech" runat="server" onitemcommand="rpttech_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("techid")  %></td>
                <td><%# Eval("techname") %></td>
                <td><%# Eval("contactno")  %></td>
                <td><%# Eval("emailid") %></td>
                <td><%# Eval("techtype")  %></td>
                <td><%# Eval("expert")  %></td>
               
                <td><asp:Button class="btn btn-primary" ID="btnupdate" runat="server"  CommandName="update" CommandArgument='<%# Eval("techid") %>' runat="server" Text="Update" /> </td>
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("techid") %>' runat="server" Text="Delete" /> </td>
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
        <h2 class="text-dark" style="text-align:center">ADD TECHNICIAN</h2>
          <div class="col-md-3"></div>
            <div class="col-md-6">
             <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                  <label>Tech Name</label>
                  <asp:TextBox ID="txttechname" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqftechname" runat="server" 
                   ErrorMessage="Enter Texhnician Name" ControlToValidate="txttechname" 
                   Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
               </div>

               <div class="col-md-6 form-group mt-3 mt-md-0">
                  <label>city Name</label>
                  <asp:DropDownList  class="form-control" ID="ddcity" runat="server">
                  </asp:DropDownList>
               </div>
            </div>

            <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                    <label>contactno</label>
                    <asp:TextBox ID="txtcontactno" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqfcnum" runat="server" 
                    ErrorMessage="Enter Your Contact no" ControlToValidate="txtcontactno" 
                    Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>

                <div class="col-md-6 form-group mt-3 mt-md-0">
                     <label>emailid</label>
                     <asp:TextBox ID="txtemailid" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqfvalemail" runat="server" 
                     ErrorMessage="Enter Emailid" ControlToValidate="txtemailid" 
                     Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="regexpemailid" runat="server" 
                     ErrorMessage="Please check emailid" ControlToValidate="txtemailid" 
                     ForeColor="#CC0000"  Display="Dynamic"
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="row">
             <div class="col-md-6 form-group mt-3 mt-md-0">
                <label>Techtype</label>
                <asp:DropDownList class="form-control" ID="ddtechtype" runat="server">
                 <asp:ListItem>--Select Technician Type--</asp:ListItem>
                              <asp:ListItem>Engineering</asp:ListItem>
                              <asp:ListItem>Electronics</asp:ListItem>
                              <asp:ListItem>medical</asp:ListItem>
                              <asp:ListItem>Civil</asp:ListItem>
                              <asp:ListItem>Computer</asp:ListItem>
                </asp:DropDownList>
             </div>

             <div class="col-md-6 form-group mt-3 mt-md-0">
                  <label>Expert</label>
                  <asp:TextBox ID="txtexpert" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfexpert" runat="server" 
                   ErrorMessage="Enter Experty" ControlToValidate="txtexpert" 
                   Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </div>
         </div>

         <div class="form-group">
           <label>description</label>
             <asp:TextBox ID="txtdescription" class="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqfdes" runat="server" 
                       ErrorMessage="Please write some description" ControlToValidate="txtdescription" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         </div>
          <div class="row">
            <div class="text-center form-group" style="margin-top:10px" >
                <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                    onclick="btnsave_Click"  />
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

