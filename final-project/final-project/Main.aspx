<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="final_project.Main" Theme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            height: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="NewsLink" runat="server" NavigateUrl="~/News.aspx">最新消息</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="AboutLink" runat="server" NavigateUrl="~/Aboutus.aspx">關於我們</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="MainLink" runat="server" Height="80px" ImageUrl="~/images/unnamed.jpg" ImageWidth="80px" NavigateUrl="~/Main.aspx">HyperLink</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Login.aspx">登入&amp;註冊</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="Cartlink" runat="server" NavigateUrl="~/Shopcart.aspx">購物車</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style2">
                                
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblOutput" runat="server"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Enabled="False" ReadOnly="True" TextMode="MultiLine" Visible="False" Width="481px"></asp:TextBox>
                        <br />
                        <asp:Panel ID="Panel1" runat="server" GroupingText="商品">
                            <div class="auto-style4">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="卡號" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" PageSize="5" Width="1118px">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="卡號" DataImageUrlFormatString="~/images/{0}.jpg" HeaderText="卡圖">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="卡號" HeaderText="卡號" ReadOnly="True" />
                                        <asp:BoundField DataField="卡名" HeaderText="卡名" InsertVisible="False" />
                                        <asp:BoundField DataField="價格" HeaderText="價格" InsertVisible="False" />
                                        <asp:BoundField DataField="類別" HeaderText="類別" InsertVisible="False" SortExpression="類別" />
                                        <asp:BoundField DataField="購買數量" HeaderText="購買數量" Visible="False" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="購物車" InsertVisible="False" Text="加入購物車" />
                                    </Columns>
                                    <PagerSettings Mode="NextPreviousFirstLast" NextPageText="下一頁" PreviousPageText="上一頁" />
                                </asp:GridView>
                            </div>
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
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
