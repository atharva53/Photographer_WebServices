<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="team.aspx.cs" Inherits="Photographer.admin.team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body{
     background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
 }
        /* General form styling */
        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .card-header {
            padding: 1rem;
            background-color: #007bff;
            color: white;
            text-align: center;
            font-weight: bold;
        }

        .card-body {
            padding: 2rem;
        }

        .form-group label {
            font-weight: bold;
            color: #333;
        }

        .form-control {
            padding: 0.75rem;
            border-radius: 5px;
            border: 1px solid #ccc;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        /* Buttons styling */
        .btn {
            width: 120px;
            padding: 0.5rem;
            border-radius: 25px;
            transition: background-color 0.3s ease;
            font-size: 1.1rem;
        }

        .btn-hover:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 123, 255, 0.3);
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        .container {
            margin-top: 50px;
        }

        .card-header {
            font-size: 1.5rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group .form-control {
            font-size: 1rem;
        }

        /* Image preview */
        .img-preview {
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-top: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* GridView styling */
        .gridview-container {
            margin-top: 20px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin: 0;
            padding: 0;
        }

        .gridview th, .gridview td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .gridview th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }

        .gridview tr:hover {
            background-color: #f5f5f5;
        }

        .gridview .select-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.9rem;
            transition: background-color 0.3s ease;
        }

        .gridview .select-button:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Team</h4>
                    </div>
                    <div class="card-body">
                        <!-- Form fields -->
                        <div class="form-group">
                            <label for="name">Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="designation">Designation</label>
                            <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control" placeholder="Enter Designation"></asp:TextBox>
                        </div>

                        <!-- File upload for photo -->
                        <div class="form-group">
                            <label for="photo">Upload Photo</label>
                            <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" />
                            <asp:Image ID="imgPreview" runat="server" CssClass="img-preview" Visible="false" />
                        </div>
                        <div class="form-group text-center">
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-info btn-hover" OnClick="btnUpload_Click" />
                        </div>
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

                        <div class="form-group text-center">
                            <asp:Button ID="btnNew" runat="server" Text="New" CssClass="btn btn-primary btn-hover" OnClick="btnNew_Click" />
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success btn-hover" OnClick="btnSave_Click" />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning btn-hover" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-hover" OnClick="btnDelete_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- GridView for displaying team members -->
        <div class="row mt-4 gridview-container">
            <div class="col-md-12">
               <asp:GridView ID="gvTeamMembers" runat="server" AutoGenerateColumns="False" OnRowCommand="gvTeamMembers_RowCommand" DataKeyNames="Id, photo" CssClass="table table-striped">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnSelect" runat="server" CommandName="Select" CommandArgument="<%# Container.DataItemIndex %>" Text="Select" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Id" HeaderText="ID" Visible="true" /> 
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Designation" HeaderText="Designation" />
        <asp:ImageField DataImageUrlField="photo" HeaderText="Photo" ControlStyle-Width="150px" ControlStyle-Height="150px" />
       
    </Columns>
</asp:GridView>




            </div>
        </div>
    </div>
</asp:Content>
