<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehiculo.aspx.cs" Inherits="Web_app_movil.Marca" %>

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
            <legend>CARACTERISTICAS DEL AUTO</legend>   
            <form id="form1" runat="server">
                <div class="form-group">
                    <label for="lblMarca">Marca</label>
                    <asp:DropDownList  AutoPostBack="true" id ="ddMarca" runat ="server" CssClass="form-control" OnSelectedIndexChanged="Marca_Changed" />
                    <asp:RequiredFieldValidator id="reqMarca" runat="server" ControlToValidate="ddMarca" ForeColor="Red" ErrorMessage="Debe seleccionar la marca" />
                </div>
                <div class="form-group">
                    <label for="sel1">Modelo</label>
                    <asp:DropDownList id ="ddModelo" CssClass="form-control" runat ="server" />
                    <asp:RequiredFieldValidator id="reqModelo" runat="server" ControlToValidate="ddModelo" ForeColor="Red" ErrorMessage="Debe seleccionar el modelo" />
                </div>
                <div class="form-group">
                    <label for="sel1">Año</label>
                    <asp:DropDownList id ="ddAño" CssClass="form-control" runat ="server" />
                    <asp:RequiredFieldValidator id="reqAnio" runat="server" ControlToValidate="ddAño" ForeColor="Red" ErrorMessage="Debe seleccionar el año" />
                </div>
                <div class="form-group">
                    <label for="sel1">Color</label>
                    <asp:DropDownList id ="ddColor" CssClass="form-control" runat ="server" />
                    <asp:RequiredFieldValidator id="reqColor" runat="server" ControlToValidate="ddColor" ForeColor="Red" ErrorMessage="Debe seleccionar el color" />
                </div>
                <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick = "Button_Click" />
            </form>
            </fieldset>  
        </div>        
    </div>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
