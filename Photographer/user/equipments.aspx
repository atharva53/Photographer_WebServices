<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="equipments.aspx.cs" Inherits="Photographer.user.videos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
            margin: 0;
            padding: 0;
        }

        

        .container {
            margin-top: 40px;
        }

        .title-section {
            text-align: center;
            margin-bottom: 60px;

        }

        .title-section h1 {
            font-size: 3rem;
            font-weight: 700;
            color: #333;
        }

        .title-section p {
            font-size: 1.1rem;
            color: #666;
        }

        .equipment-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            margin-bottom: 30px;
        }

        .equipment-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .equipment-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .card-body {
            padding: 20px;
        }

        .equipment-title {
            font-size: 1.75rem;
            font-weight: 600;
            color: #333;
        }

        .equipment-description {
            font-size: 1rem;
            color: #777;
            margin-top: 10px;
        }

        
        footer {
            background-color: #1a1a1a;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        .footer-links {
            color: #ffffff;
            text-decoration: none;
        }

        .footer-links:hover {
            color: #00c6ff;
        }

        /* Centering the Cards in the Page */
        .equipment-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .equipment-card-wrapper {
            max-width: 45%; /* Adjusted width to increase card size */
            width: 100%;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .equipment-card-wrapper {
                max-width: 100%;
            }

            .title-section h1 {
                font-size: 2rem;
            }

            .equipment-card {
                margin-bottom: 30px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />

    <!-- Title Section -->
    <div class="title-section">
        <h1>Explore Our Premium Photography Equipment</h1>
        <p>Top-of-the-line tools to help you capture the perfect moment</p>
    </div>

    <!-- Equipment Cards Section -->
    <div class="container">
        <div class="equipment-section">
            <!-- Equipment 1 -->
            <div class="equipment-card-wrapper">
                <div class="card equipment-card">
                    <img src="../images/e1.jpg" class="card-img-top" alt="Camera">
                    <div class="card-body">
                        <h5 class="equipment-title">Canon EOS 5D Mark IV</h5>
                        <p class="equipment-description">A full-frame DSLR camera with incredible autofocus and image quality. Ideal for professional photographers.</p>
                        
                        
                    </div>
                </div>
            </div>
            <!-- Equipment 2 -->
            <div class="equipment-card-wrapper">
                <div class="card equipment-card">
                    <img src="../images/e3.jpg" class="card-img-top" alt="Tripod">
                    <div class="card-body">
                        <h5 class="equipment-title">Manfrotto 055 Tripod</h5>
                        <p class="equipment-description">A premium aluminum tripod that ensures steady shots in any environment, from studio to outdoors.</p>
                        
                    </div>
                </div>
            </div>
        </div>

        <!-- Second Row of Equipment -->
        <div class="equipment-section">
            <!-- Equipment 3 -->
            <div class="equipment-card-wrapper">
                <div class="card equipment-card">
                    <img src="../images/e4.jpg" class="card-img-top" alt="Lens">
                    <div class="card-body">
                        <h5 class="equipment-title">Sigma 24-70mm f/2.8</h5>
                        <p class="equipment-description">A versatile zoom lens for stunning wide-angle to portrait shots. Perfect for most situations.</p>
                        
                    </div>
                </div>
            </div>
            <!-- Equipment 4 -->
            <div class="equipment-card-wrapper">
                <div class="card equipment-card">
                    <img src="../images/e5.jpg" class="card-img-top" alt="Lighting">
                    <div class="card-body">
                        <h5 class="equipment-title">Godox AD200 Pro</h5>
                        <p class="equipment-description">A powerful strobe light that provides professional-level lighting for any photoshoot.</p>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
