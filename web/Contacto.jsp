<%-- 
    Document   : Contacto
    Created on : 16/08/2020, 19:01:10
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
                        <form action="Controlador?menu=Contacto" method="POST">
                            <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="txtEmail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="text" name="txtTelefono" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mensaje</label>
                                <input type="text" name="txtMensaje" class="form-control">
                            </div>
                            
                            
                            <br>
                            
                            <input type="submit" name="accion" value="Enviar" class="btn btn-primary btn-block">
                            <br>
                            
                        </form>
                        
                        <a href="Controlador?menu=Bienvenidos" class="btn btn-primary btn-block" >Salir</a>
                    </div>
                </div>
            
                            
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
    </body>
</html>
