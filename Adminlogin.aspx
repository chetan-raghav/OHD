<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <div class="login">
        <table> 
        <tr> <td> <asp:TextBox ID="TextBox1" runat="server" placeholder="Admin id"></asp:TextBox></td> <td> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please enter your Admin ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td> </tr>
         <tr><td><asp:TextBox ID="TextBox2" runat="server" placeholder="Password.."></asp:TextBox></td><td> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Please enter your password " ForeColor="Red"></asp:RequiredFieldValidator>
             </td></tr></table>
          <a href="forget.aspx" class="forgot">Forgot Password ?</a>
        
 <asp:Button ID="Button1" runat="server" Text="Login" type="submit" OnClick="Button1_Click" />
            
</div>
        
<div class="shadow"></div>
</asp:Content>

