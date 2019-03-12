<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employeeregis.aspx.cs" Inherits="Employeeregis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="empregister.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style5 {
            width: 251px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="login">
                        <table align="center">
                             
        <tr>
                                <td colspan="2" style="font-size:x-large;color:black;text-align:center"><br /><br />Sign Up for Your New Account<br /><br /></td>
                                <td style="font-size:x-large;color:black;text-align:center" class="auto-style5">&nbsp;</td>
        </tr>
    
                            
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="eid" runat="server" AssociatedControlID="empid">Employee ID :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="empid" runat="server" Width="300px" placeholder="Enter your employee id .."></asp:TextBox>
                                     </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="empid" ErrorMessage="*Employee ID required" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="ename" runat="server" AssociatedControlID="username">Name :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="username" runat="server" Width="300px" placeholder="Enter your name .."></asp:TextBox>
                                    </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="username" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="did" runat="server" AssociatedControlID="deptid">Department Id :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="deptid" runat="server" placeholder="Enter your Department ID .." Width="300px"></asp:TextBox>
                                    </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="deptid" ErrorMessage="*Please give your Department ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="dept" runat="server" AssociatedControlID="DDL1">Department Name :</asp:Label>
                                   
                                </td>
                                <td>
                                    <asp:DropDownList ID="DDL1" runat="server" Width="300px" CssClass="ddl">
                                        <asp:ListItem>Select Department</asp:ListItem>
                                        <asp:ListItem>Degree</asp:ListItem>
                                        <asp:ListItem>Establishment</asp:ListItem>
                                        <asp:ListItem>Migration</asp:ListItem>
                                        <asp:ListItem>Academics</asp:ListItem>
                                    </asp:DropDownList>
                                     </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDL1" ErrorMessage="*Please select your department name" ForeColor="Red" InitialValue="Select Department"></asp:RequiredFieldValidator>
                                     </td>
                            </tr>
                             
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="pt" runat="server" AssociatedControlID="post">Post :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="post" runat="server" placeholder="Enter your Post.." Width="300px"></asp:TextBox>
                                    </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="post" ErrorMessage="*Please provide your post" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="EmailLabel1" runat="server" AssociatedControlID="Email1">E-mail :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email1" runat="server" Width="300px" placeholder="Enter your E-mail address.."></asp:TextBox>
                                    </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Email1" ErrorMessage="*Please give your Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email1" ErrorMessage="*Valid Email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="PasswordLabel1" runat="server" AssociatedControlID="Password1">Password :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password1" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                                      </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Password1" ErrorMessage="*Please provide your password" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="ConfirmPasswordLabel1" runat="server" AssociatedControlID="ConfirmPassword1">Confirm Password :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword1" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                                     </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ConfirmPassword1" ErrorMessage="*Confirm your password" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password1" ControlToValidate="ConfirmPassword1" ErrorMessage="*Non-Matching password" ForeColor="Red"></asp:CompareValidator>
                                     </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="contact1" runat="server" AssociatedControlID="cnt1">Contact :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="cnt1" runat="server" Width="300px" ></asp:TextBox>
                                     </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="cnt1" ErrorMessage="*Please write your contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cnt1" ErrorMessage="*Incorrect contact" ForeColor="Red" ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator>
                                     </td>
                            </tr>
                            
                            
                            <tr>
                                <td colspan="2" style="text-align:center;color:black">
                                   <asp:Button ID="Button1" runat="server" Text="submit" type="submit" OnClick="Button1_Click" />
                                      <asp:Label ID="confirmbutton" runat="server"></asp:Label>
                                      </td>
                                <td style="text-align:center;color:black" class="auto-style5">
                                    &nbsp;</td>
                            </tr>
                           
                        </table>
        
</div>
<div class="shadow"></div>
</asp:Content>


