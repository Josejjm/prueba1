<%-- 
    Document   : Registro
    Created on : 18/08/2020, 21:52:42
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Registro</title>
        
         
    </head>
    <body>
         
            <div class="container mt-4 col-lg-4">
                
                    <div class="card-body">
                        <form action="Controlador?menu=Registro" method="POST">
                            <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Direccion</label>
                                <input type="text" name="txtDireccion" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="txtEmail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Usuario</label>
                                <input type="text" name="txtUsuario" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Clave</label>
                                <input type="password" name="txtClave" class="form-control">
                            </div>
                            
                            <br>
                            
                            <input type="submit" name="accion" value="Crear" class="btn btn-primary btn-block" id="confirmar">
                            <br>
                            
                        </form>
                        
                        <a href="Controlador?menu=Ingreso" class="btn btn-primary btn-block" >Salir</a>
                    </div>
                </div>
            
    <script src="js/Confirmacion.js"></script>                
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
    </body>
</html>
