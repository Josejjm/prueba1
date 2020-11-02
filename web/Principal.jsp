<%-- 
    Document   : Principal
    Created on : 15/08/2020, 21:34:41
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession obse = request.getSession();
    String us = (String) obse.getAttribute("sesion");

    String nom = (String) obse.getAttribute("nom");

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
            iframe, img { display:block; width:100%; border:none; }

        </style>
    </head>
    <body>
        <header name="arriba" id="main-header" class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Habitaciones&accion=Listar" target="iframe">Habitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Contacto&accion=Contacto" target="iframe">Contacto</a>
                    </li>
                    <%if (us.equals("admin")) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Consultas&accion=Listar" target="iframe">Consultas</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Usuario&accion=Listar" target="iframe">Usuarios</a>
                    </li>
                    <%}
                    %>

                    <%if (us.equals("admin") || us.equals("normal")) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Reserva&accion=Listar&nom=<%=nom%>" target="iframe">Reservas</a>
                    </li>

                    <%}
                    %>
                    <% if (us.equals("admin") || us.equals("normal")) {%>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Hola ${usuario.getUsuario()}</a>
                    </li>
                    <%}%>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Nivel: ${usuario.getNivel()}</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-success" href="Controlador?menu=index" method="POST">Salir</a>
                    </li>
                </ul>
            </div>
        </header>
        <main>
            <img src="img/logo.png" alt=""/>
        </main>
        <div class="m-6">
            <iframe scrolling="auto" allowtransparency="true" name="iframe" style="background-image:url(https://cf.bstatic.com/images/hotel/max1024x768/119/119093621.jpg);background-repeat: no-repeat;
                    background-size: cover;"> 
            </iframe>

            <footer class="page-footer font-small blue pt-4" style="background-image: url(img/footer.png)">
                <div class="container-fluid text-center text-md-left">
                    <div class="row text-center d-flex justify-content-center pt-5 mb-3">
                        <div class="col-md-2 mb-3">
                            <h6 class="text-uppercase font-weight-bold">
                                <a href="Controlador?menu=Reserva&accion=Listar" target="iframe" style="color: #FFFFFF">Reservas</a>
                            </h6>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h6 class="text-uppercase font-weight-bold">
                                <a href="Controlador?menu=Habitaciones&accion=Listar" target="iframe" style="color: #FFFFFF">Habitaciones</a>
                            </h6>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h6 class="text-uppercase font-weight-bold">
                                <a href="Controlador?menu=Consultas&accion=Listar" target="iframe" style="color: #FFFFFF">Consultas</a>
                            </h6>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h6 class="text-uppercase font-weight-bold">
                                <a href="Contacto.jsp" target="iframe" style="color: #FFFFFF">Contacto</a>
                            </h6>
                        </div>
                    </div>
                </div>
            </footer>

        </div>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
