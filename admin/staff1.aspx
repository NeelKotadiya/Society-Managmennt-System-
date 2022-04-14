<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="staff1.aspx.cs" Inherits="admin_staff1" %>

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
           <div class="col-md-11"> <h2  style="text-align:center ; margin-top:50px ; margin-bottom:50px">SATFF DETAILS</h2></div>
            <div class="row">
            <div class="col-md-1">
                <asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" style="margin-left:1150px" onclick="btnnew_Click"/></div>
            </div>
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>STAFF ID</th>
              <th>STAFF NAME</th>
              <th>CONTACTNO</th>
              <th>EMAILID</th>
              <th>POST</th>
              <th>TIMING</th>
              <th>SATFFIMAGE</th>
              <th>DOCIMAGE</th>
             
              <th>UPDATE</th>
              <th>DELETE</th>
            </tr>
            <asp:Repeater ID="rptstaff" runat="server" onitemcommand="rptstaff_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("staffid")  %></td>
                <td><%# Eval("staffname") %></td>
                <td><%# Eval("contactno")  %></td>
                <td><%# Eval("emailid") %></td>
                <td><%# Eval("post")  %></td>
                <td><%# Eval("timing") %></td>
                
                <td><asp:Image style="width:50px;height:50px" ID="imgstaff" runat="server" ImageUrl='<%# "~/admin/staffimages/" + Eval("image") %>' /> </td>
                <td><asp:Image style="width:50px;height:50px" ID="docimg" runat="server" ImageUrl='<%# "~/admin/docimages/" + Eval("docfile") %>' /> </td>
                <td><asp:Button class="btn btn-primary" ID="btnupdate" runat="server"  CommandName="update" CommandArgument='<%# Eval("staffid") %>' runat="server" Text="Update" /> </td>
                <td><asp:Button class="btn btn-danger" ID="btndelete" runat="server"  CommandName="delete" CommandArgument='<%# Eval("staffid") %>' runat="server" Text="Delete" /> </td>
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
      <div class="col-md-12">
         <div class="row mt-5 justify-content-center" data-aos="fade-up">
           <div class="col-lg-10">
             <div class="row">
               <h2 class="text-dark" style="text-align:center">ADD STAFF DETAILS</h2>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <label style="font-weight: bold">Staff Name</label>
                  <asp:TextBox ID="txtstaffname" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqfvalstaffname" runat="server" ErrorMessage="Enter Staff Name" ControlToValidate="txtstaffname" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>

                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <label style="font-weight: bold">Address</label>
                  <asp:TextBox ID="txtaddress" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfadd" runat="server"  ErrorMessage="Enter Address" ControlToValidate="txtaddress" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
               </div>
             </div>

             <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">City Name</label>
                 <asp:DropDownList  class="form-control" ID="ddcity" runat="server">
                 </asp:DropDownList>
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Contact No</label>
                 <asp:TextBox ID="txtcontactno" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqfcontactno" runat="server" 
                   ErrorMessage="Enter Contact no" ControlToValidate="txtcontactno" 
                   Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
            </div>

            <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Emailid</label>
                   <asp:TextBox ID="txtemailid" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalemail" runat="server" ErrorMessage="Enter Emailid" ControlToValidate="txtemailid" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="regexpemailid" runat="server"  ErrorMessage="Please check emailid" ControlToValidate="txtemailid" ForeColor="#CC0000"  Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               </div>

               <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Post</label>
                   <asp:TextBox ID="txtpost" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfpost" runat="server" ErrorMessage="Enter Your Post" ControlToValidate="txtpost" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              </div>

              <div class="row">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                    <label style="font-weight: bold">Document</label>
                    <asp:FileUpload ID="fupdoc" runat="server" class="form-control" />
                   
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                     <label style="font-weight: bold">Image</label>
                     <asp:FileUpload ID="fupimg" runat="server" class="form-control" />
                     
                </div>
              </div>

              <div class="row">
                 <div class="col-md-6 form-group mt-3 mt-md-0">
                      <label style="font-weight: bold">Timing</label>
                      <asp:TextBox ID="txttiming" class="form-control" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqftiming" runat="server" ErrorMessage="Enter your timing" ControlToValidate="txttiming" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
                   <div class="col-md-6 form-group mt-3 mt-md-0">
                       <label style="font-weight: bold">Description</label>
                       <asp:TextBox ID="txtdescription" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="reqfdes" runat="server" ErrorMessage="Please write some description" ControlToValidate="txtdescription" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-6  form-group mt-3 mt-md-0">
                       <label style="font-weight: bold">Gender</label>
                       <asp:RadioButton ID="rdomale" runat="server" Text="Male" GroupName="gnd" />
                        <asp:RadioButton  ID="rdofemale" runat="server" Text="Female" GroupName="gnd" />
                   </div>
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
      </div>
    </div>
 
</asp:View>
</asp:MultiView>
</asp:Content>

