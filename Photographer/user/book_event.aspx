<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="book_event.aspx.cs" Inherits="Photographer.user.book_event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <title>Book a Photography Event</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
             background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
            font-family: 'Poppins', sans-serif;

        }

        .container {
            max-width: 1200px; /* Increase container width for larger screens */
        }

        .card {
            border-radius: 15px; /* More rounded corners for the card */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Enhanced shadow for better depth */
            background: linear-gradient(135deg, #ffffff 0%, #e6f0ff 100%); /* Gradient background for card */
        }

        .card-header {
            background: linear-gradient(to right, #ff7e5f, #feb47b);/* Gradient teal */
            color: #ffffff;
            border-bottom: none;
            border-radius: 15px 15px 0 0; /* Rounded top corners */
            padding: 20px;
        }

        .card-body {
            padding: 40px; /* Increased padding for more space inside the card */
        }

        .btn-primary {
            background: #007bff;
            border: none;
            padding: 12px; /* Slightly larger padding for the button */
            border-radius: 5px;
            font-size: 18px; /* Larger font size for better readability */
            transition: background 0.3s ease; /* Smooth transition for hover effect */
        }

        .btn-primary:hover {
            background: #0056b3;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 12px; /* Increased padding for form fields */
            font-size: 16px; /* Larger font size for better readability */
            transition: border-color 0.3s ease, box-shadow 0.3s ease; /* Smooth transitions for focus */
        }

        .form-control:focus {
            border-color: #0056b3;
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.25);
            outline: none; /* Remove default focus outline */
        }

        .form-group label {
            font-weight: bold; /* Bold labels for better visibility */
            color: #333; /* Darker color for labels */
            margin-bottom: 10px; /* Space below labels */
        }

        .card-header h3 {
            margin: 0;
            font-size: 24px; /* Larger font size for the header */

        }

        .card-body {
            background: rgba(255, 255, 255, 0.9); /* Slightly transparent white background for card body */
            border-radius: 0 0 15px 15px; /* Rounded bottom corners */
        }
        header {
            background: linear-gradient(135deg, #007bff, #00c6ff);
            color: #ffffff;
        }

        header h1 {
            font-size: 3rem; /* Larger font size for the main title */
            margin-bottom: 10px;
        }

        header p {
            font-size: 1.25rem; /* Slightly larger font size for the subtitle */
        }
    </style>


   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <header class="bg-primary text-white text-center py-5">
        <div class="container">
            <h1 class="display-4">Capture Your Special Moments</h1>
            <p class="lead">Professional photography services for weddings, wildlife, fashion shoots, and more.</p>
        </div>
    </header>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
                <div class="card">
                    <div class="card-header text-center">
                        <h3>Book Your Photography Event</h3>
                    </div>
                    <div class="card-body">
                        <form id="eventForm" >
                            <div class="form-group">
                                <label for="name">Name</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Enter your name" Required="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="contact">Contact Number</label>
                        <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" Placeholder="Enter your Contact" ID="txtContact"></asp:TextBox>                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Enter your email" TextMode="Email" Required="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="event">Event Type</label>
                                <asp:DropDownList ID="eventype" runat="server" CssClass="form-control" Required="true">
                                    <asp:ListItem Text="Select an event" Value="" Disabled="true" Selected="true"></asp:ListItem>
                                    <asp:ListItem Text="Wedding" Value="wedding"></asp:ListItem>
                                    <asp:ListItem Text="Birthday" Value="birthday"></asp:ListItem>
                                    <asp:ListItem Text="Fashion Shoot" Value="fashion"></asp:ListItem>
                                    <asp:ListItem Text="Baby" Value="baby"></asp:ListItem>
                                    <asp:ListItem Text="Portrait" Value="portrait"></asp:ListItem>
                                    <asp:ListItem Text="Cultural" Value="cultural"></asp:ListItem>
                                    <asp:ListItem Text="Wildlife" Value="wildlife"></asp:ListItem>
                                
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="date">Date</label>
                                <asp:TextBox ID="evdate" runat="server" CssClass="form-control" Placeholder="Enter your email" TextMode="Date" Required="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="time">Time</label>
                               <asp:TextBox ID="evtime" runat="server" CssClass="form-control" Placeholder="Enter your email" TextMode="Time" Required="true"></asp:TextBox>
                            </div>
                            <asp:Button ID="submitButton" runat="server" CssClass="btn btn-primary btn-block" Text="Submit" onClick="submitButton_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />


    <script>
        function valid() {
            var name = document.getElementById('<%= this.txtName.ClientID %>').value;
            var email = document.getElementById('<%= this.txtEmail.ClientID %>').value;
            var phone = document.getElementById('<%= this.txtContact.ClientID %>').value;
            var evtyp = document.getElementById('<%= this.eventype.ClientID %>').value;
            var evd = document.getElementById('<%= this.evdate.ClientID %>').value;
            var evt = document.getElementById('<%= this.evtime.ClientID %>').value;


            let mobilecon = /^\d{10}$/;
            let emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

            if (name == "" || email == "" || phone == "" || evtyp == "Select" || evd == "" || evt == "") {
            swal("Please fill all details to proceed..!","","warning");
            return false;
        }

        if (phone != '') {
            if (!phone.match(mobilecon)) {
                swal("Please Enter Valid Contact Number","","warning");
                return false;

            }
        }


        if (email != '') {
            if (!email.match(emailcon)) {
                swal("Please Enter Valid Email-Id", "", "warning");
                return false;
            }
        }

        return true;
    }
</script>

     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
