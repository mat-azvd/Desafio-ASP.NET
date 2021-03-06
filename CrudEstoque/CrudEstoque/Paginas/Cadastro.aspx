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

            <asp:Panel ID="Panel1" CssClass="PanelLogin" runat="server" HorizontalAlign="Center" Font-Size="Small"  >

            <asp:Label runat="server" CssClass="LabelTitulo"  Text="Cadastro"></asp:Label>
            <br />
            
            <asp:TextBox ID="txtCadastroNome" CssClass="TextBox" runat="server" placeholder="Nome"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ValidationGroup="validacao1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCadastroNome" ErrorMessage="Digite um nome" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCadastroNome" ErrorMessage="Nome invalido" Font-Bold="False" Font-Size="Small" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="validacao1"></asp:RegularExpressionValidator>
            <br />            
            <asp:TextBox ID="txtCadastroEmail"  CssClass="TextBox" runat="server" placeholder="Email" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="validacao1" runat="server" ControlToValidate="txtCadastroEmail" ErrorMessage="Digite um Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCadastroEmail" ErrorMessage="Email invalido" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="validacao1"></asp:RegularExpressionValidator>
            <br />         
            <asp:TextBox ID="txtCadastroSenha1" CssClass="TextBox" runat="server" placeholder="Senha"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="validacao1" runat="server" ControlToValidate="txtCadastroSenha1" ErrorMessage="Digite uma senha" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />         
            <asp:TextBox ID="txtCadastroSenha2" CssClass="TextBox" runat="server" placeholder="Confirma Senha"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="validacao1" runat="server" ControlToValidate="txtCadastroSenha2" ErrorMessage="Confirme a senha" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCadastroSenha1" ControlToValidate="txtCadastroSenha2" ErrorMessage="Senhas diferentes" Font-Size="Small" ForeColor="Red" ValidationGroup="validacao1"></asp:CompareValidator>
            <br />
            <asp:Button ID="btCadastrar" ValidationGroup="validacao1" CssClass="botaoStyle"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
            <asp:Button ID="btVoltar" CssClass="botaoStyle"  runat="server" Text="Voltar" OnClick="btVoltar_Click" />
        </asp:Panel>
        </div>
    </form>
</body>
</html>
