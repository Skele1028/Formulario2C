<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="FormularioC2.Modulos.perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <td colspan="2">
                <label>Bienvenido Señ@r: </label>
                <asp:Label ID="LabelAdmin" runat="server" Font-Bold="True" Text="Admin"></asp:Label>
            </td>
            <td>
                <div class="text-right">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Modulos/inicioSeccion.aspx"><u class="nav-link font-weight-bold">Salir</u></asp:HyperLink>
                </div>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:ImageButton ID="ibClientes" CssClass="rounded" runat="server" ImageUrl="~/Imagenes/Clientes.PNG" AlternateText="Clientes" Height="265px" Width="286px" OnClick="ibClientes_Click" />
            </td>
            <td class="text-center">
                <asp:ImageButton ID="ibProductos" CssClass="rounded" runat="server" ImageUrl="~/Imagenes/Productos.png" AlternateText="Productos" Height="267px" Width="273px" />
            </td>
            <td class="text-center">
                <asp:ImageButton ID="ibReportes" CssClass="rounded" runat="server" ImageUrl="~/Imagenes/Reporte.png" AlternateText="Reportes" Height="258px" Width="242px" />
            </td>
        </tr>
    </table>
</asp:Content>
