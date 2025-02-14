<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="bookings.aspx.cs" Inherits="Photographer.admin.bookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         /*body{
     background: linear-gradient(to right, #fcc0c0, #fae2e2);
 }*/

                 /*body{
   background: linear-gradient(135deg, #f5f5f5, #d6eaf8);
}*/

        .gridViewStyle {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-size: 16px;
    text-align: left;
}

.gridViewStyle th, .gridViewStyle td {
    padding: 12px 15px;
    border: 1px solid #ddd;
}

.gridViewStyle th {
    background-color: #f4f4f4;
    font-weight: bold;
}

.gridViewStyle tr:nth-child(even) {
    background-color: #f9f9f9;
}

.btnAction {
    padding: 6px 12px;
    margin: 5px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 4px;
}

.btnAction:hover {
    background-color: #45a049;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridViewBookings" runat="server" AutoGenerateColumns="False" CssClass="gridViewStyle">
        <Columns>
            <asp:BoundField DataField="bid" HeaderText="Booking ID" />
            <asp:BoundField DataField="name" HeaderText=" Name" />
             <asp:BoundField DataField="contact" HeaderText="Email" />
             <asp:BoundField DataField="email" HeaderText="Contact" />
             <asp:BoundField DataField="event" HeaderText="Event Name" />
            <asp:BoundField DataField="date" HeaderText="Event Date" DataFormatString="{0:dd/MM/yyyy}" />
             <asp:BoundField DataField="time" HeaderText="Event Time"  />
           
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandArgument='<%# Eval("bid") %>' OnClick="AcceptBooking" CssClass="btnAction" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandArgument='<%# Eval("bid") %>' OnClick="RejectBooking" CssClass="btnAction" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
