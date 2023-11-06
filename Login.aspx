<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Clinic__projeto_senac__2023_.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <form runat="server">
       <h1 style="text-align:center">Login</h1>

    <ul style="text-align:center;list-style:none;margin-right:40px;">
        <li>
           <p>Email:</p>
            <asp:TextBox ID="txbemail" runat="server"></asp:TextBox>
        </li>
        <li>
            <p> Senha: </p>
            <asp:TextBox ID="txbsenha" runat="server"></asp:TextBox>
        </li>
        
        <li style="margin-bottom:10px;margin-top:10px">
            <asp:Button ID="Button1" runat="server" Text="Fazer logon" OnClick="Button1_Click" />
           
        </li>
        <li style="margin-bottom:10px">
            <asp:Label ID="lblerrologin" runat="server" Text=""></asp:Label>
        </li>
        
        <li>
            <p>Não tem uma conta? <a href="Register.aspx">Cadastre-se</a></p>
        </li>
    </ul>

   

</form>
</body>
</html>
