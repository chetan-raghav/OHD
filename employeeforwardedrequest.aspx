﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="employeeforwardedrequest.aspx.cs" Inherits="employeeforwardedrequest" %>
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
<div style="width: 724px">
    <table><tr><td>
   <asp:GridView ID="gvParentGrid" runat="server" DataKeyNames="rid" Width="800"
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
<asp:BoundField DataField="issued" HeaderText="Date" HeaderStyle-HorizontalAlign="Left" />
<asp:TemplateField>
<ItemTemplate>
<tr>
<td colspan="100%">
<div id="div<%# Eval("rid") %>" style="display: none; position: relative; left: 15px; overflow: auto">
<asp:GridView ID="gvChildGrid" runat="server" AutoGenerateColumns="false" BorderStyle="Double"  BorderColor="#df5015" GridLines="None" Width="600px">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<RowStyle BackColor="#E1E1E1" />
<AlternatingRowStyle BackColor="White" />
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>
<asp:BoundField DataField="des" HeaderText="Query" HeaderStyle-HorizontalAlign="Left" />
        <asp:TemplateField>
         <ItemTemplate>
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
         <td id="Td1" runat="server" visible="false" align="center">
                    <asp:Label ID="Label2" runat="server" Text="Reason"></asp:Label>
              <asp:Label ID="requestid" runat="server" Text="Request ID"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <textarea id="TextArea2" cols="40" rows="4" placeholder="Please give a reason for not answering ...."></textarea><br /><br />
                <asp:Button ID="Button2" runat="server" Text="submit" />

            </td>
           </tr></table>
        </div>

</asp:Content>

