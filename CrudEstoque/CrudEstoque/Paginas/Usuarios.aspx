<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="CrudEstoque.Paginas.Usuarios" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="../CSS/Styles.css" />

    <asp:ScriptManager runat="server"></asp:ScriptManager>

        <asp:Panel ID="Panel1" runat="server">

            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:Boundfield HeaderText="Código" DataField="ID"/>
                    <asp:Boundfield HeaderText="Nome" DataField="nome"/>
                    <asp:Boundfield HeaderText="Email" DataField="email"/>         
                </Columns>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="white" ForeColor="White"  HorizontalAlign="Center" BorderStyle="Solid" BorderColor="Black" BorderWidth="2px" />
            </asp:GridView>

        </asp:Panel>

    <ajaxToolkit:ModalPopupExtender runat="server" ID="modalCriarUsuario" PopupControlID="panelCriarUsuario" TargetControlID="lblabel" CancelControlID="botaoModalFechar" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>

    <asp:Panel ID="panelCriarUsuario" HorizontalAlign="Center" CssClass="modal" runat="server">

        <div class="headerModal">
          <asp:Label ID="tituloCadastrarUsusario" CssClass="LabelTitulo" runat="server" Text="Cadastrar Usuario"></asp:Label>
         </div>

    </asp:Panel>

</asp:Content>
