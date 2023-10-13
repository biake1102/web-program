<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="hw2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="主餐">
            &nbsp;漢堡數量:
            <asp:TextBox ID="txtHamQuan" runat="server">0</asp:TextBox>
            &nbsp; &nbsp;三明治數量:
            <asp:TextBox ID="txtSanQuan" runat="server">0</asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" GroupingText="飲料">
            &nbsp; 豆漿數量:
            <asp:TextBox ID="txtSoyQuan" runat="server">0</asp:TextBox>
            &nbsp;
            <asp:CheckBox ID="chkSoyPea" runat="server" Text="加珍珠" />
            &nbsp;&nbsp; 奶茶數量:<asp:TextBox ID="txtMilQuan" runat="server">0</asp:TextBox>
            &nbsp;
            <asp:CheckBox ID="chkMilPea" runat="server" Text="加珍珠" />
        </asp:Panel>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="計算價錢" />
        <br />
        <br />
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </form>
</body>
</html>
