<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employeelogin.aspx.cs" Inherits="Employeelogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" rel="stylesheet" type="text/css" />
     <div class="login">
         <table>

        
    <tr><td> <asp:TextBox ID="TextBox1" runat="server" type="password" placeholder="Employee ID..."></asp:TextBox> </td><td> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please provide your valid Employee ID" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        </td></tr>
  <tr><td> <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="Password..."></asp:TextBox> </td><td> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Please provide your correct password" ForeColor="Red"></asp:RequiredFieldValidator>
      </td></tr></table>
   <a href="Employeeregis.aspx" class="forgot">Sign Up!</a><br />
         <a href="forget.aspx" class="forgot">Forgot Password ?</a>
        
         <asp:Button ID="Button1" runat="server" Text="Login" type="submit" OnClick="Button1_Click" />
              
</div>
<div class="shadow"></div>
</asp:Content>

