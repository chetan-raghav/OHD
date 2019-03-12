<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Sociallinks.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
        .auto-style4 {
            align-items:center;
            width: 346px;
      height:100px;
              }
        .auto-style5 {
            background-image:url('spotlight.jpg');
            width: 751px;
        }
        .div1{
            background-image:url("queryback1.png");
        
            width:682px;
        height:420px;
            }
         .Background
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .Popup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 400px;
            height: 350px;
        }
        .lbl
        {
            font-size:16px;
            font-style:italic;
            font-weight:bold;
        }
        
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <aside id="sticky-social" class="Sociallinks.css">
    <ul>
        <li><a href="#" class="entypo-facebook" target="_blank"><span>Facebook</span></a></li>
        <li><a href="#" class="entypo-twitter" target="_blank"><span>Twitter</span></a></li>
        <li><a href="#" class="entypo-gplus" target="_blank"><span>Google+</span></a></li>
        <li><a href="#" class="entypo-linkedin" target="_blank"><span>LinkedIn</span></a></li>
        <li><a href="#" class="entypo-instagrem" target="_blank"><span>Instagram</span></a></li>
        <li><a href="#" class="entypo-stumbleupon" target="_blank"><span>StumbleUpon</span></a></li>
        <li><a href="#" class="entypo-pinterest" target="_blank"><span>Pinterest</span></a></li>
        <li><a href="#" class="entypo-flickr" target="_blank"><span>Flickr</span></a></li>
        <li><a href="#" class="entypo-tumblr" target="_blank"><span>Tumblr</span></a></li>
    </ul>
</aside>
    <tr>
            <!-- Start WOWSlider.com -->
<iframe src="ohdsliderfinal.html" style="width:1000px;height:400px;max-width:100%;overflow:hidden;border:none;padding:0;margin:0 auto;display:block;" marginheight="0" marginwidth="0"></iframe>
<!-- End WOWSlider.com -->

       </tr> 
  <tr>
      <hr style="border: thick solid #000000; font-size: xx-large" />
  </tr>
  <table>
    <tr>
      <td class="auto-style4" style="height:50px;align-items:center">
           <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="SPOTLIGHTS" Font-Underline="True" ForeColor="White"></asp:Label>
      </td>
      <td>
         
           </td>   
  </tr>
      <br />
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5"><ul style="font-size:large;font-family:Calibri;color:white">
                <li>
                    <a href="http://du.ac.in/du/index.php?mact=News,cntnt01,detail,0&cntnt01articleid=10915&cntnt01returnid=83" style="color: #FFFFFF">Adverstisement for the post of senior and junior fellow-CIC</a><img src="images/new_icon_blink.gif" />
                </li><br />
                
                <li>
                    <a href="http://du.ac.in/du/index.php?mact=News,cntnt01,detail,0&cntnt01articleid=10592&cntnt01returnid=83" style="color: #FFFFFF"></a>94th Foundation Day of the University of Delhi<img src="images/new_icon_blink.gif" />
                </li>
                <br />
                <li>
                    <a href="http://du.ac.in/du/index.php?mact=News,cntnt01,detail,0&cntnt01articleid=10815&cntnt01returnid=83" style="color: #FFFFFF">DU Pre-Entrance summer school 2016</a><img src="images/new_icon_blink.gif" />
                </li>
                <br />
                <li>
                    <a href="http://du.ac.in/du/index.php?mact=News,cntnt01,detail,0&cntnt01articleid=10193&cntnt01returnid=83" style="color: #FFFFFF">Notification regarding appointment of Hon'ble Vice Chancellor of University of Delhi</a><img src="images/new_icon_blink.gif" />
                </li>
            </ul></td>

            <td class="div1">
              <p style="font-size:large; color:white;font-family:Calibri;padding:80px;padding-bottom:20px">Are u not a part of Delhi University yet?<br />
                                        And have lots of queries tangled up in your mind ! <br />
                                        Come lets ask us and we'll let all your queries solved.. <br />
                                        Just click on the button below!</p>
         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                <div align="center">      
                 <asp:Button ID="Button1" runat="server" Text="Ask a Query" Font-Bold="True" />
 </div>
<asp:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"
     BackgroundCssClass="Background">
</asp:ModalPopupExtender>
<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style="height:220px">
    <iframe style=" width: 350px; height: 200px;" id="irm1" src="querypop.aspx" runat="server"></iframe>
   <br/>
</asp:Panel>
    </td>
    </tr>
    </table>
   </asp:Content>


