<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="CrudEstoque.Paginas.Produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:Panel runat="server">
    
    <asp:GridView ID="GridViewProduto" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField HeaderText="Código" />
            <asp:BoundField HeaderText="Nome do Produto" />
            <asp:BoundField HeaderText="Quantidade" />
            <asp:CommandField HeaderText="Ação1" ShowEditButton="True" />
            <asp:CommandField HeaderText="Ação2" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    
 </asp:Panel>   
</asp:Content>

