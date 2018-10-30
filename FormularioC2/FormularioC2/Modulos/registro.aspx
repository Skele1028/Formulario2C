<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="FormularioC2.Modulos.registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/css/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/Registro.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="FormRegistro" runat="server" > 
        <form>
        <table class="table">
            <tr>
                <td class="w-50">
                    <label>Tipo de documento (</label><label class="text-danger">*</label><label>):</label><br />
                    <asp:DropDownList CssClass="form-control" ID="txTipoDocumento" runat="server">
                        <asp:ListItem>CC</asp:ListItem>
                        <asp:ListItem>TI</asp:ListItem>
                        <asp:ListItem>Pasaporte</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="w-50">
                    <label>Número de documento (</label><label class="text-danger">*</label><label>):</label><br />
                    <input id="txDocumento" class="form-control" type="number" runat="server" clientidmode="Static" onkeypress="return checkDocumento(event)" required />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Nombre (</label><label class="text-danger">*</label><label>):</label><br />
                    <input id="txNombre" class="form-control w-100" type="text" runat="server" clientidmode="Static" onkeypress="return checkNombre(event)" required/>
                </td>
                <td>
                    <label>Segundo nombre:</label><br />
                    <input id="txSegundoNombre" class="form-control w-100" type="text" runat="server" clientidmode="Static" onkeypress="return checkNombre(event)" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Apellido (</label><label class="text-danger">*</label><label>):</label><br />
                    <asp:TextBox class="form-control" type="text" ID="txApellido" runat="server"></asp:TextBox>
                </td>
                <td>
                    <label>Segundo apellido:</label><br />
                    <asp:TextBox ID="txSegundoApellido" runat="server" class="form-control" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Correo electrónico (</label><label class="text-danger">*</label><label>):</label><br />
                   
                    <input id="txCorreo" type="email" onchange="validar_correo()" runat="server" ClientIDMode="Static" class="form-control" required />
                    <br />
                </td>
                <td>
                    <label>Confirmar correo eletrónico (</label><label class="text-danger">*</label><label>):</label><br />
                    <input id="txCorreo2" type="email"   onchange="validar_correo()" runat="server" clientidmode="Static"   class="form-control" required/>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Contraseña (</label><label class="text-danger">*</label><label>):</label><br />
                    <input type="password" id="txContrasenia" class="form-control" runat="server" clientidmode="Static" required/>
                </td>
                <td>
                    <label>
                        Confirmar contraseña (</label><label class="text-danger">*</label><label>):</label><br />
                    <input type="password" id="txContrasenia2" class="form-control" onchange="validar_clave()" runat="server" clientidmode="Static" required/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="flex-column">
                    <asp:Button ID="btRegistrar" runat="server" class="btn btn-primary btn-lg w-25 ml-5 mr-5" Text="Registrar" OnClick="btRegistrar_Click" onSubmit="return validar_clave()"/>
                    
                    <a href="inicioSeccion.aspx"><input id="btSalir" type="button"  value="Salir" class="btn btn-primary btn-lg w-25 ml-5 mr-5"/></a>
                    </td>
            </tr>
        </table>
            </form>  
    </asp:Panel>
</asp:Content>
