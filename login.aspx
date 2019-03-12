 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" rel="stylesheet" type="text/css" />
     <div class="login">
     <table> 
         <tr><td><asp:TextBox ID="TextBox1" runat="server" placeholder="Email Id"></asp:TextBox></td><td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please write your Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Incorrect Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td></tr> 
         <tr><td><asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox></td><td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Please write your correct password" ForeColor="Red"></asp:RequiredFieldValidator>
             </td></tr></table>

         <asp:Button ID="Button1" runat="server" Text="Login" type="submit" OnClick="Button1_Click"/><br />
   <a href="StudentRegister.aspx" class="forgot">Sign Up!</a>
         
         <a href="~/email/rpwd.aspx" class="forgot">Forgot Password?</a>
        
 
         
</div>
<div class="shadow"></div>
</asp:Content>

