<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Web_app_movil.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
</head>
<body>
    <div class="container" style="margin-top: 5%">
        <fieldset>
            <legend>CONFIRMACION DE COMPRA</legend>
            <form id="form1" runat="server">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-4">
                            <label for="lblMarca">Marca</label>
                            <asp:TextBox ID="txtMarca" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                        <div class="col-lg-4">
                            <label for="lblModelo">Modelo</label>
                            <asp:TextBox ID="txtModelo" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                        <div class="col-lg-4">
                            <label for="lblAnio">Año</label>
                            <asp:TextBox ID="txtAnio" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                    </div>                    
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-3">
                            <label for="lblColor">Color</label>
                            <asp:TextBox ID="txtColor" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                        <div class="col-lg-3">
                            <label for="lblAsiento">Asiento</label>
                            <asp:TextBox ID="txtAsiento" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                        <div class="col-lg-3">
                            <label for="lblAros">Aros</label>
                            <asp:TextBox ID="txtAros" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                        <div class="col-lg-3">
                            <label for="lblTablero">Tablero</label>
                            <asp:TextBox ID="txtTablero" runat="server" ReadOnly="true" CssClass="form-control" />
                        </div>
                    </div>
                    
                </div>
                <asp:Panel ID="panelPago" runat="server">
                    <fieldset>
                        <legend>DATOS DEL USUARIO</legend>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="lblNombre">Nombre</label>
                                    <asp:TextBox ID="txtNombre" runat="server" ReadOnly="true" CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqNombre" runat="server"  ControlToValidate="txtNombre" ForeColor="Red" ErrorMessage="El nombre es requerido." />
                                </div>
                                <div class="col-lg-6">
                                    <label for="lblApellido">Apellido</label>
                                    <asp:TextBox ID="txtApellido" runat="server" ReadOnly="true"  CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqApellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red" ErrorMessage="El apellido es requerido." />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="lblTelefono">Telefono</label>
                                    <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="true"  CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqTelefono" runat="server" ControlToValidate="txtTelefono" ForeColor="Red" ErrorMessage="El telefono es requerido." />
                                </div>
                                <div class="col-lg-6">
                                    <label for="lblCelular">Celular</label>
                                    <asp:TextBox ID="txtCelular" runat="server" ReadOnly="true"  CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqCelular" runat="server" ControlToValidate="txtCelular" ForeColor="Red" ErrorMessage="El celular es requerido." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lblDireccion">Dirección de envío</label>
                            <asp:TextBox ID="txtDireccion" runat="server" ReadOnly="true"  Columns="50" Rows="5" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="reqDireccion" runat="server" ControlToValidate="txtDireccion" ForeColor="Red" ErrorMessage="La dirección es requerida." />
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>INFORMACION DE PAGO</legend>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-10">
                                    <label for="lblTarjeta">Número de tarjeta</label>
                                    <asp:TextBox ID="txtTarjeta" runat="server"  ReadOnly="true" CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqTarjeta" runat="server" ControlToValidate="txtTarjeta" ForeColor="Red" ErrorMessage="El numero de tarjeta es requerido." />
                                </div>
                                <div class="col-lg-2">
                                    <label for="lblCVC">CVC</label>
                                    <asp:TextBox ID="txtCVC" runat="server" ReadOnly="true"  CssClass="form-control" TextMode="Number" />
                                    <asp:RequiredFieldValidator ID="reqCVC" runat="server" ControlToValidate="txtCVC" ForeColor="Red" ErrorMessage="El CVC es requerido." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-12">
                                    <label for="lblFecha">Fecha de vencimiento</label>
                                    <asp:TextBox ID="txtFecha" runat="server" ReadOnly="true"  CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqFecha" runat="server" ControlToValidate="txtFecha" ForeColor="Red" ErrorMessage="La fecha es requerida" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </asp:Panel>
                <asp:Button ID="btnComprar" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnSiguiente_Click" />
                <asp:Button ID="btnAnterior" runat="server" Text="Volver atrás" CssClass="btn btn-info pull-right" CausesValidation="false" OnClick="btnAnterior_Click" />
            </form>
        </fieldset>
    </div>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
