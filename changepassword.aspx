<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="changepasswordstyle.css" rel="stylesheet" type="text/css" />
     <div class="login">
         <asp:TextBox ID="TextBox1" runat="server" placeholder="Old password"></asp:TextBox>
         <asp:TextBox ID="TextBox2" runat="server" placeholder="New password"></asp:TextBox>
         <asp:TextBox ID="TextBox3" runat="server" placeholder="Confirm password"></asp:TextBox>

         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click"/><br />
        
</div>
    
<div class="shadow"></div>
</asp:Content>

