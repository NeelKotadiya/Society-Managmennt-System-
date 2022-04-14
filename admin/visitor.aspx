<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="visitor.aspx.cs" Inherits="admin_visitor" %>

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
     <div class="col-md-11" style="text-align:center ; margin-top:50px ; margin-bottom:50px"> <h2>VISITOR DETAILS</h2></div>
        <div class="col-md-1">
                <asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" onclick="btnnew_Click" /></div>
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>VISITOR ID</th>
              <th>VISITOR NAME</th>
              <th>CONTACTNO</th>
             
              <th>INTIME</th>
              <th>OUTTIME</th>
              <th>PURPOSE</th>
             
              
              <th>UPDATE</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptvisitor" runat="server" onitemcommand="rptvisitor_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("Visitorid") %></td>              
                <td><%# Eval("Visitorname") %></td>
                <td><%# Eval("Contactno")  %></td>
               
                <td><%# Eval("Intime")  %></td>
                <td><%# Eval("Outtime")%></td>
                <td><%# Eval("Purpose")%></td>
                
                

                <td><asp:Button class="btn btn-primary" ID="btnupdate" runat="server"  CommandName="update" CommandArgument='<%# Eval("Visitorid") %>' runat="server" Text="Update" /> </td>
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("Visitorid") %>' runat="server" Text="Delete" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
        <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click"  /></div>
        </asp:View>
        
<asp:View ID="View2" runat="server">
<div class="card">
  <div class="row">
    <h2 class="text-dark" style="text-align:center">ADD VISITOR DETAILS</h2>
      <div class="col-md-3"></div>
       <div class="col-md-6">
           
            <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Visitorname</label>
                 <asp:TextBox ID="txtvisitorname" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalvname" runat="server" 
                       ErrorMessage="Please Enter Visitor Name" ControlToValidate="txtvisitorname" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
               </div>

               <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Contactno</label>
                 <asp:TextBox ID="txtcontactno" class="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalcnum" runat="server" 
                       ErrorMessage="Please Enter Contact No" ControlToValidate="txtcontactno" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>
                </div>
                  
                <div class="row">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Emailid</label>
                 <asp:TextBox ID="txtemailid" class="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalemailid" runat="server" 
                       ErrorMessage="Please Enter Emailid" ControlToValidate="txtemailid" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
               <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Purpose</label>
                   <asp:TextBox ID="txtpurpose" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalpurpose" runat="server" 
                       ErrorMessage="Please Enter Purpose" ControlToValidate="txtpurpose" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
                  
                </div>
              
              <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Intime</label>
                   <asp:TextBox ID="txtintime" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalintime" runat="server" 
                       ErrorMessage="Please Enter In Time" ControlToValidate="txtintime" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
                 <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Outtime</label>
                   <asp:TextBox ID="txtouttime" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalouttime" runat="server" 
                       ErrorMessage="Please Enter Out Time" ControlToValidate="txtouttime" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
           </div>
                
                
                 <div class="col-md-12 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Remarks</label>
                   <asp:TextBox ID="txtremarks" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalremarks" runat="server" 
                       ErrorMessage="Please Enter Remarks" ControlToValidate="txtremarks" 
                       Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
                   <div class="text-center form-group" style="margin-top:10px" >
                            <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
                            <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                                 onclick="btncancel_Click" CausesValidation="False" />
                  </div>
       
     </div>
  </div>
</div>          
</asp:View>
</asp:MultiView>
</asp:Content>

