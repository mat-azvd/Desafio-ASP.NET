<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="CrudEstoque.Paginas.Produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:Panel runat="server">
    
    <asp:GridView ID="GridViewProduto" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="true" EmptyDataText="Sem Produtos Cadastrados" OnRowDeleting="GridViewProduto_RowDeleting">
        <Columns>
            <asp:BoundField HeaderText="Código" DataField="ID" />
            <asp:BoundField HeaderText="Nome do Produto" DataField="nome" />
            <asp:BoundField HeaderText="Quantidade" DataField="quantidade" />
            <asp:CommandField HeaderText="Ação1" ShowEditButton="True" />
            <asp:CommandField HeaderText="Ação2" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView> 
    <asp:Button ID="botaoInserir" runat="server" Text="Inserir" OnClick="botaoInserir_Click" />
    <asp:Button ID="ButtonDownloadPDF" runat="server" Text="Download PFD" />
    <asp:Label ID="lblabel" runat="server" Text="Label"></asp:Label>
 </asp:Panel> 
    

    <asp:ModalPopupExtender ID="modalJanela" PopupControlID="PanelModal" TargetControlID="lblabel" CancelCrontrolID="modalClose" runat="server"></asp:ModalPopupExtender>

    <asp:Panel ID="PanelModal" CssClass="modal" runat="server">

        <div>

        </div>

        <div>
            <asp:Button ID="modalClose" runat="server" Text="Fechar" />
            <asp:Button ID="modalSalvar" runat="server" Text="Salvar" />
        </div>

    </asp:Panel>
  

</asp:Content>

