<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ereplypop.aspx.cs" Inherits="ereplypop" %>

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
            
            <textarea id="TextArea1" cols="40" rows="8" placeholder="Write your reply..."></textarea><br />
          <br /><br />  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </td>
            </tr>
    </table>
    </form>
</body>
</html>
