<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="employeenewrequest.aspx.cs" Inherits="employeenewrequest" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript" type="text/javascript">
    function divexpandcollapse(divname) {
        var div = document.getElementById(divname);
        var img = document.getElementById('img' + divname);
        if (div.style.display == "none") {
            div.style.display = "inline";
            img.src = "minus.png";
        } else {
            div.style.display = "none";
            img.src = "plus.png";
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div style="width: 900px">
    <table>
        <tr>
            <td><asp:GridView ID="gvParentGrid" runat="server" DataKeyNames="rid" Width="500"
AutoGenerateColumns="false" OnRowDataBound="gvUserInfo_RowDataBound" GridLines="None" BorderStyle="Solid" BorderWidth="1px"  BorderColor="#df5015">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<RowStyle BackColor="#E1E1E1" />
<AlternatingRowStyle BackColor="White" />
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>
<asp:TemplateField ItemStyle-Width="20px">
<ItemTemplate>
<a href="JavaScript:divexpandcollapse('div<%# Eval("rid") %>');">
<img id="imgdiv<%# Eval("rid") %> width="9px" border="0" src="plus.png" />
</a>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="rid" HeaderText="Request ID" HeaderStyle-HorizontalAlign="Left" />
<asp:BoundField DataField="issued" HeaderText="IssueDate" HeaderStyle-HorizontalAlign="Left" />
<asp:TemplateField>
<ItemTemplate>
<tr>
<td colspan="100%">
<div id="div<%# Eval("rid") %>" style="display: none; position: relative; left: 15px; overflow: auto">
 
<asp:GridView ID="gvChildGrid" runat="server" AutoGenerateColumns="false" BorderStyle="Double"  BorderColor="#df5015" GridLines="None" Width="350px">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<RowStyle BackColor="#E1E1E1" />
<AlternatingRowStyle BackColor="White" />
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>

 
<asp:BoundField DataField="des" HeaderText="Query" HeaderStyle-HorizontalAlign="Left" />
      <asp:TemplateField>
        <ItemTemplate>
         <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/glyphicons-177-forward.png" CausesValidation="false" CommandName="forwardmail" AlternateText="forward request" OnClick="ImageButton1_Click"/>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/reply1.png" CausesValidation="false" CommandName="replymail" AlternateText="reply request" OnClick="ImageButton2_Click"/>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pending.png" CausesValidation="false" CommandName="pendingmail" AlternateText="pending request" OnClick="ImageButton3_Click" />
         <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/del.png" CausesValidation="false" CommandName="deletedmail" AlternateText="deleted request" OnClick="ImageButton4_Click" />
         </ItemTemplate>
    </asp:TemplateField>
</Columns>
</asp:GridView>
</div>
</td>
</tr>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
               </td>
            <td id="test1" runat="server" visible="false" align="center">
                <asp:Label ID="Label1" runat="server" Text="Reply"></asp:Label><br />&nbsp&nbsp&nbsp&nbsp
                <asp:Label ID="requestid1" runat="server" Text="Request ID"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                
                <asp:TextBox ID="TextBox3" runat="server"  placeholder="Give your reply here ...."></asp:TextBox>
                <br /><br />
                
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
                </td>

                <td id="Td1" runat="server" visible="false" align="center">
                    <asp:Label ID="Label2" runat="server" Text="Reason"></asp:Label><br />
                    <asp:Label ID="requestid" runat="server" Text="Request ID"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Please give a reason for not answering ...."> </asp:TextBox><br />
                <asp:Button ID="Button2" runat="server" Text="submit" OnClick="Button2_Click" />

            </td>
             <td id="Td2" runat="server" visible="false" align="center">
                <asp:Label ID="Label3" runat="server" Text="forward"></asp:Label><br />&nbsp&nbsp&nbsp&nbsp
                <asp:Label ID="Label4" runat="server" Text="Request ID"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
                                               
                <asp:Button ID="Button3" runat="server" Text="submit" OnClick="Button3_Click" />
                </td>

             <td id="Td3" runat="server" visible="false" align="center">
                <asp:Label ID="Label5" runat="server" Text="pending"></asp:Label><br />&nbsp&nbsp&nbsp&nbsp
                <asp:Label ID="Label6" runat="server" Text="Request ID"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
                                                
                <asp:Button ID="Button4" runat="server" Text="submit" OnClick="Button4_Click" />
                </td>

            </tr>
        </table>
</div>
</asp:Content>

