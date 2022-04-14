<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="password.aspx.cs" Inherits="committee_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.gradient-custom-3 {
  /* fallback for old browsers */
  background: #84fab0;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
  /* fallback for old browsers */
  background: #84fab0;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="vh-100 bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp'); padding: 0%;">
      <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-3 col-lg-5 col-xl-4">
              <div class="card" style="border-radius: 15px; background-color:rgba(1,1,1,0.2) !important"">
                <div class="card-body p-5" style="font-weight: bold; color: #000000;">
                  <h3 class="text-uppercase text-center mb-5">Change Password</h3>
                   <form>

                    <div class="form-outline mb-4">
                      <label style="font-weight: bold; color: #000000;"><i class="fa fa-lock" aria-hidden="true"></i>Old Password</label>
                      <asp:TextBox Class= "form-control" ID="txtoldpassword" runat="server" 
                            TextMode="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqfvaloldpwd" runat="server" 
                            ErrorMessage="Enter Your Valid Password " ControlToValidate="txtoldpassword" 
                            Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
                   <div class="form-outline mb-4">
                      <label style="font-weight: bold; color: #000000;"><i class="fa fa-key" aria-hidden="true"></i>New Password</label>
                      <asp:TextBox Class= "form-control" ID="txtnewpassword" runat="server" 
                           TextMode="Password" ForeColor="#CC0000"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqfvalnewpwd" runat="server" 
                           ErrorMessage="Enter Your New Password " ControlToValidate="txtnewpassword" 
                           Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                   </div>
                   <div class="form-outline mb-4">
                      <label style="font-weight: bold; color: #000000;"><i class="fa fa-key" aria-hidden="true"></i>R-enter Password</label>
                      <asp:TextBox Class= "form-control" ID="txtrenterpwd" runat="server" 
                           TextMode="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqfvalrpwd" runat="server" 
                           ErrorMessage="Enter Your R-enter Password " ControlToValidate="txtrenterpwd" 
                           Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="comvalrpwd" runat="server" 
                           ErrorMessage="Password not Match" ControlToCompare="txtnewpassword" 
                           ControlToValidate="txtrenterpwd" Display="Dynamic" ForeColor="#CC0000"></asp:CompareValidator>
                   </div>
                <div class="d-flex justify-content-center">
                    <asp:Button class="btn btn-dark btn-lg btn-block  btn-lg gradient-custom-4 text-body" 
                        ID="btnsubmit" runat="server" Text="SUBMIT" onclick="btnsubmit_Click"/>
                    </div>
                    <div class="form-group">
                      <asp:Label style="font-weight: bold;" ID="lblmsg" runat="server" 
                            ForeColor="#CC0000"></asp:Label>
                    </div>
                      </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>

