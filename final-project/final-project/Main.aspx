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
        .auto-style3 {
            text-align: center;
            background-color: #FFFFFF;
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
                        <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Login.aspx">登入&amp;註冊</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">
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
                                </Columns>
                                <PagerSettings Mode="NextPrevious" NextPageText="下一頁" PreviousPageText="上一頁" />
                            </asp:GridView>
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel2" runat="server" GroupingText="購物車">
                            <asp:CheckBoxList ID="itemlist" runat="server" Height="317px" RepeatColumns="4" RepeatDirection="Horizontal" Width="1109px">
                                <asp:ListItem Value="119">群雄割據(普卡) $119</asp:ListItem>
                                <asp:ListItem Value="700">篝火 (亮面) $700</asp:ListItem>
                                <asp:ListItem Value="229">災厄之星 提豐 (金亮) $229</asp:ListItem>
                                <asp:ListItem Value="219">S:P 小夜 (亮面) $219</asp:ListItem>
                                <asp:ListItem Value="29">狩獵罪寶的惡魔 (銀字) $29</asp:ListItem>
                                <asp:ListItem Value="5">一換一 (普卡) $5</asp:ListItem>
                                <asp:ListItem Value="89">召命的神弓 阿波羅薩 (金亮) $89</asp:ListItem>
                                <asp:ListItem Value="159">I:P 化妝舞孃 (金亮) $159</asp:ListItem>
                                <asp:ListItem Value="89">三戰之號 (銀字) $89</asp:ListItem>
                                <asp:ListItem Value="79">蛇眼的炎燐 (亮面) $79</asp:ListItem>
                                <asp:ListItem Value="319">賜炎的咎姬 (金亮) $319</asp:ListItem>
                                <asp:ListItem Value="5">永恆摯愛 (銀字) $5</asp:ListItem>
                                <asp:ListItem Value="59">鐵騎的雷鎚 (亮面) $59</asp:ListItem>
                                <asp:ListItem Value="39">超融合 (金亮) $39</asp:ListItem>
                                <asp:ListItem Value="219">增值的G (金亮) $219</asp:ListItem>
                                <asp:ListItem Value="219">輝流麗 (亮面) $219</asp:ListItem>
                                <asp:ListItem Value="19">天底的使徒 (亮面) $19</asp:ListItem>
                                <asp:ListItem Value="89">三戰之才 (金亮) $89</asp:ListItem>
                                <asp:ListItem Value="15">召喚限制器 (亮面) $15</asp:ListItem>
                                <asp:ListItem Value="89">次元裂縫 (普卡) $89</asp:ListItem>
                                <asp:ListItem Value="39">不醒的惡夢 (普卡) $39</asp:ListItem>
                                <asp:ListItem Value="29">紅蓮的指名者 (普卡) $29</asp:ListItem>
                                <asp:ListItem Value="49">融合派兵 (普卡) $49</asp:ListItem>
                                <asp:ListItem Value="69">紅色重啟 (普卡) $69</asp:ListItem>
                                <asp:ListItem Value="149">無限泡影 (普鑽) $149</asp:ListItem>
                                <asp:ListItem Value="259">共命之翼 迦樓拉 (亮面) $259</asp:ListItem>
                                <asp:ListItem Value="29">魔砲戰機 達摩業力 (普卡) $29</asp:ListItem>
                            </asp:CheckBoxList>
                            <br />
                            <asp:Button ID="incart" runat="server" OnClick="incart_Click" Text="加入購物車" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="viewcart" runat="server" OnClick="viewcart_Click" Text="查看購物車" />
                        </asp:Panel>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [cards] WHERE [卡號] = @卡號" InsertCommand="INSERT INTO [cards] ([卡號], [卡名], [價格], [類別], [購買數量]) VALUES (@卡號, @卡名, @價格, @類別, @購買數量)" SelectCommand="SELECT * FROM [cards]" UpdateCommand="UPDATE [cards] SET [卡名] = @卡名, [價格] = @價格, [類別] = @類別, [購買數量] = @購買數量 WHERE [卡號] = @卡號">
                            <DeleteParameters>
                                <asp:Parameter Name="卡號" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="卡號" Type="String" />
                                <asp:Parameter Name="卡名" Type="String" />
                                <asp:Parameter Name="價格" Type="String" />
                                <asp:Parameter Name="類別" Type="String" />
                                <asp:Parameter Name="購買數量" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="卡名" Type="String" />
                                <asp:Parameter Name="價格" Type="String" />
                                <asp:Parameter Name="類別" Type="String" />
                                <asp:Parameter Name="購買數量" Type="Int32" />
                                <asp:Parameter Name="卡號" Type="String" />
                            </UpdateParameters>
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
