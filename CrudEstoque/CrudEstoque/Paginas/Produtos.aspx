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
  
    <asp:Panel ID="PanelModalEditar" CssClass="modal" runat="server">
      
             <asp:Label ID="nomeAlterar" CssClass="labelModal" runat="server" Text="Nome do Produto"></asp:Label>
            <asp:TextBox ID="txtNomeAlterar" runat="server" Text=""></asp:TextBox>
            <br />
            <asp:Label ID="precoAlterar" CssClass="labelModal" runat="server" Text="Preço do Produto"></asp:Label>
            <asp:TextBox ID="txtPrecoAlterar" runat="server" Text=""></asp:TextBox>
            <br />
            <asp:Label ID="quantidadeAlterar" CssClass="labelModal" runat="server" Text="Quantidade do Produto"></asp:Label>
            <asp:TextBox ID="txtQuantidadeAlterar" runat="server" Text=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="ultima_alt_porAlterar" CssClass="labelModal" runat="server" Text="Ultima alt por: "></asp:Label>
            <asp:Label ID="ultima_label" CssClass="labelModal" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="botaoModalFechar1" runat="server" Text="Fechar" />
            <asp:Button ID="botaoModalSalvar" runat="server" Text="Alterar" OnClick="botaoModalAlterar_Click"  />
    </asp:Panel>

      <ajaxToolkit:ModalPopupExtender ID="ModalInserir" BackgroundCssClass="modalBackground" PopupControlID="PanelModalInserir" TargetControlID="lblabel" CancelControlID="botaoModalFechar2" runat="server"></ajaxToolkit:ModalPopupExtender> 
    
    <asp:Panel ID="PanelModalInserir" CssClass="modal" runat="server" BorderStyle="Solid">

        
            <asp:Label ID="prodNome" CssClass="labelModal" runat="server" Text="Nome do Produto"></asp:Label>
            <asp:TextBox ID="txtProdNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="prodPreco" CssClass="labelModal" runat="server" Text="Preço do Produto"></asp:Label>
            <asp:TextBox ID="txtProdPreco" runat="server"></asp:TextBox>
            <br /> 
            <asp:Label ID="prodQuantidade" CssClass="labelModal" runat="server" Text="Quantidade do Produto"></asp:Label>
            <asp:TextBox ID="txtProdQuantidade" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="botaoModalFechar2" runat="server" Text="Fechar" />
            <asp:Button ID="botaoInserir" runat="server" Text="Inserir" OnClick="botaoInserir_Click1" />
        
    </asp:Panel>
  

</asp:Content>

