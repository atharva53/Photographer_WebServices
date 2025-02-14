<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Photographer.admin.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<head runat="server">--%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        #body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #1a2a6c, #b21f1f, #fdbb2d);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .login-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 900px;
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
        }
        .login-image {
            flex: 1;
            background-image: url('../images/Mobile-login-Cristina.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
        }
        .login-form {
            flex: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .login-form h2 {
            margin-bottom: 30px;
            color: #333;
            font-weight: 700;
            text-align: center;
            font-size: 28px;
        }
        .form-control {
            height: 45px;
            font-size: 16px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .btn-login {
            background-color: #007bff;
            color: #fff;
            font-size: 18px;
            padding: 12px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-login:hover {
            background-color: #0056b3;
        }
        .forgot-password {
            text-align: center;
            margin-top: 15px;
        }
        .forgot-password a {
            color: #007bff;
            text-decoration: none;
        }
        .forgot-password a:hover {
            text-decoration: underline;
        }
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
            }
            .login-form {
                padding: 20px;
            }
            .login-form h2 {
                font-size: 24px;
            }
        }
    </style>
<%--</head>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
   <div id="body">
        <div class="login-container">
            <!-- Image Section -->
            <div class="login-image"></div>

            <!-- Form Section -->
            <div class="login-form">
                <h2>Admin Login</h2>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" Placeholder="Enter username"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" Placeholder="Enter password"></asp:TextBox>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-login" onClick="btnLogin_Click" />
                <div class="forgot-password">
                    <a href="../user/home.aspx">Forgot Password?</a>
                </div>
               
            </div>
        </div>
       </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    
</asp:Content>
