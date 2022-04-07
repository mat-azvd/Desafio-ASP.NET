<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="CrudEstoque.Paginas.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label runat="server" Text="CADASTRO"></asp:Label>
        <div>


            <asp:Label ID="LabelNome" runat="server" Text="Digite o Nome"></asp:Label>
            <asp:TextBox ID="txtCadastroNome" runat="server"></asp:TextBox>

            <br />

            <asp:Label ID="LabelEmail" runat="server" Text="Digite um Email"></asp:Label>
            <asp:TextBox ID="txtCadastroEmail" runat="server"></asp:TextBox>

            <br />

            <asp:Label ID="LabelSenha1" runat="server" Text="Digite uma Senha"></asp:Label>
            <asp:TextBox ID="txtCadastroSenha1" runat="server"></asp:TextBox>

            <br />

            <asp:Label ID="LabelSenha2" runat="server" Text="Confirme a senha"></asp:Label>
            <asp:TextBox ID="txtCadastroSenha2" runat="server"></asp:TextBox>

            <br />

            <asp:Button ID="btCadastrar"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
            <asp:Button ID="btVoltar"  runat="server" Text="Voltar" OnClick="btVoltar_Click" />

        </div>
    </form>
</body>
</html>
