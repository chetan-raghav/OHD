<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="studentnewrequest.aspx.cs" Inherits="studentnewrequest" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
ul.tab {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Float the list items side by side */
ul.tab li {float: left;}

/* Style the links inside the list items */
ul.tab li a {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of links on hover */
ul.tab li a:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
ul.tab li a:focus, .active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
.ddl
        { border:1px solid #7d6754;
            border-radius:5px;
            padding:7px;
            -webkit-appearance: none; 
            background-image:url('Images/Arrowhead-Down-01.png');
            background-position:88px;
            background-repeat:no-repeat;
            text-indent: 0.01px;/*In Firefox*/
            text-overflow: '';
            margin-left: 26px;
            margin-right: 36px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul class="tab">
  <li><a href="#" class="tablinks" onclick="openCity(event, 'DI')">Department/Issue</a></li>
  <li><a href="#" class="tablinks" onclick="openCity(event, 'BD')">Brief Description</a></li>
  <li><a href="#" class="tablinks" onclick="openCity(event, 'CI')">Contact Info</a></li>
</ul>

<div id="DI" class="tabcontent">
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
        <asp:ListItem>Select Department</asp:ListItem>
        <asp:ListItem>Migration</asp:ListItem>
        <asp:ListItem>Degree</asp:ListItem>
        
        <asp:ListItem>Academics</asp:ListItem>
        <asp:ListItem>Eastablishment</asp:ListItem>
        <asp:ListItem Value="1">DSW</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <div id="d" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Do you need an appointment" ></asp:Label>&nbsp&nbsp&nbsp&nbsp
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem> 
        </asp:DropDownList>
        <p>(*if you are selecting DSW then only ask for appointment..)</p> 
      </div>
    
</div>

<div id="BD" class="tabcontent">
    <asp:TextBox ID="TextBox2" runat="server"  ></asp:TextBox>
   
</div>

<div id="CI" class="tabcontent">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter contact number"></asp:TextBox><br /><br /><br />
   
</div>
   
  <div align="center">
         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 26px" /><br />
      <asp:Label ID="Label3" runat="server" Text="Your Request ID is : " ForeColor="Red"></asp:Label>
         <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
      <asp:Label ID="Label4" runat="server" Text="Kindly Save it for future purposes" ForeColor="Red"></asp:Label>
    </div>
<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }
   
   

</script>    
    </asp:Content>

