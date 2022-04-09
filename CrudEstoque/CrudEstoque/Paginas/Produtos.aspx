<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="CrudEstoque.Paginas.Produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>Produtos</h1>

    <table>
        <tr>
            <th>
                <asp:Label runat="server" Text="Produto"></asp:Label>
            </th>
            <th>
                <asp:Label runat="server" Text="Codigo"></asp:Label>
            </th>
            <th>
                <asp:Label runat="server" Text="Nome do Produto"></asp:Label>
            </th>
            <th>
                <asp:Label runat="server" Text="Ação1"></asp:Label>
            </th>
            <th>
                <asp:Label runat="server" Text="Ação2"></asp:Label>
            </th>
           
        </tr>

        <tr>
             <th>
                <asp:Button runat="server" Text="Quantidade"></asp:Button>
            </th>
        </tr>
    </table>

</asp:Content>
