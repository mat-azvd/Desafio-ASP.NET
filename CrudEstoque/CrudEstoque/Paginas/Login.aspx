<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrudEstoque.Paginas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="../CSS/Styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1"  runat="server">
        <div id="formLogin">
           
             
            <asp:Panel ID="Panel1" CssClass="PanelLogin" runat="server" HorizontalAlign="Center"  >
            <asp:Label ID="Titulo" CssClass="LabelTitulo" runat="server" Text="Login"></asp:Label>
            <br />
             
                <asp:TextBox ID="TextEmail" runat="server" CssClass="TextBox" Textmode="Email" placeholder="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Digite o Email" ControlToValidate="TextEmail" ForeColor="#CC3300" ValidationGroup="validacao"></asp:RequiredFieldValidator>
                <br />
                 
                <asp:Textbox ID="TextSenha" CssClass="TextBox" runat="server" TextMode="Password" placeholder="Senha" ></asp:Textbox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Digite a senha" ControlToValidate="TextSenha" ForeColor="#CC3300" ValidationGroup="validacao"></asp:RequiredFieldValidator>
                <br />

                <asp:Button ID="btLogar" CssClass="botaoStyle"  runat="server" Text="Logar" OnClick="btLogar_Click" ValidationGroup="validacao"/>      
                <asp:Button ID="btCadastro" CssClass="botaoStyle"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />

            </asp:Panel>

            </div>
    </form>
</body>
</html>
