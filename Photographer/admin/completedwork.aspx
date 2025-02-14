<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="completedwork.aspx.cs" Inherits="Photographer.admin.working_history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>

                /* body{
   background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
}*/
         
        .gridViewStyle {
            width: 100%;
            margin: 20px 0;
            font-size: 16px;
            border-collapse: collapse;
        }

        .gridViewStyle th, .gridViewStyle td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .gridViewStyle th {
            background-color: #28a745;
            color: white;
            font-weight: bold;
        }

        .gridViewStyle tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .gridViewStyle tr:hover {
            background-color: #d1e7ff;
        }

        .gridViewStyle td {
            vertical-align: middle;
        }

        .dropdownStyle {
            margin: 10px 5px;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ced4da;
            font-size: 16px;
            width: 150px;
        }

        .labelStyle {
            margin-right: 10px;
            font-weight: bold;
        }

        .btn-primary {
            margin-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h2 class="text-center" style="color: #28a745;">Completed Work</h2>
        
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

        <div class="form-group">
            <label class="labelStyle">Year:</label>
            <asp:DropDownList ID="ddlYear" runat="server" CssClass="dropdownStyle"></asp:DropDownList>
            
            <label class="labelStyle">Month:</label>
            <asp:DropDownList ID="ddlMonth" runat="server" CssClass="dropdownStyle"></asp:DropDownList>
            
            <label class="labelStyle">Event:</label>
            <asp:DropDownList ID="ddlEvent" runat="server" CssClass="dropdownStyle"></asp:DropDownList>
            
            <asp:Button ID="btnApply" runat="server" Text="Apply" CssClass="btn btn-primary" OnClick="btnApply_Click" />
        </div>
        
        <asp:GridView ID="GridViewCompletedWork" runat="server" AutoGenerateColumns="False" CssClass="gridViewStyle">
            <Columns>
                <asp:BoundField DataField="bid" HeaderText="Booking ID" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="contact" HeaderText="Email" />
                <asp:BoundField DataField="email" HeaderText="Contact" />
                <asp:BoundField DataField="event" HeaderText="Event Name" />
                <asp:BoundField DataField="date" HeaderText="Event Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="time" HeaderText="Event Time" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
