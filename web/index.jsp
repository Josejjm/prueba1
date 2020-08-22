<%-- 
    Document   : index
    Created on : 15/08/2020, 21:29:46
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Ingreso</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card">
                <div class="card-body">
                    <form class="form-sing" action="Login" method="POST">
                        <div class="form-group text-center">
                            <h3>Entrar</h3>
                            <img src="img/login.png" alt="70" width="170"/>
                        </div>
                        
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="user" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label>Clave</label>
                            <input type="password" name="pass" class="form-control">
                        </div>
                        
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
                        <br>
                        <input type="submit" name="accion" value="Visitante" class="btn btn-primary btn-block">
                        <br>
                    </form>
                        <a href="Controlador?menu=Registro" class="btn btn-primary btn-block" >Crear Cuenta</a>
                        <br>
                        
                        
                </div>
            </div>
        </div>
            
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
