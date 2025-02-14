<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="enquiries.aspx.cs" Inherits="Photographer.admin.enquiries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Professional and attractive CSS for GridView */
         
                /*body{
   background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
}*/


        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-family: Arial, sans-serif;
            font-size: 14px;
            text-align: left;
        }

        .grid-view th, .grid-view td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .grid-view th {
            background-color: #4CAF50;
            color: white;
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
        }

        .grid-view tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .grid-view tr:hover {
            background-color: #ddd;
        }

        .grid-view td {
            text-align: center;
        }

        .grid-view a {
            text-decoration: none;
            color: #4CAF50;
        }

        .grid-view a:hover {
            color: #3e8e41;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Enquiries</h2>
   <asp:GridView ID="GridViewEnquiries" runat="server" CssClass="grid-view" AutoGenerateColumns="False" 
    EmptyDataText="No enquiries found.">
    <Columns>
        <asp:BoundField DataField="uid" HeaderText="Enquiry ID" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="contact" HeaderText="Email" />
        <asp:BoundField DataField="email" HeaderText="Contact" />
          <asp:BoundField DataField="subject" HeaderText="Message" />
       
    </Columns>
</asp:GridView>
</asp:Content>
