<%-- 
    Document   : Principal
    Created on : 27-09-2024, 18:38:03
    Author     : Uusario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-info">
                <a class="navbar-brand" href="#">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                      <a style="margin-left: 10px ; border:none"class="btn btn-outline-light" href="#">Casa <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px ; border:none" class="btn btn-outline-light" href="Controlador?menu=Producto" target="idFrame">Producto</a>
                    </li>
                    <li class="nav-item">
                      <a style="margin-left: 10px ; border:none"class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="idFrame">Empleado</a>
                    </li>
                    <li class="nav-item">
                      <a style="margin-left: 10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Clientes" target="idFrame">Clientes</a>
                    </li>
                    <li class="nav-item">
                      <a style="margin-left: 10px; border:none"  class="btn btn-outline-light" href="Controlador?menu=NuevaVenta" target="idFrame">Nueva Venta</a>
                    </li>                    
                  </ul>
                </div>
                <div class="dropdown">
                    <button style="border:none"  class="btn btn-outline-light dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      ${usuario.getNom()}
                    </button>

                    <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuLink">
                      <a class="dropdown-item" href="#">
                          <img src="" alt="60" width="60"/>
                      </a>
                      <a class="dropdown-item" href="#">${usuario.getUser()}</a>
                      <a class="dropdown-item" href="#">usuario@gmail.com</a>
                      <div class="dropdown-divider"></div>
                      <form action="Validar" method="POST">
                          <button class="dropdown-item" href="#" name="menu" value="Salir">Salir</button>
                      </form>
                      
                    </div>
                  </div>
              </nav>
         </header>
        <div class="m-4" style=" height: 550px">
             <iframe name="idFrame" style="height:100%;width: 100% ; border: none"></iframe>
        </div>

        
        <footer>
            
            
        </footer>
        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
