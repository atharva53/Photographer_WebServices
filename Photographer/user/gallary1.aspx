<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gallary1.aspx.cs" Inherits="Photographer.user.gallary1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photo Gallery</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
   <style>
               body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f8f9fa;
}

header {
    background: linear-gradient(135deg, #007bff, #00c6ff);
    color: white;
    
}

.gallery {
    column-count: 3;
    column-gap: 1rem;
}

.gallery-item {
    display: inline-block;
    width: 100%;
    margin-bottom: 1rem;
}

.gallery-item img {
    width: 100%;
    height: auto;
    display: block;
    transition: transform 0.3s ease-in-out;
    border-radius: 8px;
}

.gallery-item:hover img {
    transform: scale(1.05);
    cursor: pointer;
}

/* Lightbox CSS */
.lightbox {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.8);
    display: none;
    align-items: center;
    justify-content: center;
    z-index: 1000;
}

.lightbox img {
    max-width: 90%;
    max-height: 90%;
    border-radius: 8px;
}

   </style>
</head>
<body>

     <header class="bg-gradient text-white text-center py-5">
     <h1>Contact Us</h1>
 </header>
    <div class="container mt-4">
        
        <div class="row gallery">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-anurag-sharma-706083-2728252.jpg" alt="Image 1" class="img-fluid">
                </div>
            </div>

            
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-dibert-635499.jpg" alt="Image 2" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-gsn-travel-28277461.jpg" alt="Image 3" class="img-fluid">
                </div>
            </div>
            <!-- Add more images as needed -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-reneterp-1405528.jpg" alt="Image 3" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-michael-block-1691617-3225517.jpg" alt="Image 1" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-tizino-academy-637091-1447375.jpg" alt="Image 2" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="gallery-item">
                    <img src="../images/pexels-reneterp-1405528.jpg" alt="Image 3" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS for zoom effect -->
    <script src="scripts.js"></script>
</body>
</html>
