<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Photographer.admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <style>
        body{
            background: linear-gradient(to right, #fcc0c0, #fae2e2);
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
        .card-body {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .card i {
            font-size: 3rem;
            opacity: 0.7;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <!-- Total Bookings Card -->
        <div class="col-md-4 mb-4">
            <div class="card text-white bg-primary">
                <div class="card-body">
                    <div>
                        <h5 class="card-title">Total Bookings</h5>
                        <p class="card-text">Number of bookings: <asp:Label ID="lblTotalBookings" runat="server" Text=""></asp:Label></p>
                    </div>
                    <i class="fas fa-calendar-check"></i> <!-- Font Awesome Icon -->
                </div>
            </div>
        </div>
        <!-- Total Team Card -->
        <div class="col-md-4 mb-4">
            <div class="card text-white bg-success">
                <div class="card-body">
                    <div>
                        <h5 class="card-title">Total Team</h5>
                        <p class="card-text">Team members: <asp:Label ID="lblTotalTeam" runat="server" Text=""></asp:Label></p>
                    </div>
                    <i class="fas fa-users"></i> <!-- Font Awesome Icon -->
                </div>
            </div>
        </div>
        <!-- Total Work Done Card -->
        <div class="col-md-4 mb-4">
            <div class="card text-white bg-info">
                <div class="card-body">
                    <div>
                        <h5 class="card-title">Total Work Done</h5>
                        <p class="card-text">Work Completed: <asp:Label ID="lblTotalWorkDone" runat="server" Text=""></asp:Label> Projects</p>
                    </div>
                    <i class="fas fa-tasks"></i> <!-- Font Awesome Icon -->
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Rejected Events Card -->
        <div class="col-md-4 mb-4">
            <div class="card text-white bg-danger">
                <div class="card-body">
                    <div>
                        <h5 class="card-title">Rejected Events</h5>
                        <p class="card-text">Rejected bookings: <asp:Label ID="lblRejectedEvents" runat="server" Text=""></asp:Label></p>
                    </div>
                    <i class="fas fa-times-circle"></i> <!-- Font Awesome Icon -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
