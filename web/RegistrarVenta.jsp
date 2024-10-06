<%-- 
    Document   : RegistrarVenta
    Created on : 02-10-2024, 19:06:32
    Author     : Uusario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Ventas</title>
    </head>
    <body>
        <h1> sera Registrar venta</h1>
        <div class="d-flex">
            <div class="col-sm-5">
                <div class="card">
                    <form action="Controlador" method="post">
                        <div class="card-body">
                        <div class="form-group">
                            <label>Datos del Cliente</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="codigoCliente" class="form-control" placeholder="Codigo">
                                <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="codigoCliente" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Datos del Producto</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="codigoProducto" class="form-control" placeholder="Codigo">
                                <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="nombresClientes" class="form-control" placeholder="Datos productos">
                            </div>
                        </div>                                               
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="precio" class="form-control" placeholder="S/.0.00">
                            </div>
                            <div class="col-sm-3">
                                <input type="number" name="cant" placeholder="" class="form-control">
                            </div>
                            <div class="col-sm-3">
                                <input type="number" name="stock" placeholder="Stock" class="form-control">
                            </div>
                        </div>
                            <div class="form-group">
                                <input type="submit" name="accion" placeholder="Stock" value="Agregar" class="btn btn-outline-info">
                            </div>
                    </div>
                    </form>
                    
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-6 ml-auto">
                            <label>NumeroSerie: </label>
                            <input type="text" name="NroSerie" placeholder="" class="form-control">
                        </div>   
                        <table class="table table-hover">
                            <thead>
                                <tr>                        
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Acciones</th>                        
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="" items="">
                                <tr>
                                    <td></td>
                                    <td></td>                                   
                                    <td></td>
                                    <td></td>                                   
                                    <td></td>
                                    <td></td>                                   
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&id=${em.getId()}">Delete</a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div> 
                                    <div class="card-footer">
                                        <div>
                                            <input type="submit" name="accion" value="Generar Venta" class="btn btn-success">
                                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                                        </div>
                                    </div>
                </div>                
            </div>
        </div>
        
        
        <!-- Optional JavaScript -->
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    </body>
</html>
