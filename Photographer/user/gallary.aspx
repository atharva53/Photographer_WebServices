<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="gallary.aspx.cs" Inherits="Photographer.user.gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /* General styling */
body {
    font-family: 'Poppins', sans-serif;
background: linear-gradient(to right, #f6b1d2, #fff2fa);
margin: 0;
padding: 0;
    
}

/* Gallery styling */
#gallery {
    background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
    padding: 60px 0;
}

h2 {
    font-size: 2.5rem;
    font-weight: 600;
    color: #333;
}

.gallery-item {
    position: relative;
    overflow: hidden;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.gallery-item img {
    width: 100%;
    height: auto;
    transition: transform 0.3s ease;
}

.gallery-item:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

.gallery-item:hover img {
    transform: scale(1.1);
}

/* Responsive */
@media (max-width: 768px) {
    h2 {
        font-size: 2rem;
    }
}



       header {
    background: linear-gradient(135deg, #007bff, #00c6ff);
    color: #ffffff;
    padding: 80px 0;
    text-align: center;
}

header .display-4 {
    font-size: 3rem;
    margin-bottom: 0.5rem;
    font-weight: bold;
}

header .lead {
    font-size: 1rem;
    font-weight: 200;
}

    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <header class="bg-primary text-white text-center py-5">
    <div class="container">
        <h1 class="display-4">Gallary</h1>
        <p class="lead">A photo gallery is a visual journey, where each image tells a unique story, preserving moments in time forever.</p>
    </div>
</header>

    <body id="#bdy">

     <!-- Gallery Section -->
    <section id="gallery" class="py-5">
        <div class="container">
            <%--<h2 class="text-center mb-4">Photography Gallery</h2>--%>
            <div class="row g-4">
                <!-- Gallery Item 1 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/pexels-asadphoto-1024960.jpg" class="img-fluid rounded" alt="Nature">
                    </div>
                </div>
                <!-- Gallery Item 2 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/pexels-minan1398-1313814.jpg" class="img-fluid rounded" alt="Wedding">
                    </div>
                </div>
                <!-- Gallery Item 3 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/pexels-dreamlensproduction-5837638.jpg" class="img-fluid rounded" alt="Portrait">
                    </div>
                </div>
                <!-- Gallery Item 4 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/b4.jpg" class="img-fluid rounded" alt="Wildlife">
                    </div>
                </div>
                <!-- Gallery Item 5 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/natur9.jpg" class="img-fluid rounded" alt="Architecture">
                    </div>
                </div>
                <!-- Gallery Item 6 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/wild3.jpg" class="img-fluid rounded" alt="City">
                    </div>
                </div>
                <!-- Gallery Item 7 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/wed2.jpg" class="img-fluid rounded" alt="Macro">
                    </div>
                </div>
                <!-- Gallery Item 8 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/fash5.jpg" class="img-fluid rounded" alt="Landscape">
                    </div>
                </div>
                <!-- Gallery Item 9 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/wed5.jpg" class="img-fluid rounded" alt="Street">
                    </div>
                </div>
                <!-- Gallery Item 10 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/bab2.jpg" class="img-fluid rounded" alt="Fashion">
                    </div>
                </div>
                <!-- Gallery Item 11 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/wild2.jpg" class="img-fluid rounded" alt="Food">
                    </div>
                </div>
                <!-- Gallery Item 12 -->
                <div class="col-lg-4 col-md-6">
                    <div class="gallery-item">
                        <img src="../images/natur2.jpg" class="img-fluid rounded" alt="Night Sky">
                    </div>
                </div>
            </div>
        </div>
    </section>
        </body>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script> 



</asp:Content>
