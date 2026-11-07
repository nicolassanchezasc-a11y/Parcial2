<%@ Page Title="Gestion de Documentos" Language="C#" MasterPageFile="~/AsesoriaLegal.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="Parcial2.Documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Gestión de Documentos Legales</h2>
<p>
    <asp:Label ID="Label2" runat="server"></asp:Label>
</p>
<p>Cargar Documentos:<asp:FileUpload ID="FileUpload1" runat="server" />
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Subir" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>

</asp:Content>
