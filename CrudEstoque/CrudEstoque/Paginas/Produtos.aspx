<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="CrudEstoque.Paginas.Produtos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link rel="stylesheet" href="../CSS/Styles.css" />

<asp:ScriptManager runat="server"></asp:ScriptManager>
    
<asp:Panel runat="server">
    
    <asp:GridView ID="GridViewProduto" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="true" EmptyDataText="Sem Produtos Cadastrados" OnRowDeleting="GridViewProduto_RowDeleting1">
        <Columns>
            <asp:BoundField HeaderText="Código" DataField="ID" />
            <asp:BoundField HeaderText="Nome do Produto" DataField="nome" />
            <asp:BoundField HeaderText="Quantidade" DataField="quantidade" />
            <asp:CommandField HeaderText="Ação1" ShowEditButton="True" />
            <asp:CommandField HeaderText="Ação2" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView> 
    <asp:Button ID="botaoModalInserir" runat="server" Text="Inserir" OnClick="botaoModalInserir_Click" />
    <asp:Button ID="ButtonDownloadPDF" runat="server" Text="Download PFD" />
    <asp:Label ID="lblabel" runat="server" Text="Label"></asp:Label>
 </asp:Panel> 
    
    <ajaxToolkit:ModalPopupExtender ID="modalEditar" PopupControlID="PanelModalEditar" TargetControlID="lblabel" CancelControlID="botaoModalFechar1" runat="server"></ajaxToolkit:ModalPopupExtender> 
    
    <asp:Panel ID="PanelModalEditar" CssClass="modal" runat="server">

        <div>

        </div>

        <div>
            <asp:Button ID="botaoModalFechar1" runat="server" Text="Fechar" />
            <asp:Button ID="botaoModalSalvar" runat="server" Text="Salvar" />
        </div>

    </asp:Panel>

      <ajaxToolkit:ModalPopupExtender ID="ModalInserir" PopupControlID="PanelModalInserir" TargetControlID="lblabel" CancelControlID="botaoModalFechar2" runat="server"></ajaxToolkit:ModalPopupExtender> 
    
    <asp:Panel ID="PanelModalInserir" CssClass="modal" runat="server" BorderStyle="Solid">

        
            <asp:Label ID="prodNome" runat="server" Text="Nome do Produto"></asp:Label>
            <asp:TextBox ID="txtProdNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="prodPreco" runat="server" Text="Preço do Produto"></asp:Label>
            <asp:TextBox ID="txtProdPreco" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="prodQuantidade" runat="server" Text="Quantidade do Produto"></asp:Label>
            <asp:TextBox ID="txtProdQuantidade" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="botaoModalFechar2" runat="server" Text="Fechar" />
            <asp:Button ID="botaoInserir" runat="server" Text="Inserir" OnClick="botaoInserir_Click1" />
        

    </asp:Panel>
  

</asp:Content>

