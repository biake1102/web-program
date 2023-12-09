<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopcar.aspx.cs" Inherits="final_project.shopcar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="NewsLink" runat="server" NavigateUrl="~/News.aspx">最新消息</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="AboutLink" runat="server" NavigateUrl="~/Aboutus.aspx">關於我們</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="MainLink" runat="server" Height="80px" ImageUrl="~/images/unnamed.jpg" ImageWidth="80px" NavigateUrl="~/Main.aspx">HyperLink</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/login.aspx">登入&amp;註冊</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="CarLink" runat="server" NavigateUrl="~/shopcar.aspx">購物車</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
