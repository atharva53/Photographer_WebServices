<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="Photographer.user.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <head runat="server">--%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        #body {
           font-family: 'Poppins', sans-serif;
background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
margin: 0;
padding: 0;
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
        .service-card {
            transition: all 0.3s ease-in-out;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .service-card img {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        .service-card-body {
            padding: 20px;
            text-align: center;
        }
        .service-card h5 {
            margin-bottom: 15px;
            font-size: 24px;
            color: #343a40;
        }
        .btn-view {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 10px 20px;
            transition: background-color 0.3s;
        }
        .btn-view:hover {
            background-color: #0056b3;
        }
        @media (max-width: 768px) {
            .service-card img {
                height: auto;
                width: 100%;
            }
        }

        .hlink{
            text-decoration:none;
        }
    </style>
<%--</head>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
   <%-- <form id="form1" runat="server">--%>
        <!-- Header Section -->
        <header class="services-header">
            <h1>Our Photography Services</h1>
            <p>Explore the wide range of professional photography services we offer.</p>
        </header>

        <!-- Services Section -->
        <div class="container">
            <div class="row">
                <!-- Wedding -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/wedding.jpg" class="card-img-top" alt="Wedding Photography">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Wedding Photography</h5>
                           <%-- <asp:Button runat="server" Text="View More" CssClass="btn btn-view" href="../user/wedding.aspx"/>--%>
                            <asp:HyperLink ID="HyperLink1" runat="server" href="../user/wedding.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>

                <!-- Birthday -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/birthday.jpg" class="card-img-top" alt="Birthday Photography">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Birthday Photography</h5>
                           <%-- <asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                            <asp:HyperLink ID="HyperLink2" runat="server" href="../user/birthday.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>

                <!-- Fashion Shoot -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/fashion.jpg" class="card-img-top" alt="Fashion Shoot">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Fashion Shoot</h5>
                            <%--<asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                            <asp:HyperLink ID="HyperLink3" runat="server" href="../user/fashion_shoot.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>

                <!-- Cultural Event -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/cultural.jpg" class="card-img-top" alt="Cultural Event Photography">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Cultural Event Photography</h5>
                            <%--<asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                            <asp:HyperLink ID="HyperLink4" runat="server" href="../user/academic-cultural.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>

                <!-- Nature Photography -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/nature.jpg" class="card-img-top" alt="Nature Photography">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Nature Photography</h5>
                            <%--<asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                            <asp:HyperLink ID="HyperLink5" runat="server" href="../user/nature.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>

                <!-- Wildlife Photography -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/wildlife.jpg" class="card-img-top" alt="Wildlife Photography">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Wildlife Photography</h5>
                            <%--<asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                            <asp:HyperLink ID="HyperLink6" runat="server" href="../user/wildlife.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>

                <!-- Baby Shoot -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/babyshoot.jpg" class="card-img-top" alt="Baby Shoot Photography">
                        <div class="card-body service-card-body">
                            <h5 class="card-title">Baby Shoot Photography</h5>
                           <%-- <asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                            <asp:HyperLink ID="HyperLink7" runat="server" href="../user/baby_shoot.aspx" CssClass="hlink">View</asp:HyperLink>
                        </div>
                    </div>
                </div>


                <!-- Baby Shoot -->
                <div class="col-md-4 mb-4">
                    <div class="card service-card">
                        <img src="../images/Portrait.jpg" class="card-img-top" alt="Portrait Photography">
                            <div class="card-body service-card-body">
                                <h5 class="card-title">Portrait Photography</h5>
                                <%--<asp:Button runat="server" Text="View More" CssClass="btn btn-view" />--%>
                                <asp:HyperLink ID="HyperLink8" runat="server" href="../user/portrait.aspx" CssClass="hlink">View</asp:HyperLink>
                            </div>
                        </div>
                    </div>
            </div>
        </div>

  <%--  </form>--%>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</div>
</asp:Content>
