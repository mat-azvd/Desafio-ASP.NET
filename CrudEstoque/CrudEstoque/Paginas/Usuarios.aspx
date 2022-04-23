<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="CrudEstoque.Paginas.Usuarios" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="../CSS/Styles.css" />

    <asp:ScriptManager runat="server"></asp:ScriptManager>

        <asp:Panel ID="Panel1" runat="server">

            <asp:GridView ID="GridViewUsuario" runat="server">
                <Columns>
                    <asp:Boundfield HeaderText="Código" DataField="ID"/>
                    <asp:Boundfield HeaderText="Nome" DataField="nome"/>
                    <asp:Boundfield HeaderText="Email" DataField="email"/>         
                </Columns>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="white" ForeColor="White"  HorizontalAlign="Center" BorderStyle="Solid" BorderColor="Black" BorderWidth="2px" />
            </asp:GridView>

        </asp:Panel>

    <ajaxToolkit:ModalPopupExtender runat="server" ID="modalCriarUsuario" PopupControlID="panelCriarUsuario" TargetControlID="lblabel" CancelControlID="botaoModalFechar3" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>

    <asp:Panel ID="panelCriarUsuario" HorizontalAlign="Center" CssClass="modal" runat="server">

        <div class="headerModal">
          <asp:Label ID="tituloCadastrarUsusario" CssClass="LabelTitulo" runat="server" Text="Cadastrar Usuario"></asp:Label>
         </div>

         <div class="conteudoModal">
             
            <form id="form1" runat="server">    
            <asp:Label runat="server" CssClass="LabelTitulo"  Text="Cadastro"></asp:Label>
            <br />
            
            <asp:TextBox ID="txtCadastroNome" CssClass="TextBox" runat="server" placeholder="Nome"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ValidationGroup="validacaoCadastro" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCadastroNome" ErrorMessage="Digite um nome" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCadastroNome" ErrorMessage="Nome invalido" Font-Bold="False" Font-Size="Small" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="validacaoCadastro"></asp:RegularExpressionValidator>
            <br />            
            <asp:TextBox ID="txtCadastroEmail"  CssClass="TextBox" runat="server" placeholder="Email" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="validacaoCadastro" runat="server" ControlToValidate="txtCadastroEmail" ErrorMessage="Digite um Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCadastroEmail" ErrorMessage="Email invalido" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="validacaoCadastro"></asp:RegularExpressionValidator>
            <br />         
            <asp:TextBox ID="txtCadastroSenha1" CssClass="TextBox" runat="server" placeholder="Senha"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="validacaoCadastro" runat="server" ControlToValidate="txtCadastroSenha1" ErrorMessage="Digite uma senha" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />         
            <asp:TextBox ID="txtCadastroSenha2" CssClass="TextBox" runat="server" placeholder="Confirma Senha"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="validacaoCadastro" runat="server" ControlToValidate="txtCadastroSenha2" ErrorMessage="Confirme a senha" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCadastroSenha1" ControlToValidate="txtCadastroSenha2" ErrorMessage="Senhas diferentes" Font-Size="Small" ForeColor="Red" ValidationGroup="validacao1"></asp:CompareValidator>
           </form>
         </div>

        <div class="footerModal">
             <asp:Button ID="btCadastrar" ValidationGroup="validacaoCadastro" CssClass="botaoStyle"  runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
            <asp:Button ID="btVoltar" CssClass="botaoStyle"  runat="server" Text="Voltar" OnClick="btVoltar_Click" />
        </div>

    </asp:Panel>

</asp:Content>
