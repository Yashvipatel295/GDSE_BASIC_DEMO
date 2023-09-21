<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 500px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="2" style="text-align: center">LOGIN</td>
    </tr>
    <tr>
        <td>Customer&#39;s Id</td>
        <td>
            <asp:TextBox ID="uid" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Password</td>
        <td>
            <asp:TextBox ID="upsw" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="ubtnlogin" runat="server" Text="LogIn" OnClick="ubtnlogin_Click" />
            <br />
            <asp:Label ID="ulblmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

