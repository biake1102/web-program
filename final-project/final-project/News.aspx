﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="final_project.News" %>

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
        <asp:Panel ID="Panel1" runat="server" GroupingText="商品最新消息">
            本商店商品新增以下三張卡片<br /> 
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/AGOV-JP054.jpg" />
            &nbsp;
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/AGOV-JP046.jpg" />
            &nbsp;
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/AGOV-JP042.jpg" />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" GroupingText="youtube最新消息">
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.youtube.com/watch?v=ZQ18goDBWCs">最新上傳影片</asp:HyperLink>
            <br />
            <br />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/newvideo.jpg" Width="700px" />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
