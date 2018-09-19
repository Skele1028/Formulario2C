<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="inicioSeccion.aspx.cs" Inherits="FormularioC2.Modulos.inicioSeccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="FormIniSeccion" runat="server" >
        <table>
            <tr>
                <td class="tdIma">
                    <asp:Image ID="ImaUSer" runat="server" ImageAlign="Middle" ImageUrl="~/Imagenes/User.PNG" />
                </td>
                <td class="pnInit">
                    <asp:Panel ID="FormInicio" runat="server"  GroupingText="Acceso al Sistema">
                        <table class="table">
                            <tr>
                                <td class="tdText">
                                <td>fecha / hora</td>
                            </tr>
                            <tr>
                                <td class="tdText">
                                    <label>
                                    Usuario:</label> </td>
                                <td>
                                    <asp:TextBox ID="txUser" runat="server" CssClass="txbTI"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdText">
                                    <label> Password:</label> 
                                </td>
                                <td>
                                    <input id="txContraseniaInicio" type="password" />
                                </td>
                            </tr>
                            <tr>
                                <td class="tdText"></td>
                                <td>
                                    <label> Registrarse </label>
                                    <asp:HyperLink  ID="lkRegistrarse" runat="server" CssClass="enlace" NavigateUrl="~/Modulos/registro.aspx">Aquí</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdText"></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Ingresar" />
                                    <asp:Button ID="Button2" runat="server" CssClass="button" Text="Salir" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

