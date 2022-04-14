<%@ Page Title="" Language="C#" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="main_gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Gallary</h2>
        <ol>
          <li><a href="mainhome.aspx">Home</a></li>
          <li>Gallary</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->
  
 <!-- ======= Portfolio Section ======= -->
 <section id="portfolio" class="portfolio">
  <div class="container">

    <div class="row" data-aos="fade-up">
      <div class="col-lg-12 d-flex justify-content-center">
        <ul id="portfolio-flters">
          <li data-filter="*" class="filter-all">All</li>
          <li data-filter=".filter-app">Society View</li>
          <li data-filter=".filter-card">swimming pool</li>
          <li data-filter=".filter-web">Gym</li>
          <li data-filter=".filter-data">club</li>
          <li data-filter=".filter-park">parking</li>
        </ul>
      </div>
    </div>

    <div class="row portfolio-container" data-aos="fade-up" >
      <div class="col-lg-4 col-md-6 portfolio-item filter-app">
        <img src="assets/img/buildingimg/buildingimg11.jpeg" class="img-fluid" alt="">
        <div >
           <a href="assets/img/buildingimg/buildingimg11.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-web">
        <img src="assets/img/gym/gym1.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
          <a href="assets/img/gym/gym1.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"></a>
         </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-app">
        <img src="assets/img/buildingimg/buildingimg13.jpeg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
          <a href="assets/img/buildingimg/buildingimg13.jpeg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
        <img src="assets/img/swimmingpoolimg/sp2.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
          <a href="assets/img/swimmingpoolimg/sp2.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-web">
        <img src="assets/img/gym/gym2.png" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
          <a href="assets/img/gym/gym2.png" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-app">
        <img src="assets/img/buildingimg/buildingimg12.jpeg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/buildingimg/buildingimg12.jpeg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
        <img src="assets/img/swimmingpoolimg/sp3.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
          <a href="assets/img/swimmingpoolimg/sp3.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
        <img src="assets/img/swimmingpoolimg/sp4.jpeg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
          <a href="assets/img/swimmingpoolimg/sp4.jpeg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"></a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 portfolio-item filter-web">
        <img src="assets/img/gym/gym6.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/gym/gym6.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div>    
      <div class="col-lg-4 col-md-6 portfolio-item filter-data">
        <img src="assets/img/clubhouse img/chi4.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/clubhouse img/chi4.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div> 
      <div class="col-lg-4 col-md-6 portfolio-item filter-park">
        <img src="assets/img/parkingimg/parkimg1.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/parkingimg/parkimg1.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div> 
      <div class="col-lg-4 col-md-6 portfolio-item filter-data">
        <img src="assets/img/clubhouse img/chi2.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/clubhouse img/chi2.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div> 
      <div class="col-lg-4 col-md-6 portfolio-item filter-park">
        <img src="assets/img/parkingimg/bike2.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/parkingimg/bike2.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div> 
      <div class="col-lg-4 col-md-6 portfolio-item filter-data">
        <img src="assets/img/clubhouse img/chi3.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/clubhouse img/chi3.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div> 
      <div class="col-lg-4 col-md-6 portfolio-item filter-park">
        <img src="assets/img/parkingimg/parkimg2.jpg" style="width: 640px ; height: 220px" class="img-fluid" alt="">
        <div >
           <a href="assets/img/parkingimg/parkimg2.jpg" style="width: 640px ; height: 220px" data-gallery="portfolioGallery"></a>
        </div>
      </div>          
    </div>
  </div>
</section><!-- End Portfolio Section -->
</asp:Content>

