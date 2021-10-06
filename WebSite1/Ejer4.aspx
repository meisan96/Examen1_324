<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejer4.aspx.cs" Inherits="Ejer4" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Opcion ver notas de&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="144px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ver" Width="62px" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        Opcion de ver Promedios por departamento 
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
