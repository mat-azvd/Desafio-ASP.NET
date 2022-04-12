<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="CrudEstoque.Paginas.Produtos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link rel="stylesheet" href="../CSS/Styles.css" />

<asp:ScriptManager runat="server"></asp:ScriptManager>


<asp:Panel CssClass="PanelTabela"  runat="server">

<div id="formTabela" >
    <asp:Label ID="tituloProduto" CssClass="LabelTitulo" runat="server" Text="Produtos"></asp:Label>
    <br />
    <asp:GridView ID="GridViewProduto" HorizontalAlign="Center" CssClass="gridProduto" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="Sem Produtos Cadastrados" OnRowDeleting="GridViewProduto_RowDeleting1" OnSelectedIndexChanged="GridViewProduto_SelectedIndexChanged" BackColor="White" BorderColor="black" BorderStyle="Solid" BorderWidth="1px" CellPadding="15" ForeColor="Black" GridLines="Both">
        <Columns>
            <asp:BoundField HeaderText="Código" DataField="ID" />
            <asp:BoundField HeaderText="Nome do Produto" DataField="nome" />
            <asp:BoundField HeaderText="Quantidade" DataField="quantidade" />
            <asp:CommandField HeaderText="Ação1" ShowSelectButton="True" SelectText="Editar" />
            <asp:CommandField HeaderText="Ação2" ShowDeleteButton="True" />
        </Columns>
        
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="white" ForeColor="Black" HorizontalAlign="Center" BorderStyle="Solid" BorderColor="Black" BorderWidth="2px" />
      
    </asp:GridView> 
    <br />
    <asp:Button ID="botaoModalInserir" CssClass="botaoInserir" runat="server" Text="Inserir" OnClick="botaoModalInserir_Click" />
    <asp:Button ID="ButtonDownloadPDF" CssClass="botaoPDF" runat="server" Text="Download PFD" />
    <asp:Label ID="lblabel" runat="server" Text="Label"></asp:Label>
    </div>  
 </asp:Panel>
  
    
    <ajaxToolkit:ModalPopupExtender ID="modalEditar" PopupControlID="PanelModalEditar" TargetControlID="lblabel" CancelControlID="botaoModalFechar1" runat="server" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender> 
  
    <asp:Panel ID="PanelModalEditar" HorizontalAlign="Center" CssClass="modal" runat="server">
         <div class="headerModal">
          <asp:Label ID="tituloEditar" CssClass="LabelTitulo" runat="server" Text="Editar Produto"></asp:Label>
         </div>
        <div class="conteudoModal">
             <asp:Label ID="nomeAlterar" CssClass="labelModal" runat="server" Text="Nome do Produto"></asp:Label>
            <asp:TextBox ID="txtNomeAlterar" CssClass="TextBox" runat="server" Text=""></asp:TextBox>
            <br />
            <asp:Label ID="precoAlterar" CssClass="labelModal" runat="server" Text="Preço do Produto"></asp:Label>
            <asp:TextBox ID="txtPrecoAlterar" CssClass="TextBox" runat="server" Text=""></asp:TextBox>
            <br />
            <asp:Label ID="quantidadeAlterar" CssClass="labelModal" runat="server" Text="Quantidade do Produto"></asp:Label>
            <asp:TextBox ID="txtQuantidadeAlterar" CssClass="TextBox" runat="server" Text=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="ultima_alt_porAlterar" CssClass="labelModal" runat="server" Text="Ultima alt por: "></asp:Label>
            <asp:Label ID="ultima_label" CssClass="labelModal" runat="server" Text=""></asp:Label>
            <br />
        </div>
        <div class="footerModal">
            <asp:Button ID="botaoModalFechar1" CssClass="botaoStyle" runat="server" Text="Fechar" />
            <asp:Button ID="botaoModalSalvar" CssClass="botaoStyle" runat="server" Text="Alterar" OnClick="botaoModalAlterar_Click"  />
        </div>
         <br />
        </asp:Panel>

      <ajaxToolkit:ModalPopupExtender ID="ModalInserir" BackgroundCssClass="modalBackground" PopupControlID="PanelModalInserir" TargetControlID="lblabel" CancelControlID="botaoModalFechar2" runat="server"></ajaxToolkit:ModalPopupExtender> 
    
    <asp:Panel ID="PanelModalInserir" HorizontalAlign="Center" CssClass="modal" runat="server" BorderStyle="Solid">

        <div class="headerModal">
        <asp:Label ID="tituloInserir" CssClass="LabelTitulo" runat="server" Text="Cadastrar Produto"></asp:Label>
        </div>
            <br />
        <div class="conteudoModal">
            <asp:Label ID="prodNome" CssClass="labelModal" runat="server" Text="Nome do Produto"></asp:Label>
            <asp:TextBox ID="txtProdNome" CssClass="TextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="prodPreco" CssClass="labelModal" runat="server" Text="Preço do Produto"></asp:Label>
            <asp:TextBox ID="txtProdPreco" CssClass="TextBox" runat="server"></asp:TextBox>
            <br /> 
            <asp:Label ID="prodQuantidade" CssClass="labelModal" runat="server" Text="Quantidade do Produto"></asp:Label>
            <asp:TextBox ID="txtProdQuantidade" CssClass="TextBox" runat="server"></asp:TextBox>
          </div>
            <br />
        <div class="footerModal">
            <asp:Button ID="botaoModalFechar2" CssClass="botaoStyle" runat="server" Text="Fechar" />
            <asp:Button ID="botaoInserir" CssClass="botaoStyle" runat="server" Text="Inserir" OnClick="botaoInserir_Click1" />
        </div>

    </asp:Panel>
  

</asp:Content>

