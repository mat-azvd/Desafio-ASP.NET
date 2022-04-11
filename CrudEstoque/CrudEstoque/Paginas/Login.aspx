<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrudEstoque.Paginas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="../CSS/Styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <asp:Panel ID="Panel1" CssClass="PanelLogin" runat="server" HorizontalAlign="Center" Width="30%" >
            <asp:Label ID="Titulo" CssClass="Titulo" runat="server" Text="LOGIN"></asp:Label>
            <br />
                <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
                <br />              
                <asp:Textbox ID="TextEmail" CssClass="TextBox" runat="server" Textmode="Email"></asp:Textbox>
                <br />

                <asp:Label ID="LabelSenha" runat="server" Text="Senha"></asp:Label>
                <br />
                 
                <asp:Textbox ID="TextSenha" CssClass="TextBox" runat="server" TextMode="Password" ></asp:Textbox>
                <br />

                <asp:Button ID="btLogar"  runat="server" Text="Logar" OnClick="btLogar_Click" />
               
                <asp:Button ID="btCadastro"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />

            </asp:Panel>
        </div>
    </form>
</body>
</html>
