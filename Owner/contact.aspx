<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Owner_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact Us</h2>
          <ol>
            <li><a href="ownerhome.aspx">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <div class="map-section">
      <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3726.024219901761!2d72.92518411493133!3d20.951542486040324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be0f7beb90ff9cd%3A0xdfae8aac0456b49a!2sS.P.%20Footwear!5e0!3m2!1sen!2sin!4v1649653971795!5m2!1sen!2sin" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

    <section id="contact" class="contact">
      <div class="container">

        <div class="row justify-content-center" data-aos="fade-up">

          <div class="col-lg-10">

            <div class="info-wrap">
              <div class="row">
                <div class="col-lg-4 info">
                  <i class="bi bi-geo-alt"></i>
                  <h4>Location:</h4>
                  <p>103, S. P. Apartment,
          Opp. Dudhia Talav Shopping Center,<br>
          Navsari – 396 445. Gujarat, India. <br><br></p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="bi bi-envelope"></i>
                  <h4><asp:Label ID="lblemailid" runat="server" Text=""></asp:Label>Email:</h4>
                  <p>contact@society.com</p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="bi bi-phone"></i>
                  <h4>Call:</h4>
                  <p> +91 9879641323</p>
                </div>
              </div>
            </div>

          </div>

        </div>

        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">
            <form "forms/contact.aspx" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                <asp:Label ID="lbluname" runat="server" Text="UserName"></asp:Label>
                <asp:TextBox class="form-control"  ID="txtuname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfuname" runat="server" 
                        ErrorMessage="Enter your username" ControlToValidate="txtuname" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cusvaluname" runat="server" 
                        ErrorMessage="Enter Only Alpha" 
                        ControlToValidate="txtuname" Display="Dynamic" ForeColor="#006600" 
                        ClientValidationFunction="onlyalpha"></asp:CustomValidator>
                </div>
                
                <div class="col-md-6 form-group mt-3 mt-md-0">
                <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox class="form-control"  ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfemail" runat="server" 
                        ErrorMessage="Enter Your Email" ControlToValidate="txtemail" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="email" runat="server" 
                        ErrorMessage="Email Must Be In Format" ControlToValidate="txtemail" Display="Dynamic" 
                        ForeColor="#006600" ValidationGroup="checkemail"></asp:RegularExpressionValidator>
                </div>
              </div>
              <div class="form-group mt-3">
                <asp:Label ID="lblsubject" runat="server" Text="Subject"></asp:Label>
                <asp:TextBox class="form-control"  ID="txtsubject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfsub" runat="server" 
                        ErrorMessage="Enter Subject" ControlToValidate="txtsubject" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group mt-3">
               <asp:Label ID="lblmsg" runat="server" Text="Message"></asp:Label>
                <asp:TextBox class="form-control"  ID="txtmsg" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfmsg" runat="server" 
                        ErrorMessage="Enter Message" ControlToValidate="txtmsg" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              <div class="my-3">
                
              </div>
              <div class="text-center"><asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                      onclick="btnsubmit_Click"></asp:Button></div>

                      
         </div>
         <div class="form-group">
                     <asp:Label  ID="lblmsg1" runat="server"></asp:Label>
                   </div>
            </form>
           
          </div>

        </div>

    
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
 
</asp:Content>

