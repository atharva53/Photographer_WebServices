<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Photographer.user.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        body {
             font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
            margin: 0;
            padding: 0;
           }

        .form-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 600;
        }

        .form-control {
            border-radius: 5px;
            padding: 10px;
            border: 1px solid #ccc;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .map-container {
            border: 1px solid #ccc;
            border-radius: 10px;
            margin-top: 20px;
        }

        .map-container iframe {
            border-radius: 10px;
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
        <h1 class="display-4">Contact</h1>
        <p class="lead">Contact is the bridge that connects hearts, ideas, and opportunities, fostering communication and understanding.</p>
    </div>
</header>

        <div class="container my-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-container">
                        <h2 class="mb-4">Get in Touch</h2>
                        <asp:Panel runat="server">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <asp:TextBox ID="txtName" CssClass="form-control" Placeholder="Your Name" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="contact">Contact Number</label>
                                <asp:TextBox ID="txtContact" CssClass="form-control" Placeholder="Your Contact Number" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" Placeholder="Your Email" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="subject">Subject</label>
                                <asp:TextBox ID="txtSubject" CssClass="form-control" Placeholder="Subject" runat="server" />
                            </div>
                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary btn-lg btn-block" Text="Submit"  runat="server" OnClick="btnSubmit_Click" />
                        </asp:Panel>
                    </div>
                </div>
                <div class="col-md-6">
                    <h2 class="mb-4">Our Location</h2>
                    <p><strong>Company Address :</strong> 122, Agamya Studios, North City Plaza</p>
                    <p><strong>Email :</strong> agamyastudios@gmail.com</p>
                    <p><strong>Contact :</strong> (555) 123-4567</p>
                    <div class="map-container">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.0706280818296!2d-122.08904668468057!3d37.38814577983015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb7612f6df0d9%3A0x787e3ed926a5f11!2sGoogleplex!5e0!3m2!1sen!2sus!4v1633046360650!5m2!1sen!2sus" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
        </div>


</asp:Content>
