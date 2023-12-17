<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="final_project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FAEAD3;
        }
        .auto-style2 {
            text-align: center;
            height: 84px;
            background-color: #FAEAD3;
        }
        .auto-style3 {
            width: 539px;
            height: 350px;
            background-color: #FAEAD3;
        }
        .auto-style4 {
            height: 350px;
            width: 500px;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body class="auto-style2複本" style="height: 601px">
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
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3" style="background-color: #FAEAD3">
                                    <asp:Panel ID="Panel1" runat="server" GroupingText="登入" Height="350px" BackColor="#FAEAD3" BorderColor="#F5B1AA" BorderStyle="Double" BorderWidth="5px" Width="668px">
                                        帳號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        &nbsp;
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        密碼:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                        &nbsp;
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <asp:TextBox ID="Temp1" runat="server" Enabled="False" ReadOnly="True" TextMode="MultiLine" Visible="False" Width="405px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:TextBox ID="Temp2" runat="server" Enabled="False" ReadOnly="True" TextMode="MultiLine" Visible="False" Width="405px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" BackColor="#F5B1AA" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Large" />
                                        <br />
                                        <br />
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </td>
                                <td class="auto-style4">
                                    <asp:Panel ID="Panel2" runat="server" GroupingText="註冊" Width="450px" Height="350px" BackColor="#FAEAD3" BorderColor="#F5B1AA" BorderStyle="Double" BorderWidth="5px">
                                        帳號:<asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="不可空白"></asp:RequiredFieldValidator>
                                        <br />
                                        密碼:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        &nbsp;
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="不可空白"></asp:RequiredFieldValidator>
                                        <br />
                                        確認密碼:<asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                                        <br />
                                        <br />
                                        <asp:Button ID="Button2" runat="server" Text="註冊" OnClick="Button2_Click" BackColor="#F5B1AA" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Large" />
                                        <br />
                                        <br />
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
