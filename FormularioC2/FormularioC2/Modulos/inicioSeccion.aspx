<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="inicioSeccion.aspx.cs" Inherits="FormularioC2.Modulos.inicioSeccion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../Scripts/InicioSesion.js"></script>
    <link href="../Style/css/bootstrap.css" rel="stylesheet" />

    <asp:Panel ID="FormIniSeccion" runat="server"  CssClass="h-auto">
        <table class="table border-0">
            <tr>
                <td class="text-center w-25 align-middle">
                    <asp:Image ID="ImaUSer" runat="server" class="rounded float-left" ImageUrl="~/Imagenes/login3.png" />
                </td>
                <td class="w-75">
                    <asp:Panel ID="FormInicio" runat="server" class="card-header" GroupingText="Acceso al Sistema">
                        <table class="table border-0">
                            <tr>
                                <td>
                                <td>
                                    <asp:Label ID="LabelFecha" runat="server" Font-Bold="True" Text="Fecha"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                    <label>Usuario:</label></td>
                                <td>
                                    <div class="form-group col-md-11">
                                        <input id="txUser" type="text" class="form-control" runat="server" clientidmode="Static" onkeypress="return checkUsuario(event)" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                    <label >Password:</label></td>
                                <td>
                                    <div class="form-group col-md-11">
                                        <input id="txContraseniaInicio" type="password" class="form-control " runat="server" clientidmode="Static" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <label class="font-weight-normal ml-3 ">Registrarse</label> 
                                    <asp:HyperLink ID="lkRegistrarse" runat="server" CssClass="nav-link w-50" NavigateUrl="~/Modulos/registro.aspx" Width="323px">Aquí</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btIngresar" runat="server" class="btn btn-primary btn-lg w-25 ml-3 mr-5" Text="Ingresar" OnClick="btIngresar_Click" />
                                    <asp:Button ID="btSalir" runat="server" class="btn btn-primary btn-lg w-25 ml-3 mr-5" Text="Salir" OnClick="Salir_Click"/>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

