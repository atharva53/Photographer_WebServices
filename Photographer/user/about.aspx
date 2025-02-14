<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Photographer.user.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .card {
            width: 250px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-body {
            padding: 15px;
        }

        .card-title {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }

        .card-designation {
            font-size: 14px;
            color: #777;
        }





        body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
    color: #333;
}

header {
    background: linear-gradient(135deg, #007bff, #00c6ff);
    color: #ffffff;
    padding: 80px 0;
    text-align: center;
}

header .display-4 {
    font-size: 4rem;
    margin-bottom: 0.5rem;
    font-weight: bold;
}

header .lead {
    font-size: 1.5rem;
    font-weight: 300;
}

#studio-info h2, #photographer-info h2, #photographer-team h2 {
    margin-bottom: 2rem;
    font-size: 2.5rem;
    color: #333;
    font-weight: 600;
    text-align: center;
}

#studio-info p {
    font-size: 1.15rem;
    line-height: 1.6;
    color: #555;
}

.photographer-section {
    background: #f9f9f9;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s ease;
    text-align: center; /* Center-align all text in the section */
}

.photographer-section:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.section-title {
    margin-bottom: 20px;
    font-size: 2em;
    color: #333;
}

.photographer-content {
    display: flex;
    flex-direction: column; /* Arrange items in a column */
    align-items: center; /* Center-align items horizontally */
    gap: 20px; /* Space between image and text */
}

.photographer-img-container {
    display: flex;
    justify-content: center; /* Center-align image container horizontally */
}

.lead-photographer-img {
    border-radius: 8px;
    max-width: 300px; /* Control image size */
    transition: transform 0.3s ease;
}

.lead-photographer-img:hover {
    transform: scale(1.05);
}

.photographer-info {
    max-width: 600px; /* Set a max-width to control text container size */
    margin: 0 auto; /* Center-align the text container */
}

h3 {
    font-size: 1.5em;
    color: #222;
    margin-bottom: 10px;
}

p {
    font-size: 1em;
    color: #ffffff;
}




.team-card {
    border: none;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s, box-shadow 0.3s;
}

.team-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
}

.team-img {
    height: 220px;
    object-fit: cover;
    transition: opacity 0.3s;
}

.team-img:hover {
    opacity: 0.8;
}

.card-body {
    background-color: #fff;
    padding: 1.5rem;
    border-top: 2px solid #007bff;
}

.card-title {
    font-size: 1.5rem;
    margin-bottom: 0.5rem;
    color: #333;
    font-weight: 600;
}

.card-text {
    font-size: 1.1rem;
    color: #666;
}







/* General Container Styling */
.container {
    font-family: 'Poppins', sans-serif;
}

/* Flexbox Wrapper for Two Sections */
.studio-photographer-wrapper {
    display: flex;
    flex-wrap: wrap;
    gap: 2rem; /* Adds spacing between sections */
    justify-content: space-between;
    align-items: flex-start; /* Aligns content at the top */
}

/* About Our Studio Section */
.studio-section {
    flex: 1; /* Allows the section to take equal width */
    max-width: 48%; /* Adjusts the width of the section */
}

.studio-section img.studio-img {
    width: 100%;
    margin-top: 1rem;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Meet Our Lead Photographer Section */
.photographer-section {
    flex: 1; /* Allows the section to take equal width */
    max-width: 48%; /* Adjusts the width of the section */
    min-height: 500px; /* Set a minimum height */
}

/* Optional: Add padding to increase space inside the div */
.photographer-content {
    padding: 2rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    justify-content: space-between; /* Distribute content evenly */
}

/* Photographer Image */
.photographer-img-container img {
    width: 100%;
    max-width: 300px;
    height: auto;
    border-radius: 10%;
    border: 4px solid #ddd;
    object-fit: cover;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    margin-bottom: 1rem;
}

/* Photographer Info */
.photographer-info {
    margin-top: 1rem;
    flex-grow: 1; /* Pushes content to fill the height */
}

.photographer-info h3 {
    font-size: 1.8rem;
    margin-bottom: 0.5rem;
    color: #333;
}

.photographer-info p {
    font-size: 1rem;
    color: #555;
}
/* General Styling for Section Titles */
.section-title {
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 1rem;
    text-align: center;
    color: #444;
}

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <header class="bg-primary text-white text-center py-5">
        <div class="container">
            <h1 class="display-4">Studio Visionary</h1>
            <p class="lead">Capturing Moments, Creating Memories</p>
        </div>
    </header>

   <div class="container mt-5">
    <div class="studio-photographer-wrapper">
        <!-- About Our Studio Section -->
        <section id="studio-info" class="studio-section">
            <h2 class="section-title">About Our Studio</h2>
            <p>
                At Studio Visionary, we transform your special moments into stunning visuals. Established in 2010, we specialize in professional photography that captures the essence of every occasion. Whether it’s elegant portraits or dynamic event photography, our dedicated team uses the latest technology to deliver exceptional results. With a passion for storytelling through images, we aim to preserve your memories in the most breathtaking way possible. Our commitment to innovation and personalized service ensures each client enjoys an unforgettable experience. 
            </p>
            <img src="../images/camera-514992_1280.jpg" alt="Studio Image" class="studio-img">
        </section>

        <!-- Meet Our Lead Photographer Section -->
        <section id="photographer-info" class="photographer-section">
            <h2 class="section-title">Meet Our Lead Photographer</h2>
            <div class="photographer-content">
                <div class="photographer-img-container">
                    <img src="../images/leader.jpg" alt="John Doe" class="lead-photographer-img">
                </div>
                <div class="photographer-info">
                    <h3>Agamya</h3>
                    <p>
                        Agamya, the visionary behind Studio Visionary, brings over 15 years of photography expertise. His journey began with a passion for capturing moments, and he now combines creativity with advanced techniques to produce awe-inspiring images. Agamya's commitment to excellence and artistic eye make him a highly sought-after professional in the photography world.
                    </p>
                </div>
            </div>
        </section>
    </div>
</div>

        
        <br><br />
        
        <section id="photographer-team">
            <h2>Our Team</h2>
            </section>




    <asp:ListView ID="ListViewTeam" runat="server">
        <LayoutTemplate>
            <div class="card-container">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="card">
                 <asp:Image ID="imgWedding" runat="server" ImageUrl='<%# Eval("photo") %>' AlternateText="Wedding Image"/>
                <div class="card-body">
                    <div class="card-title"><%# Eval("name") %></div>
                    <div class="card-designation"><%# Eval("designation") %></div>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
        <br />

</asp:Content>
