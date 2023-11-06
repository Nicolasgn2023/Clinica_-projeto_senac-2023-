<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Clinic__projeto_senac__2023_.PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <style>
        #lnkLogout{
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center">Página principal </h1> 

        <h2 style="text-align:center">Bem-vindo <asp:Label ID="lblnomeuser" runat="server" Text=""></asp:Label>
        </h2>
        
        <asp:HyperLink ID="lnkLogout" runat="server" Text="Logout" NavigateUrl="Logout.aspx" />


    </form>
</body>
</html>
