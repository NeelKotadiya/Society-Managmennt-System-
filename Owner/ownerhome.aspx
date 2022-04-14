<%@ Page Title="" Language="C#" MasterPageFile="~/owner/ownermaster.master" AutoEventWireup="true" CodeFile="ownerhome.aspx.cs" Inherits="owner_ownerhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="hero">
    <div id="heroCarousel" data-bs-interval="3000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/slide/bgimg116.jpg");">
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/bgimg117.jpg);">
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/bgimg118.jpg");">
        </div>
         
    </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bx bx-left-arrow" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bx bx-right-arrow" aria-hidden="true"></span>
      </a>

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
  </section><!-- End Hero -->
  
 <main id="main">
   <!-- ======= Services Section ======= -->
   <section id="services" class="services">
    <div class="container">

      <div class="row">
        <div class="col-lg-4 col-md-6">
          <div class="icon-box" data-aos="fade-up">
            <div class="icon"><i class="bi bi-briefcase"></i></div>
            <h4 class="title"><a href="notice.aspx">Notice</a></h4>
            <p class="description"><asp:Label ID="lblnotice" runat="server" Text=""></asp:Label><br />
            Notice the small things. The rewards are inversely proportional.
            </p>
          </div>
        </div>
        
       
        <div class="col-lg-4 col-md-6">
          <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-binoculars"></i></div>
            <h4 class="title"><a href="meeting.aspx">Meeting</a></h4>
            <p class="description"><asp:Label ID="lblmeet" runat="server" Text=""></asp:Label><br/>
            In meetings philosophy might work,
on the field practicality works.</p>
          </div>
        </div>
      
        <div class="col-lg-4 col-md-6">
          <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
            <div class="icon"><i class="bi bi-calendar4-week"></i></div>
            <h4 class="title"><a href="event.aspx">Events</a></h4>
            <p class="description"><asp:Label ID="lblevent" runat="server" Text=""></asp:Label><br />
            Memory is deceptive because it is colored by today's events.</p>
          </div>
        </div>
      </div>

    </div>
  </section><!-- End Hero -->
</asp:Content>

