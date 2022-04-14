<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="suggestion.aspx.cs" Inherits="Owner_suggestion" %>

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
        <h2 class="text-dark" style="text-align:center ; margin-top:10px">YOUR KIND SUGGESTION</h2>
          <div class="col-md-4"></div>
            <div class="col-md-8">
             <div class="row">
              <div class="col-md-6 form-group mt-3 mt-md-0">
               <div class="col-md-12 form-group mt-3 mt-md-0">
                     <label>Suggestion For</label>
                     <asp:TextBox ID="txtsugfor" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqfvalsuggestion" runat="server" 
                         ErrorMessage="Enter Your Suggestion" ControlToValidate="txtsugfor" 
                         Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                      </div>

                     <div class="col-md-12 form-group mt-3 mt-md-0">
                     <label>Details</label>
                     <asp:TextBox ID="txtdetails" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqfvaldetails" runat="server" 
                         ErrorMessage="Enter Details" ControlToValidate="txtdetails" 
                         Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                    <div class="text-center form-group" style="margin-top:10px" >
                    <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
                    <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                            onclick="btncancel_Click" CausesValidation="False"/>
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
                </div>
               </div>
            </div>
         </div>
         </div>
      </div>
   
</asp:Content>

