<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="FormularioC2.Modulos.registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        height: 51px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style2">
        <tr>
            <td>Tipo de documento (*):<br />
                <asp:DropDownList ID="txTipoDocumento" runat="server">
                    <asp:ListItem>CC</asp:ListItem>
                    <asp:ListItem>TI</asp:ListItem>
                    <asp:ListItem>Pasaporte</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Número de documento (*):<br />
                <asp:TextBox ID="txDocumento" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Nombre (*):<br />
                <asp:TextBox ID="txNombre" runat="server"></asp:TextBox>
            </td>
            <td>Segundo nombre:<br />
                <asp:TextBox ID="txSegundoNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Apellido (*):<br />
                <asp:TextBox ID="txApellido" runat="server"></asp:TextBox>
            </td>
            <td>Segundo apellido:<br />
                <asp:TextBox ID="txSegundoApellido" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Correo electrónico (*):<br />
                <asp:TextBox ID="txCorreo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">Confirmar correo electrónico (*):<br />
                <asp:TextBox ID="txCorreo2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contraseña (*):<br />
                <asp:TextBox ID="txContrasenia" runat="server"></asp:TextBox>
            </td>
            <td>Confirmar contraseña (*):<br />
                <asp:TextBox ID="txContrasenia2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btIngresar" runat="server" OnClick="btIngresar_Click" Text="Ingresar" />
                <asp:Button ID="btSalir" runat="server" Text="Salir" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
