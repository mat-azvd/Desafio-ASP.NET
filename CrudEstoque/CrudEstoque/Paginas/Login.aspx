<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrudEstoque.Paginas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" >

                <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
                <br />
                 
                <asp:Textbox ID="TextEmail" runat="server" Textmode="Email"></asp:Textbox>
                <br />

                <asp:Label ID="LabelSenha" runat="server" Text="Senha"></asp:Label>
                <br />
                 
                <asp:Textbox ID="TextSenha" runat="server" TextMode="Password" ></asp:Textbox>
                <br />

                <asp:Button ID="btLogar"  runat="server" Text="Logar" OnClick="btLogar_Click" />
               
                <asp:Button ID="btCadastro"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />

            </asp:Panel>
        </div>
    </form>
</body>
</html>
