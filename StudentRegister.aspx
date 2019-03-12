<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentRegister.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 207px;
        }
        .auto-style6 {
            width: 122px;
        }
        .auto-style7 {
            width: 84px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="register.css" rel="stylesheet" type="text/css" />
    <div class="login">
                        <table align="center">
                             
        <tr>
                                <td colspan="2" style="font-size:x-large;color:black;text-align:center"><br /><br />Sign Up for Your New Account<br /><br /></td>
                                <td style="font-size:x-large;color:black;text-align:center" class="auto-style5">&nbsp;</td>
        </tr>
    
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="stype" runat="server" AssociatedControlID="DDL1">Student Type :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:DropDownList ID="DDL1" runat="server" Width="300px" CssClass="ddl" ValidateRequestMode="Enabled" ValidationGroup="CreateUserWizard1">
                                        <asp:ListItem>Student Type</asp:ListItem>
                                        <asp:ListItem>Regular</asp:ListItem>
                                        <asp:ListItem>Non-Regular</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDL1" ErrorMessage="Type Required" ForeColor="Red" InitialValue="Student Type" style="text-align: left"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="clg" runat="server" AssociatedControlID="DDL2">College :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                     <asp:DropDownList ID="DDL2" runat="server" CssClass="ddl" Width="300px">
                    <asp:ListItem>Select College Name</asp:ListItem>
                    <asp:ListItem>Acharya Narendra Dev College-(001)</asp:ListItem>
                    <asp:ListItem>Aditi Mahavidyalaya-(002)</asp:ListItem>
                    <asp:ListItem>Aryabhatta College [Formerly Ram Lal Anand College (Evening)]-(059)</asp:ListItem>
                    <asp:ListItem>Atma Ram Sanatan Dharam College-(003)</asp:ListItem>
                    <asp:ListItem>Bhagini Nivedita College-(007)</asp:ListItem>
                    <asp:ListItem>Bharati College-(008)</asp:ListItem>
                    <asp:ListItem>Bhaskaracharya College of Applied Sciences-(009)</asp:ListItem>
                    <asp:ListItem>CAMPUS LAW CENTRE-(309)</asp:ListItem>
                    <asp:ListItem>College Of Vocational Studies-(013)</asp:ListItem>
                    <asp:ListItem>Daulat Ram College-(014)</asp:ListItem>
                    <asp:ListItem>Deen Dayal Upadhyaya College-(015)</asp:ListItem>
                    <asp:ListItem>Delhi College Of Arts &amp;amp; Commerce-(016)</asp:ListItem>
                    <asp:ListItem>Department of Commerce-(241)</asp:ListItem>
                    <asp:ListItem>Department of Germanic and Romance Studies-(204)</asp:ListItem>
                    <asp:ListItem>Department of History (SDC)-(291)</asp:ListItem>
                    <asp:ListItem>Department of Music-(240)</asp:ListItem>
                    <asp:ListItem>Deshbandhu College (Day)-(019)</asp:ListItem>
                    <asp:ListItem>Dr. Bhim Rao Ambedkar College-(010)</asp:ListItem>
                    <asp:ListItem>Dyal Singh College (Day)-(021)</asp:ListItem>
                    <asp:ListItem>Dyal Singh College (Eve)-(022)</asp:ListItem>
                    <asp:ListItem>Gargi College-(024)</asp:ListItem>
                    <asp:ListItem>Hans Raj College-(025)</asp:ListItem>
                    <asp:ListItem>Hindu College-(026)</asp:ListItem>
                    <asp:ListItem>I.P.College For Women-(029)</asp:ListItem>
                    <asp:ListItem>Indira Gandhi Institute of Phy. Edu. &amp;amp; Sports Sciences-(028)</asp:ListItem>
                    <asp:ListItem>Institute Of Home Economics-(030)</asp:ListItem>
                    <asp:ListItem>Janki Devi Memorial College-(031)</asp:ListItem>
                    <asp:ListItem>Jesus &amp;amp; Mary College-(032)</asp:ListItem>
                    <asp:ListItem>Jubilee Hall-(306)</asp:ListItem>
                    <asp:ListItem>Kalindi College-(033)</asp:ListItem>
                    <asp:ListItem>Kamla Nehru College-(034</asp:ListItem>
                    <asp:ListItem>Keshav Mahavidyalaya-(035)</asp:ListItem>
                    <asp:ListItem>Kirori Mal College-(036)</asp:ListItem>
                    <asp:ListItem>Lady Irwin College-(038</asp:ListItem>
                    <asp:ListItem>Lady Sri Ram College For Women-(039)</asp:ListItem>
                    <asp:ListItem>Lakshmibai College-(040)</asp:ListItem>
                    <asp:ListItem>LAW CENTRE-I-(310)</asp:ListItem>
                    <asp:ListItem>LAW CENTRE-II-(311)</asp:ListItem>
                    <asp:ListItem>Maharaja Agrasen College-(041</asp:ListItem>
                    <asp:ListItem>Maitreyi College-(043)</asp:ListItem>
                    <asp:ListItem>Mata Sundri College For Women-(044)</asp:ListItem>
                    <asp:ListItem>Miranda House-(047)</asp:ListItem>
                    <asp:ListItem>Moti Lal Nehru College (Day)-(048</asp:ListItem>
                    <asp:ListItem>Moti Lal Nehru College (Eve)-(049)</asp:ListItem>
                    <asp:ListItem>Non Collegate Women Education Board (NCWEB)-(307)</asp:ListItem>
                    <asp:ListItem>P.G.D.A.V. College (Day)-(053)</asp:ListItem>
                    <asp:ListItem>P.G.D.A.V. College (Eve)-(054)</asp:ListItem>
                    <asp:ListItem>Rajdhani College-(055</asp:ListItem>
                    <asp:ListItem>Ram Lal Anand College (Day)-(058)</asp:ListItem>
                    <asp:ListItem>Ramanujan College-(020)</asp:ListItem>
                    <asp:ListItem>Ramjas College-(056)</asp:ListItem>
                    <asp:ListItem>S.G.T.B. Khalsa College-(068)</asp:ListItem>
                    <asp:ListItem>Saheed Sukhdev College of Business Studies-(067)&lt;</asp:ListItem>
                    <asp:ListItem>Saheed Sukhdev College of Business Studies-(067)&lt;</asp:ListItem>
                    <asp:ListItem>Satyawati College (Eve)-(063)</asp:ListItem>
                    <asp:ListItem>Shaheed Bhagat Singh College (Day)-(064)</asp:ListItem>
                    <asp:ListItem>Shaheed Bhagat Singh College (Eve)-(065)</asp:ListItem>
                    <asp:ListItem>Shaheed Rajguru College of Applied Sciences for Women-(066)</asp:ListItem>
                    <asp:ListItem>Shivaji College-(071)</asp:ListItem>
                    <asp:ListItem>Shyam Lal College (Day)-(073)</asp:ListItem>
                    <asp:ListItem>Shyam Lal College (Eve)-(074)</asp:ListItem>
                    <asp:ListItem>Shyam Lal College (Eve)-(074)</asp:ListItem>
                    <asp:ListItem>Sri Aurobindo College (Day)-(076)</asp:ListItem>
                    <asp:ListItem>Sri Aurobindo College (Eve)-(077)</asp:ListItem>
                    <asp:ListItem>Sri Guru Gobind Singh College Of Commerce-(078)</asp:ListItem>
                    <asp:ListItem>Sri Guru Nanak Dev Khalsa College-(069)</asp:ListItem>
                    <asp:ListItem>Sri Ram College Of Commerce-(072</asp:ListItem>
                    <asp:ListItem>Sri Venkateswara College-(079</asp:ListItem>
                    <asp:ListItem>St. Stephens College-(080</asp:ListItem>
                    <asp:ListItem>Swami Shraddhanand College-(081)</asp:ListItem>
                    <asp:ListItem>University of Delhi-(100)</asp:ListItem>
                    <asp:ListItem>Vivekananda College-(084)</asp:ListItem>
                    <asp:ListItem>Zakir Husain College (Eve)-(086)</asp:ListItem>
                    <asp:ListItem>Zakir Husain Delhi College (Day)-(085)</asp:ListItem>
                </asp:DropDownList>
                                </td>
                                <td class="auto-style5">
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDL2" ErrorMessage="College name required" ForeColor="Red" InitialValue="Select College Name "></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="name" runat="server" AssociatedControlID="UserName">Name :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="UserName" runat="server" Width="300px" placeholder="Enter your name .." CausesValidation="True" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserName" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="course" runat="server" AssociatedControlID="DDL3">Course :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:DropDownList ID="DDL3" runat="server" Width="300px" CssClass="ddl">
                                        <asp:ListItem>Select Course</asp:ListItem>
                                        <asp:ListItem>BA</asp:ListItem>
                                        <asp:ListItem>Bsc</asp:ListItem>
                                        <asp:ListItem>Btech</asp:ListItem>
                                        <asp:ListItem>Bcom</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDL3" ErrorMessage="Course name required" ForeColor="Red" InitialValue="Select Course"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                             <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="sem" runat="server" AssociatedControlID="DDL4">Semester :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:DropDownList ID="DDL4" runat="server" Width="300px" CssClass="ddl">
                                        <asp:ListItem>Semester</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDL4" ErrorMessage="Semester required" ForeColor="Red" InitialValue="Semester"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                             <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="croll" runat="server" AssociatedControlID="crn">College Roll-no :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="crn" runat="server" placeholder="Enter your College Roll-no .." Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="crn" ErrorMessage="Provide your college rollno" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="eroll" runat="server" AssociatedControlID="ern">Examination Roll-no :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="ern" runat="server" placeholder="Enter your Examination Roll-no.." Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="Email" runat="server" Width="300px" placeholder="Enter your E-mail address.."></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Email" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Please enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Password" ErrorMessage="Please set your password" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Both password must be same " ForeColor="Red"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Rewrite your password" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="contact" runat="server" AssociatedControlID="cnt">Contact :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="cnt" runat="server" Width="300px" ></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="cnt" ErrorMessage="Please give your contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cnt" ErrorMessage="Please enter valid contact number" ForeColor="Red" ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="ayear" runat="server" AssociatedControlID="admn">Admission Year :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="admn" runat="server" placeholder="Enter your admission year .." Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="admn" ErrorMessage="Specify your admission year " ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;color:black">
                                    <asp:Label ID="pyear" runat="server" AssociatedControlID="psng">Passing Year :</asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="psng" runat="server" placeholder="Enter your passing year .." Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="psng" ErrorMessage="Specify your passing year" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                                <td style="text-align:center" class="auto-style5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="color:Red;text-align:center">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                                <td style="color:Red;text-align:center" class="auto-style5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:center">
                                    
                              <asp:Button ID="Button1" runat="server" Text="submit" type="submit" OnClick="Button1_Click" />
                                      <asp:Label ID="confirmbutton" runat="server"></asp:Label>
                                      </td>
                                <td style="text-align:center" class="auto-style5">
                                    
                                    &nbsp;</td>
                            </tr>
                          
                           
                        </table>
        
</div>
    <div class="shadow"></div>
</asp:Content>


