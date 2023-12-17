<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopcart.aspx.cs" Inherits="final_project.shopcar" Theme="" %>

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
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="Panel1" runat="server" GroupingText="已加入購物車的商品" BackColor="#FAEAD3" BorderColor="#F5B1AA" BorderStyle="Double" BorderWidth="5px">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Enabled="False" Height="236px" ReadOnly="True" TextMode="MultiLine" Width="609px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="output" runat="server"></asp:Label>
            <br />
            <asp:Button ID="buy" runat="server" OnClick="buy_Click" Text="購買" BackColor="#F5B1AA" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Large" />
        </asp:Panel>
    </form>
</body>
</html>
