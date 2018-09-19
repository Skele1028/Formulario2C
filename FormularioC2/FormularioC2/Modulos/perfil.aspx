<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="FormularioC2.Modulos.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <td  colspan="3">
                <label>Bienvenido Señor: </label> <label>User</label>
                <div dir="rtl">
                <asp:HyperLink ID="lkSalir" runat="server" CssClass="enlace" >Salir</asp:HyperLink></div>
            </td>
        </tr>
        <tr>
            <td class="imageButton">
                 <asp:ImageButton ID="ibClientes" runat="server" ImageUrl="~/Imagenes/Clientes.PNG" AlternateText="Clientes" Height="265px" Width="286px" />
            </td>
            <td class="imageButton">
                 <asp:ImageButton ID="ibProductos" runat="server" ImageUrl="~/Imagenes/Productos.png" AlternateText="Productos" Height="267px" Width="273px" />
            </td>
            <td class="imageButton">
                <asp:ImageButton ID="ibReportes" runat="server"  ImageUrl="~/Imagenes/Reporte.png" AlternateText="Reportes" Height="258px" Width="242px" />
            </td>
        </tr>
        </table>
</asp:Content>
