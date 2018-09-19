<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="inicioSeccion.aspx.cs" Inherits="FormularioC2.Modulos.inicioSeccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<<<<<<< HEAD
    <script src="../Scripts/InicioSesion.js"></script>
</asp:Content>
=======
    </asp:Content>
>>>>>>> f8cc276fe28dcc4b26bfaac034d4a89ee4eae97c
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
                                    <asp:TextBox ID="txUser" runat="server" CssClass="txbTI" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdText">
                                    <label> Password:</label> 
                                </td>
                                <td>
                                    <input id="txContraseniaInicio" type="password" runat="server" ClientIDMode="Static"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdText"></td>
                                <td>
                                    <label> Registrarse </label>
<<<<<<< HEAD
                                    <asp:Label ID="Label1" runat="server" Text="aquí"  href='registro.aspx' Font-Bold="True" ForeColor="#3366FF"></asp:Label>
=======
                                    <asp:HyperLink  ID="lkRegistrarse" runat="server" CssClass="enlace" NavigateUrl="~/Modulos/registro.aspx">Aquí</asp:HyperLink>
>>>>>>> f8cc276fe28dcc4b26bfaac034d4a89ee4eae97c
                                </td>
                            </tr>
                            <tr>
                                <td class="tdText"></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Ingresar" OnClick="Button1_Click" />
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

