<%-- 
    Document   : Admin
    Created on : 16/08/2020, 19:17:57
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Bienvenido</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">

            
            <li class="nav-item">
              <a class="nav-link" href="Controlador?menu=Usuario&accion=Listar" target="iframe">Usuarios</a>
            </li>

          </ul>
            <div class="dropdown" >
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 ${usuario.getUsuario()}
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <img src="img/login.png" alt="70" width="70"/>
                  <a class="dropdown-item" href="#">Nombre ${usuario.getUsuario()}</a>
                  <a class="dropdown-item" href="#">${usuario.getNivel()}</a>
                  <a class="dropdown-item" href="Controlador?menu=Ingreso">Salir</a>
                  
                </div>
              </div>
        </div>
        
      </nav>
      
                  <div class="m-4" style="height: 550px;">
                      <iframe name="iframe" style="height: 100%; width: 100%">                        
                      </iframe>
                  </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
    </body>
</html>
