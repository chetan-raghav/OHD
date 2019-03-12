<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="test2.aspx.cs" Inherits="test2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Menu1" EventName="OnMenuClick" />
        </Triggers>
         <ContentTemplate>
      <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
            <asp:MenuItem Text="a" Value="a" NavigateUrl="~/stupending/description.aspx"></asp:MenuItem>
            <asp:MenuItem Text="b" Value="b" NavigateUrl="~/stupending/Department.aspx"></asp:MenuItem>
            <asp:MenuItem Text="c" Value="c" NavigateUrl="~/stupending/contact.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>    
        </ContentTemplate>
    </asp:UpdatePanel>  
</asp:Content>

