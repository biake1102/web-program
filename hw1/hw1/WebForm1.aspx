﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="hw1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:Label ID="Label1" runat="server" OnDataBinding="Button1_Click"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" OnDataBinding="Button1_Click" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" OnDataBinding="Button1_Click" Text=""></asp:Label>
            
        </div>
    </form>
</body>
</html>
