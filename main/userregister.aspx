<%@ Page Title="" Language="C#" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="userregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1 
        {
            width: 400px;
            float: left;
         }
        .style2
        {
            font-size: x-large;
            font-family: "Arial Black";
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="h-50" style="background-color: darkgray; padding-top: 0%; padding-bottom: 0px;">
     <div class="container py-5 h-10">
       <div class="row d-flex justify-content-center align-items-center h-100">
         <div class="col">
           <div class="card card-registration my-4">
             <div class="row g-0">
               <div class="col-xl-6 d-none d-xl-block">
                 <img  src="assets/img/slide/bgimg4.jpg" alt="Sample photo" class="img-fluid" style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 600px;width: 600.5px;"/>
               </div>
               <div class="col-xl-6">
                 <div class="card-body p-md-5 text-black">
                 <div class="row">
                      <div class="col">
                        <center>
                       
                      
                        </center>
                      </div>
                   </div>
                   <center>
                     <i class="fas fa-user-alt fa-5x"></i></center>
                   <h4 class="mb-5 text-uppercase text-center ">USER REGISTRATION</h4>
   
                   <div class="row">
                     <div class="col-md-6 mb-4">
                       <div class="form-outline">
                        <i class="fas fa-user-alt"></i><label>User Name</label>
                        <asp:TextBox class="form-control" ID="txtusername" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="reqfvaluname" runat="server" 
                            ErrorMessage="Enter UserName" ControlToValidate="txtusername" Display="Dynamic" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       </div>
                     </div>
                     <div class="col-md-6 mb-4">
                       <div class="form-outline">
                          <i class="fa fa-lock" aria-hidden="true"></i><label>Password</label>
                         <asp:TextBox class="form-control" ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqfpwd" runat="server" 
                            ErrorMessage="Enter your password" ControlToValidate="txtpassword" 
                            Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       </div>
                     </div>
                   </div>
   
                   <div class="row">
                     <div class="col-md-6 mb-4">
                       <div class="form-outline">
                        <i class="fa fa-users" aria-hidden="true"></i> <label>User Type</label>
                         <asp:DropDownList  class="form-control" ID="ddusertype" runat="server">
                               <asp:ListItem>--Select Usertype--</asp:ListItem>
                              <asp:ListItem>Committee</asp:ListItem>
                              <asp:ListItem>Rentler</asp:ListItem>
                              <asp:ListItem>Owner</asp:ListItem>
                         </asp:DropDownList>
                         </div>
                       </div>
                    
                     <div class="col-md-6 mb-4">
                       <div class="form-outline">
                        <i class="fa fa-mobile" aria-hidden="true"></i> <label>Contact no</label>
                         <asp:TextBox class="form-control" ID="txtcontact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqfcnum" runat="server" 
                            ErrorMessage="Enter your contact no" ControlToValidate="txtcontact" 
                            Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       </div>
                     </div>
                   </div>
               <div class="row">
                    <div class="col-md-6 mb-4">
                         <div class="form-outline">
                          <i class="fa fa-envelope" aria-hidden="true"></i><label>Email Address</label>
                          <asp:TextBox class="form-control" ID="txtemail" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqfemail" runat="server" 
                            ErrorMessage="Enter your email" ControlToValidate="txtemail" 
                            Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regemail" runat="server" 
                                 ErrorMessage="Enter Your Email Properly" ControlToValidate="txtemail" 
                                 Display="Dynamic" ForeColor="#CC0000" 
                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         </div>
                       </div>
                       <div class="col-md-6 mb-4">
                         <div class="form-outline">
                           <i class="fa fa-credit-card" aria-hidden="true"></i><label>Fees</label>
                           <asp:TextBox class="form-control" ID="txtfees" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="Enter Fees" ControlToValidate="txtfees" 
                            Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                         </div>
                       </div>
                </div>
                     <div class="d-flex justify-content-center">
                     <asp:Button class="btn btn-light btn-lg" ID="btnsubmit" runat="server" 
                             Text="SUMBIT" Height="40px" onclick="btnsubmit_Click" Width="150px" 
                             BackColor="#FF9933" />
                     <asp:Button class="btn btn-light btn-lg" ID="btncancel" runat="server" 
                             Text="CANCEL" Height="40px" Width="150px" onclick="btncancel_Click" 
                             CausesValidation="False" BackColor="Red" />
                   </div>
                   <div class="form-group">
                     <asp:Label  ID="lblmsg" runat="server"></asp:Label>
                   </div>
            
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     
   </section>
    </div>
</asp:Content>

