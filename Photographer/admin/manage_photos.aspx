<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage_photos.aspx.cs" Inherits="Photographer.admin.manage_photos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body{
    background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
 }
        /* Form Styling */
        .card {
            border-radius: 0.75rem;
            background-color: #ffffff;
            border: none;
            transition: transform 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            background-color: #007bff;
            border-radius: 0.75rem 0.75rem 0 0;
        }

        .card-header h4 {
            margin: 0;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .form-label {
            font-weight: bold;
            color: #343a40;
        }

        .form-control, .form-control-file {
            border-radius: 0.5rem;
            border: 1px solid #ced4da;
            padding: 0.75rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-control:hover, .form-control:focus, .form-control-file:hover, .form-control-file:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .save-btn, .delete-btn {
            width: 120px;
            font-size: 1.2rem;
            font-weight: bold;
            border-radius: 0.5rem;
            padding: 0.75rem 1rem;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .save-btn:hover {
            background-color: #28a745;
            transform: translateY(-2px);
        }

        .delete-btn {
            background-color: #dc3545;
        }

        .delete-btn:hover {
            background-color: #c82333;
            transform: translateY(-2px);
        }

        .img-thumbnail {
            border-radius: 0.5rem;
            width: 150px;
            height: 150px;
        }

        .text-success {
            color: green;
        }

        .text-danger {
            color: red;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Add Photo</h4>
                    </div>
                    <div class="card-body">
                        <!-- ASP.NET controls go here -->
                        <div class="form-group">
                            <label for="eventType">Select Event Type</label>
                            <asp:DropDownList ID="ddlEventType" runat="server" CssClass="form-control">
                                <asp:ListItem Value="wedding">Wedding</asp:ListItem>
                                <asp:ListItem Value="birthday">Birthday</asp:ListItem>
                                <asp:ListItem Value="cultural">Cultural</asp:ListItem>
                                <asp:ListItem Value="fashion">Fashion Shoot</asp:ListItem>
                                <asp:ListItem Value="portrait">Portrait Shoot</asp:ListItem>
                                <asp:ListItem Value="baby">Baby Shoot</asp:ListItem>
                                <asp:ListItem Value="wildlife">Wild Life</asp:ListItem>
                                <asp:ListItem Value="nature">Nature</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="uploadPhoto">Upload Photo</label>
                            <asp:FileUpload ID="fileUploadPhoto" runat="server" CssClass="form-control-file" />
                        </div>

                        <!-- Image preview -->
                        <div class="form-group">
                            <asp:Image ID="imgPreview" runat="server" ImageUrl="~/Images/noimage.png" CssClass="img-thumbnail" />
                        </div>

                        <!-- Upload Button -->
                        <div class="form-group text-center">
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btnUpload_Click" />
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
                          
                        </div>

                        <!-- Label to display success or error messages -->
                        <div class="form-group text-center">
                            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" />
                        </div>

                        <!-- GridView to display images -->
                        <div class="form-group">
                            <asp:GridView ID="gvPhotos" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                                <Columns>
                                   
                                    <asp:BoundField DataField="phid" HeaderText="Photo ID" />

                                   
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <img src='<%# ResolveUrl(Eval("phimg").ToString()) %>' style="width:100px;height:100px;" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:BoundField DataField="phevent" HeaderText="Event Type" />

                                   
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandArgument='<%# Eval("phid") %>' OnClick="btnDelete_Click" CssClass="btn btn-danger" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
