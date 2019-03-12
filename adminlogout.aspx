<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="adminlogout.aspx.cs" Inherits="adminlogout1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Are you sure you want to logout ?" Font-Bold="True" Font-Size="Larger"></asp:Label><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Yes" OnClick="Button1_Click" Font-Size="Larger" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

        <asp:Button ID="Button2" runat="server" Text="No" OnClick="Button2_Click" Font-Size="Larger" />
    </div>

</asp:Content>

