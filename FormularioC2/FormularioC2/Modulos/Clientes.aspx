<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP/Principal.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="FormularioC2.Modulos.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <label>CLIENTES</label>
    </div><br />
    <div class="text-center">
        <asp:GridView ID="GridView1" CssClass="GridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="1319px">
            <AlternatingRowStyle BackColor="#F7F7F7" CssClass="GridView" />
            <Columns>
                <asp:TemplateField HeaderText="Tipo">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TipoDocumento") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="GridView" />
                    <ItemStyle CssClass="GridView" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Documento">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("NumeroDocumento") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Segundo nombre">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("SegundoNombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Segundo apellido">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("SegundoApellido") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Correo eléctronico">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Correo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle CssClass="GridView" />
            <EmptyDataRowStyle CssClass="GridView" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" CssClass="GridView" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" CssClass="GridView" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" CssClass="GridView" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" CssClass="GridView" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" CssClass="GridView" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" CssClass="GridView" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" CssClass="GridView" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" CssClass="GridView" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" CssClass="GridView" />
        </asp:GridView>
    </div>
</asp:Content>
