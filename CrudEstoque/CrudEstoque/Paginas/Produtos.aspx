<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="CrudEstoque.Paginas.Produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:Panel runat="server">
    
    <asp:GridView ID="GridViewProduto" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="true" EmptyDataText="Sem Produtos Cadastrados">
        <Columns>
            <asp:BoundField HeaderText="Código" DataField="ID" />
            <asp:BoundField HeaderText="Nome do Produto" DataField="nome" />
            <asp:BoundField HeaderText="Quantidade" DataField="quantidade" />
            <asp:CommandField HeaderText="Ação1" ShowEditButton="True" />
            <asp:CommandField HeaderText="Ação2" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView> 
    <asp:Button ID="botaoInserir" runat="server" Text="Inserir" />
    <asp:Button ID="ButtonDownloadPDF" runat="server" Text="Download PFD" />
 </asp:Panel>   
</asp:Content>

