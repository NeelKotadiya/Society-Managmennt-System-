<%@ Page Title="" Language="C#" MasterPageFile="~/owner/ownermaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="owner_feedback" %>

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

<div class="card">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <h3 class="text-dark" style="text-align:center ; margin-top:10px">GIVE YOUR FEEDBACK</h3>
          <div class="col-md-4"></div>
            <div class="col-md-8">
             <div class="row">
              <div class="col-md-6 form-group mt-3 mt-md-0">
               <div class="col-md-12 form-group mt-3 mt-md-0">
                     <%--<label>Feedback Date</label>
                     <asp:TextBox ID="txtfeeddate" class="form-control" runat="server"></asp:TextBox>  --%>  
                     <label>Feedback For</label>
                     <asp:TextBox ID="txtfeedfor" class="form-control" runat="server"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="reqfvalfeedfor" runat="server" 
                         ErrorMessage="Please Fill This Field" ControlToValidate="txtfeedfor" 
                         Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     </div>
                     
                     <div class="col-md-12 form-group mt-3 mt-md-0">         
                     <label>Detail</label>
                     <asp:TextBox ID="txtdetail" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqfvaldetail" runat="server" 
                         ErrorMessage="Please Enter Details" ControlToValidate="txtdetail" 
                         Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     </div>

                     <div class="col-md-12 form-group mt-3 mt-md-0">
                     <label>Rating</label>
                     <asp:TextBox ID="txtrating" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqfvalrating" runat="server" 
                         ErrorMessage="Please Give Rating" ControlToValidate="txtrating" 
                         Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>

                   <div class="text-center form-group" style="margin-top:10px" >
                     <asp:Button class="btn btn-success" ID="btnsubmit" runat="server" Text="Submit" 
                           onclick="btnsubmit_Click" />
                     <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                           CausesValidation="False" onclick="btncancel_Click"/>
                      <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
                </div>
               </div>
            </div>
         </div>
   </div>
    </div>
</asp:Content>

