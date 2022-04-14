<%@ Page Title="" Language="C#" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="true" CodeFile="mainhome.aspx.cs" Inherits="mainhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="2500" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/bgimg7.jpg);">
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/bgimg102.jpg);">
        </div>

          <!-- Slide 4 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/bgimg117.jpg);">
        </div>

        <!-- Slide 5 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/bgimg115.jpg");">
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
          <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="rules.aspx">Rules</a></h4>
            <p class="description">You expressly understand and agree that Societynmore shall not be liable for any direct, 
            indirect, incidental, special, consequential or exemplary damages, including but not limited to.</p>
          </div>
        </div>
        
        <div class="col-lg-4 col-md-6">
          <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-brightness-high"></i></div>
            <h4 class="title"><a href="committee.aspx">Committiee</a></h4>
            <p class="description">Managing Committee members are in the true sense the trustees, as members of the Society trust them completely, 
            they are given the charge to look after the welfare of all the members who have elected them to run the Society on their behalf.</p>
          </div>
        </div>

         <div class="col-lg-4 col-md-6">
          <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-binoculars"></i></div>
            <h4 class="title"><a href="">Blogs</a></h4>
            <p class="description"></p>
          </div>
        </div>
       
      <%--  <div class="col-lg-4 col-md-6">
          <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Guest Parking</a></h4>
            <p class="description"></p>
          </div>
        </div>
       
        
        --%>
      </div>

    </div>
  </section><!-- End Hero -->
  </main>
</asp:Content>

