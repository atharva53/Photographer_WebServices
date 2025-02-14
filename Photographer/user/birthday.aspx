<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="birthday.aspx.cs" Inherits="Photographer.user.birthday" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Bootstrap CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

 <style>
                     body {
            font-family: 'Poppins', sans-serif;
background: linear-gradient(to right, #f6b1d2, #fff2fa);

        }
     .services-header {
         text-align: center;
         background: linear-gradient(135deg, #007bff, #00c6ff);
         color: white;
         padding: 50px 0;
         margin-bottom: 50px;
     }
     .services-header h1 {
         font-size: 48px;
         font-weight: bold;
     }
     .image-gallery {
         display: flex;
         flex-wrap: wrap;
         justify-content: center;
         gap: 20px;
         margin: 0 auto; /* Center the gallery */
     }
     .gallery-item {
         border-radius: 10px;
         overflow: hidden;
         box-shadow: 0 4px 8px rgba(0,0,0,0.1);
         transition: transform 0.3s ease;
         flex: 1 1 calc(25% - 20px); /* Flexbox for responsiveness */
         max-width: 400px; /* Max width for each item */
     }
     .gallery-item:hover {
         transform: scale(1.05);
         cursor: pointer;
     }
     .gallery-item img {
         width: 100%;
         height: auto;
         border-radius: 10px;
     }
     @media (max-width: 768px) {
         .gallery-item {
             flex: 1 1 calc(50% - 20px); /* Two items on smaller screens */
         }
     }
     @media (max-width: 480px) {
         .gallery-item {
             flex: 1 1 100%; /* One item on very small screens */
         }
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Header Section -->
 <header class="services-header">
     <h1>BIRTHDAY</h1>
     <br />
     <h6>A birthday is a joyful milestone, celebrating life, love, and the precious moments that make every year special</h6>
 </header>

 <!-- Wedding Image Gallery -->
 <div class="container">
     <div class="image-gallery">
         <asp:Repeater ID="rptWeddingImages" runat="server">
             <ItemTemplate>
                 <div class="gallery-item">
                     <!-- Using asp:Image control to dynamically bind the image URL -->
                     <asp:Image ID="imgWedding" runat="server" ImageUrl='<%# Eval("phimg") %>' AlternateText="Birthday Image" CssClass="img-fluid" Height="240px" />
                 </div>
             </ItemTemplate>
         </asp:Repeater>
     </div>
 </div>
    <br />
</asp:Content>
