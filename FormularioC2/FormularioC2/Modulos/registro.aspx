<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="FormularioC2.Modulos.registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/style.css" rel="stylesheet" />
    <script src="../Scripts/Registro.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="FormRegistro" runat="server">
    <table class="table">
        <tr>
            <td>
                <label>Tipo de documento (*):</label><br />
                <asp:DropDownList CssClass="txbT" ID="txTipoDocumento" runat="server">
                    <asp:ListItem>CC</asp:ListItem>
                    <asp:ListItem>TI</asp:ListItem>
                    <asp:ListItem>Pasaporte</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <label>Número de documento (*):</label><br/>
                <asp:TextBox ID="txDocumento" runat="server" CssClass="txbN" type="number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Nombre (*):</label><br />
                <asp:TextBox CssClass="txbT" type="text" ID="txNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                <label>Segundo nombre:</label><br />
                <asp:TextBox ID="txSegundoNombre" runat="server" CssClass="txbT" type="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Apellido (*):</label><br />
                <asp:TextBox CssClass="txbT" type="text" ID="txApellido" runat="server"></asp:TextBox>
            </td>
            <td>
                <label>
                Segundo apellido:</label><br />
                <asp:TextBox ID="txSegundoApellido" runat="server" CssClass="txbT" type="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Correo electrónico (*):<br />
                <input id="txCorreo" type="text" runat="server" ClientIDMode="Static"/>
                </label><br />
            </td>
            <td>
                <label>
                Confirmar correo eletrónico (*):<br />
                <input id="txCorreo2" type="text" onchange="validar_correo()" runat="server" ClientIDMode="Static"/>
                </label><br />
            </td>
        </tr>
        <tr>
            <td>
                <label>Contraseña (*):</label>
                <br />
                <input type="password" id="txContrasenia" runat="server" ClientIDMode="Static"/>
            </td>
            <td>
                <label>
                Confirmar contraseña (*):</label><br />
                <input type="password" id="txContrasenia2" onchange="validar_clave()" runat="server" ClientIDMode="Static"/>
                <br />
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="ContentBt">
                <asp:Button ID="btIngresar" runat="server" CssClass="button" OnClick="btIngresar_Click" onSubmit="return validar_clave()" Text="Ingresar" />
                <asp:Button ID="btSalir" runat="server" CssClass="button" Text="Salir" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
