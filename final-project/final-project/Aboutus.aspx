<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="final_project.Aboutus" %>

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
            height: 84px;
            background-color: #FAEAD3;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body class="auto-style2複本">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;<asp:HyperLink ID="NewsLink" runat="server" NavigateUrl="~/News.aspx" BackColor="#F5B1AA" Font-Bold="True" Font-Size="X-Large" Font-Underline="False">最新消息</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="AboutLink" runat="server" NavigateUrl="~/Aboutus.aspx" BackColor="#F5B1AA" Font-Bold="True" Font-Size="X-Large">關於我們</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="MainLink" runat="server" Height="80px" ImageUrl="~/images/unnamed.jpg" ImageWidth="80px" NavigateUrl="~/Main.aspx">HyperLink</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Login.aspx" BackColor="#F5B1AA" Font-Bold="True" Font-Size="X-Large">登入&amp;註冊</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="Cartlink" runat="server" NavigateUrl="~/Shopcart.aspx" BackColor="#F5B1AA" Font-Bold="True" Font-Size="X-Large">購物車</asp:HyperLink>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" GroupingText="我們的youtube頻道" BackColor="#FAEAD3" BorderColor="#F5B1AA" BorderStyle="Double" BorderWidth="10px">
                            <asp:Image ID="Image2" runat="server" Height="605px" ImageUrl="~/images/myyt.jpg" Width="1057px" />
                            <br />
                            這是我們的遊戲頻道主頁，會不定時更新，歡迎訂閱及分享<br /> 
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.youtube.com/@kings_cardgame/featured">瀏覽頻道請點我</asp:HyperLink>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
