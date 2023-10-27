<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="hw3.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" GroupingText="興趣">
                <asp:CheckBox ID="chkRead" runat="server" Text="看書" />
                &nbsp;
                <asp:CheckBox ID="chbCom" runat="server" Text="打電腦" />
                &nbsp;
                <asp:CheckBox ID="chbEx" runat="server" Text="運動" />
            </asp:Panel>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="下一步" />
    </form>
</body>
</html>
