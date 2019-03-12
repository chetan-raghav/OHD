<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="forgetpasswordstyle.css" rel="stylesheet" type="text/css" />
     <div class="login">
     <input type="text" placeholder="Email" id="email"/>  

         <asp:Button ID="Button1" runat="server" Text="Reset my Password !" type="submit" /><br />
         <asp:Button ID="Button2" runat="server" Text="Cancel" type="submit" OnClick="Button2_Click" />
</div>
<div class="shadow">
</div>
</asp:Content>

