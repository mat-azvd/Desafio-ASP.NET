<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="CrudEstoque.Paginas.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="../CSS/Styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">    

        <div id="formLogin">

            <asp:Panel ID="Panel1" CssClass="PanelLogin" runat="server" HorizontalAlign="Center"  >

            <asp:Label runat="server" CssClass="LabelTitulo"  Text="Cadastro"></asp:Label>
            <br />
            
            <asp:TextBox ID="txtCadastroNome" CssClass="TextBox" runat="server" placeholder="Nome"></asp:TextBox>
            <br />            
            <asp:TextBox ID="txtCadastroEmail" CssClass="TextBox" runat="server" placeholder="Email"></asp:TextBox>
            <br />         
            <asp:TextBox ID="txtCadastroSenha1" CssClass="TextBox" runat="server" placeholder="Senha"></asp:TextBox>
            <br />         
            <asp:TextBox ID="txtCadastroSenha2" CssClass="TextBox" runat="server" placeholder="Confirma Senha"></asp:TextBox>
            <br />
            <asp:Button ID="btCadastrar" CssClass="botaoStyle"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
            <asp:Button ID="btVoltar" CssClass="botaoStyle"  runat="server" Text="Voltar" OnClick="btVoltar_Click" />
        </asp:Panel>
        </div>
    </form>
</body>
</html>
