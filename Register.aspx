<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Clinic__projeto_senac__2023_.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crie uma conta</title>
    <style>
        #lblmerro{
            color:red;
        }
        #Button1{
            margin-top:20px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <h1 style="text-align:center">Registre-se</h1>

        <p style="text-align:center">Já possui uma conta? <a href="Login.aspx">Clique aqui</a> para fazer login.</p>
    <ul style="text-align:center;margin-right:60px;list-style:none">
        <li>
          
           
           <div>
                <p style="padding-top:10px">Email:</p>
               
              <asp:TextBox ID="txbemail" runat="server" Width="122px"></asp:TextBox>
               </div>
        </li>
        <li>
           <p>Nome:</p>
            <asp:TextBox ID="txbnome" runat="server"></asp:TextBox>
        </li>
        <li>
            <p>Sobrenome:</p>
            <asp:TextBox ID="txbsobrenome" runat="server"></asp:TextBox>
        </li>
        <li>
            <p>Senha:</p>
            <asp:TextBox ID="txbsenha" runat="server"></asp:TextBox>
        </li>
        <li>
            <asp:Button ID="Button1" runat="server" Text="Criar Conta" OnClick="Button1_Click" />
        </li>
        <li>
            <asp:Label s ID="lblmerro" runat="server" Text=""></asp:Label>
        </li>
    </ul>



        <asp:GridView ID="gridvusers" runat="server" AutoGenerateColumns="False" DataKeyNames="id_cliente" DataSourceID="SqlDataSource1">
              <Columns>
        <asp:BoundField DataField="id_cliente" HeaderText="id_cliente" InsertVisible="False" ReadOnly="True" SortExpression="id_cliente" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="sobrenome" HeaderText="sobrenome" SortExpression="sobrenome" />
                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                  <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha" />
    </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [clientes]"> </asp:SqlDataSource>

    </form>

</body>
</html>
