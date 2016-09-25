<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="Web_app_movil.Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
</head>
<body>
    <div class="container" style="margin-top: 5%">
        <form id="form1" runat="server">
            <fieldset>
                <legend>DATOS DEL USUARIO</legend>

                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-6">
                            <label for="lblNombre">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator id="reqNombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red" ErrorMessage="El nombre es requerido." />
                        </div>
                        <div class="col-lg-6">
                            <label for="lblApellido">Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator id="reqApellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red" ErrorMessage="El apellido es requerido." />
                        </div>
                    </div>
                </div>

                <div class="form-group">

                    <div class="row">
                        <div class="col-lg-6">
                            <label for="lblTelefono">Telefono</label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control phone" />
                            <asp:RequiredFieldValidator id="reqTelefono" runat="server" ControlToValidate="txtTelefono" ForeColor="Red" ErrorMessage="El telefono es requerido." />
                        </div>
                        <div class="col-lg-6">
                            <label for="lblCelular">Celular</label>
                            <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control phone" />
                            <asp:RequiredFieldValidator id="reqCelular" runat="server" ControlToValidate="txtCelular" ForeColor="Red" ErrorMessage="El celular es requerido." />
                        </div>
                    </div>                    
                </div>
                <div class="form-group">
                    <label for="lblDireccion">Dirección de envío</label>
                    <asp:TextBox ID="txtDireccion" runat="server" Columns="50" Rows="5" CssClass="form-control" />
                    <asp:RequiredFieldValidator id="reqDireccion" runat="server" ControlToValidate="txtDireccion" ForeColor="Red" ErrorMessage="La dirección es requerida." />
                </div>
            </fieldset>

            <fieldset>
                <legend>INFORMACION DE PAGO</legend>

                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-10">
                            <label for="lblTarjeta">Número de tarjeta</label>
                            <asp:TextBox ID="txtTarjeta" runat="server" CssClass="form-control credit-card" />
                            <asp:RequiredFieldValidator id="reqTarjeta" runat="server" ControlToValidate="txtTarjeta" ForeColor="Red" ErrorMessage="El numero de tarjeta es requerido." />
                        </div>
                        <div class="col-lg-2">
                            <label for="lblCVC">CVC</label>
                            <asp:TextBox ID="txtCVC" runat="server" CssClass="form-control" TextMode="Number" />
                            <asp:RequiredFieldValidator id="reqCVC" runat="server" ControlToValidate="txtCVC" ForeColor="Red" ErrorMessage="El CVC es requerido." />
                        </div>
                    </div>                    
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <label for="lblFecha">Fecha de vencimiento</label>
                            <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator id="reqFecha" runat="server" ControlToValidate="txtFecha" ForeColor="Red" ErrorMessage="La fecha es requerida" />
                        </div>
                    </div>                    
                </div>
            </fieldset>
            <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnSiguiente_Click" />
            <asp:Button ID="btnAnterior" runat="server" CausesValidation="false" Text="Volver atras" CssClass="btn btn-info pull-right" OnClick="btnAnterior_Click" />
        </form>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/jquery.inputmask.js"></script>
<script>
    $(function () {
        $("#txtFecha").datepicker();
        var im = new Inputmask("(999)-999-9999");
        im.mask(".phone");

        var creditCard = new Inputmask("9999-9999-9999-9999");
        creditCard.mask(".credit-card");
    });
</script>
</html>
