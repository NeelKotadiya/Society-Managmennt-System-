<%@ Page Title="" Language="C#" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

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
              <div class="card" style="border-radius: 20px; background-color:rgba(1,1,1,0.2) !important">
                <div class="card-body p-5" style="font-weight: bold; color: #000000;">
                   <div class="row" width="50px">
                      <div class="col"  height="50px">
                        <center>
                        <img width="100px" src="logos/usericon.png" />
                        </center>
                      </div>
                   </div>
                  <h4 class="text-uppercase text-center mb-5">USer Login</h4>

                  <form>

                    <div class="form-outline mb-4">
                      <i class="fas fa-user-alt"></i><label style="font-weight: bold; color: #000000;">User Name</label>
                      <asp:TextBox Class= "form-control" ID="txtusername" runat="server" placeholder="User Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqfvaluname" runat="server" 
                            ErrorMessage="Enter UserName" ControlToValidate="txtusername" Display="Dynamic" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>


                    <div class="form-outline mb-4">
                        <i class="fa fa-lock" aria-hidden="true"></i><label style="font-weight: bold; color: #000000;">Password</label>
                       <asp:TextBox Class="form-control" ID="txtpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="reqfpwd" runat="server" 
                            ErrorMessage="Enter your password" ControlToValidate="txtpassword" 
                            Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       
                    </div>
                  <div class="d-flex justify-content-center">
                    <asp:Button class="btn btn-dark btn-lg btn-block  btn-lg gradient-custom-4 text-body" ID="btnlogin" runat="server" Text="LOGIN"  
                    onclick="btnlogin_Click" />
                    </div>
                    <div class="form-group">
                      <asp:Label ID="lblmsg" runat="server" style="font-weight: bold; color: #000000;" 
                            Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                    </div>
                    <a class="small" href="forgotpassword.aspx" 
                        style="font-weight: bold; color: #000000;">Forgot password?</a>
                    <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="userregister.aspx" style="color: #393f81;">Register here</a></p>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
            
</asp:Content>

