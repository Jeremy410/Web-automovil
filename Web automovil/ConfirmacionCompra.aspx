<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmacionCompra.aspx.cs" Inherits="Web_app_movil.ConfirmacionCompra" %>

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
            <legend>CONFIRMACION DE SU COMPRA</legend>
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
                <hr />
                <div class="form-group">
                    <label for="lblPrecio">Precio</label>
                    <asp:TextBox ID="txtPrecio" runat="server" ReadOnly="true" CssClass="form-control" />
                </div>
                <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnSiguiente_Click" />
                <asp:Button ID="btnAnterior" runat="server" CausesValidation="false" Text="Volver atras" CssClass="btn btn-info pull-right" OnClick="btnAnterior_Click" />
            </form>
        </fieldset>
    </div>
</body>
</html>
