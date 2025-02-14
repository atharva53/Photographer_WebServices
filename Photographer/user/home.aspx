<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Photographer.user.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/StyleSheet1-Home%20page.css" rel="stylesheet" />
    <style type="text/css">
        #paralex1{
                height: 100vh; 
                background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../images/parallex02.jpg'); 
                background-size: cover; 
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
        }
        #paralex2{
                height: 100vh; 
                background-image: url('../images/parallex03.jpg'); 
                background-size: cover; 
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <section class="home d-flex align-items-center" id="paralex1" >
    <div class="container text-center">
        <h1 class="display-4 text-white">Capture Your Moments</h1>
        <p class="lead text-white mt-3 mb-5">Creating timeless memories through my lens.</p>
        <a href="#" class="btn btn-book btn-lg">Book a Session</a>
    </div>
</section>

<section class="specializations py-5 bg-light">
    <div class="container text-center">
        <h2 class="mb-5" style="font-family: 'Playfair Display', serif;">My Specializations</h2>
        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card border-0 shadow-sm specialization-card">
                    <div class="card-body">
<img src="https://img.icons8.com/color/128/000000/engagement-ring.png" alt="Pre Wedding" class="mb-3">
                        <h4 class="card-title">Wedding </h4>
                        <p class="card-text">Capturing the most beautiful moments of your special day with elegance and grace.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card border-0 shadow-sm specialization-card">
                    <div class="card-body">
                        <img src="https://img.icons8.com/dusk/128/000000/forest.png" alt="Nature Photography" class="mb-3">
                        <h4 class="card-title">Nature Photography</h4>
                        <p class="card-text">Immortalizing the beauty of nature with stunning, high-definition shots.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card border-0 shadow-sm specialization-card">
                    <div class="card-body">
                        <img src="https://img.icons8.com/dusk/128/000000/portrait.png" alt="Portrait Photography" class="mb-3">
                        <h4 class="card-title">Portrait Photography</h4>
                        <p class="card-text">Creating timeless portraits that capture the essence of personality.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card border-0 shadow-sm specialization-card">
                    <div class="card-body">
                        <img src="https://img.icons8.com/emoji/96/000000/elephant-emoji.png" alt="Wildlife Photography" class="mb-3">
                        <h4 class="card-title">Wildlife Photography</h4>
                        <p class="card-text">Documenting the wonders of wildlife with precision and creativity.</p>
                    </div>
                </div>
            </div>
        </div>

       <div class="container text-center">      
  <div class="row justify-content-center">
    <div class="col-md-3 mb-4">
      <div class="card border-0 shadow-sm specialization-card">
        <div class="card-body">
<img src="https://img.icons8.com/color/128/000000/birthday-cake.png" alt="Birthday " class="mb-3">
          <h4 class="card-title">Birthday </h4>
          <p class="card-text">Creating timeless portraits that capture the essence of personality.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3 mb-4">
      <div class="card border-0 shadow-sm specialization-card">
        <div class="card-body">
<img src="https://img.icons8.com/color/128/000000/baby.png" alt="Baby Photography" class="mb-3">
          <h4 class="card-title">Baby Shoot</h4>
          <p class="card-text">Creating timeless portraits that capture the essence of personality.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3 mb-4">
      <div class="card border-0 shadow-sm specialization-card">
        <div class="card-body">
<img src="https://img.icons8.com/color/128/000000/festival.png" alt="Baby Photography" class="mb-3">
          <h4 class="card-title">Cultural Events</h4>
          <p class="card-text">Creating timeless portraits that capture the essence of personality.</p>
        </div>
      </div>
    </div>
  </div>
</div>

    </div>
</section>


            <section class="home d-flex align-items-center" id="paralex2" >
    <div class="container text-center">
        <h1 class="display-4 text-white">Every shot tells a story</h1>
        <p class="lead text-white mt-3 mb-5">Captures not just images, but the essence of a moment and memories that come with it.</p>
        <%--<a href="#" class="btn btn-book btn-lg">Book a Session</a>--%>
    </div>
</section>


<section class="about-us py-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="image-wrapper">
                    <img src="../images/bg2.jpg" alt="Photographer" class="img-fluid rounded-square">
                </div>
            </div>
            <div class="col-lg-6">
                <h2 class="section-title">About Us</h2>
                <p class="section-description">Welcome to Agamya's Photography. We specialize in capturing moments that matter most to you. With a passion for photography and years of experience, our mission is to provide you with beautiful, timeless images that you'll cherish forever.</p>
                <p class="section-description">Whether you're looking for stunning portraits, captivating nature shots, or elegant pre-wedding photos, we're here to turn your vision into reality. Our team is dedicated to delivering high-quality images that tell your unique story with creativity and professionalism.</p>
            </div>
        </div>
    </div>
</section>



</asp:Content>
