﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aulogout.aspx.cs" Inherits="aulogout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
    </div>
    </form>
</body>
</html>
