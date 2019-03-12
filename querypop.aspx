


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="querypop.aspx.cs" Inherits="querypop" %>
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <table>
    <tr>
    <td>
    <asp:Label ID="ahname" runat="server" CssClass="lbl" Text="Name"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="qhname" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="ahemail" runat="server" CssClass="lbl" Text="email"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="qhemail" runat="server" Font-Size="14px"  ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="statement" runat="server" CssClass="lbl" Text="statement"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="qhstatement" runat="server" Font-Size="14px" Height="80px" Width="250px"></asp:TextBox>
    </td>
    </tr>
   
    </table>
    

    <table><tr><td><asp:Button ID="Button5" runat="server" Text="submit" type="submit" OnClick="Button5_Click" />
        
        <asp:Button ID="Button1" runat="server" Text="Cancel"/>
                                      <asp:Label ID="confirmbutton" runat="server"></asp:Label>
                                      </td></tr>
        </table>
    </form>


</body>

</html>