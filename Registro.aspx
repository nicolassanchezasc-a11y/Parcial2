<%@ Page Title="Registro" Language="C#" MasterPageFile="~/AsesoriaLegal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Parcial2.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Registrarse</h2>
    <p>
        Correo electrónico:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Mail no valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </p>
    <p>
&nbsp;Nombre de usuario:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese nombre de Usuario">*</asp:RequiredFieldValidator>
    </p>
    <p>
&nbsp;Edad :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="solo se aceptarán valores numéricos y usuarios mayores de 15 años" MinimumValue="16" MaximumValue="110" Type="Integer">*</asp:RangeValidator>
    </p>
    <p>
&nbsp;Contraseña:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Ingrese Contraseña">*</asp:RequiredFieldValidator>
    </p>
    <p>
        Repite la contraseña:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="No puede estar vacio" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox4" ErrorMessage="Las Contraseñas no son iguales">*</asp:CompareValidator>
    </p>
    <p>
&nbsp;Nombre:<asp:TextBox ID="TextBox6" runat="server" Height="16px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Ingrese Nombre">*</asp:RequiredFieldValidator>
    </p>
    <p>
&nbsp;Apellido:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Ingrese Apellido">*</asp:RequiredFieldValidator>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
</asp:Content>
