<%@ Page Title="Upcoming Work" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="upcomingWork.aspx.cs" Inherits="Photographer.admin.upcomingWork" %>

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
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }

        .gridViewStyle tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .gridViewStyle tr:hover {
            background-color: #d1e7ff;
        }

        .gridViewStyle td {
            vertical-align: middle;
        }

        .btnAction {
            padding: 8px 12px;
            background-color: #dc3545;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .btnAction:hover {
            background-color: #c82333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 class="text-center" style="color: #007bff;">Upcoming Events</h2>
        <asp:GridView ID="GridViewUpcomingWork" runat="server" AutoGenerateColumns="False" CssClass="gridViewStyle">
            <Columns>
                <asp:BoundField DataField="bid" HeaderText="Booking ID" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="contact" HeaderText="Email" />
                <asp:BoundField DataField="email" HeaderText="Contact" />
                <asp:BoundField DataField="event" HeaderText="Event Name" />
                <asp:BoundField DataField="date" HeaderText="Event Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="time" HeaderText="Event Time" />

               
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button ID="btnReject" runat="server" Text="Reject" CommandArgument='<%# Eval("bid") %>' OnClick="RejectBooking" CssClass="btnAction" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
