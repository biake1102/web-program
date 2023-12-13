<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="final_project.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="NewsLink" runat="server" NavigateUrl="~/News.aspx">最新消息</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <td>
                        <asp:Label ID="lblOutput" runat="server"></asp:Label>
                        <br />
                        <asp:Panel ID="Panel1" runat="server" GroupingText="商品">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="卡號" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand"  PageSize="5" Width="1118px">
                                <Columns>
                                    <asp:ImageField DataImageUrlField="卡號" DataImageUrlFormatString="~/images/{0}.jpg" HeaderText="卡圖">
                                    </asp:ImageField>
                                    <asp:BoundField DataField="卡號" HeaderText="卡號" ReadOnly="True" />
                                    <asp:BoundField DataField="卡名" HeaderText="卡名" />
                                    <asp:BoundField DataField="價格" HeaderText="價格" />
                                    <asp:BoundField DataField="類別" HeaderText="類別" SortExpression="類別" />
                                    <asp:BoundField DataField="購買數量" HeaderText="購買數量" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="加入購物車" ShowHeader="True" Text="加入購物車" />
                                </Columns>
                                <PagerSettings Mode="NextPrevious" NextPageText="下一頁" PreviousPageText="上一頁" />
                            </asp:GridView>
                        </asp:Panel>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [cards]">
                        </asp:SqlDataSource>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
