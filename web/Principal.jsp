<%-- 
    Document   : Principal
    Created on : 15/08/2020, 21:34:41
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession obse = request.getSession(false);
    String us = (String) obse.getAttribute("sesion");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Bienvenido</title>
        <style type="text/css">
            html, body, div, iframe { margin:0; padding:0; height:100%; }
            iframe { display:block; width:100%; border:none; }
        </style>
    </head>
    <body>
        <header id="main-header" class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Bienvenidos" target="iframe">Inicio<span class="sr-only">(current)</span></a>
                    </li>
                    <%if (us.equals("admin") || us.equals("normal")) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Reserva" target="iframe">Reserva</a>
                    </li>
                    <%}
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Contacto&accion=Contacto" target="iframe">Contacto</a>
                    </li>
                    <%if (us.equals("admin")) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Usuario&accion=Listar" target="iframe">Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Habitaciones&accion=Listar" target="iframe">Habitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Consultas&accion=Listar" target="iframe">Consultas</a>
                    </li>
                    <%}
                    %>
                </ul>
                <div class="dropdown" >
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <%if (us.equals("admin") || us.equals("normal")) {
                        %> 
                        ${usuario.getUsuario()}
                        <%} else {%>
                        Visitante
                        <%}%>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <img src="img/login.png" alt="70" width="70"/>
                        <%if (us.equals("admin") || us.equals("normal")) {
                        %>
                        <a class="dropdown-item" href="#">Nombre: ${usuario.getUsuario()}</a>
                        <%} else {%>
                        <a class="dropdown-item" href="#">Nombre: Visitante</a>
                        <%}%>
                        <a class="dropdown-item" href="#">Nivel: ${usuario.getNivel()}</a>
                        <a class="dropdown-item" href="Controlador?menu=Ingreso" method="POST">Salir</a>
                    </div>
                </div>
            </div>
        </header>
        <main>
            <img src="img/logo.png" alt=""/>
        </main>
        <div class="m-6">
            <iframe name="iframe"> 

            </iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
