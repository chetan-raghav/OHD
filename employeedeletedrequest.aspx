<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="employeedeletedrequest.aspx.cs" Inherits="employeedeletedrequest" %>

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
    <asp:GridView ID="gvParentGrid" runat="server" DataKeyNames="rid" Width="300"
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
<asp:GridView ID="gvChildGrid" runat="server" AutoGenerateColumns="false" BorderStyle="Double"  BorderColor="#df5015" GridLines="None" Width="250px">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<RowStyle BackColor="#E1E1E1" />
<AlternatingRowStyle BackColor="White" />
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>

<asp:BoundField DataField="des" HeaderText="Query" HeaderStyle-HorizontalAlign="Left" />
    <asp:BoundField DataField="reason" HeaderText="reason" HeaderStyle-HorizontalAlign="Left" />
  
</Columns>
</asp:GridView>
</div>
</td>
</tr>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
        </div>

</asp:Content>

