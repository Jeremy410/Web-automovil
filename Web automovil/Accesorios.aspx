<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accesorios.aspx.cs" Inherits="Web_app_movil.Accesorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
</head>
<body>
    <div>
        <div class="container" style="margin-top: 5%">
            <fieldset>
                <legend>SELECCION DE ACCESORIOS</legend>
                <form id="form1" runat="server">
                    <div class="form-group">
                        <label for="lblMarca">Tipo de Asiento</label>
                        <asp:DropDownList ID="ddAsientos" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator id="reqAsientos" runat="server" ControlToValidate="ddAsientos" ForeColor="Red" ErrorMessage="Debe seleccionar un asiento" />
                    </div>
                    <div class="form-group">
                        <label for="sel1">Aros</label>
                        <asp:DropDownList ID="ddAros" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator id="reqAros" runat="server" ControlToValidate="ddAros" ForeColor="Red" ErrorMessage="Debe seleccionar algun aro" />
                    </div>
                    <div class="form-group">
                        <label for="sel1">Tipo de tablero</label>
                        <asp:DropDownList ID="ddTableros" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator id="reqTableros" runat="server" ControlToValidate="ddTableros" ForeColor="Red" ErrorMessage="Debe seleccionar algun tablero" />
                    </div>
                    <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="Button_Click" />
                    <asp:Button ID="btnAnterior" runat="server" Text="Volver atrás" CssClass="btn btn-info pull-right" CausesValidation="false" OnClick="btnAnterior_Click" />
                </form>
            </fieldset>
        </div>
    </div>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
