<%-- 
    Document   : Contacto
    Created on : 16/08/2020, 19:01:10
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession obse = request.getSession(false);
    String us = (String) obse.getAttribute("sesion");
    String nom = (String) obse.getAttribute("nom");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
        <link
            href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese"
            rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
        <title>Registro</title>
        <style>
            body {
                
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
        <style>
            #container {
                width: auto;
                margin: auto;
            }
            #first {
                background-color: rgba(0, 0, 0, 0.6);
            }

            #clear {
                clear: both;
            }
        </style>
    </head>
    <body>
        <div id="container">
            <div class="container mt-4 col-lg-4">
                <div class="card-body">
                    <form action="Controlador?menu=Contacto" method="POST">
                        <div class="form-group">
                            <label><b>Nombre</b></label>
                            <%if (us.equals("normal")){%>
                            <input type="text" name="txtNombre" value="<%=nom%>" readonly="readonly" class="form-control"> 
                            <%} else {%>
                            <input type="text" name="txtNombre" class="form-control">
                             <%}%>
                        </div>
                        <div class="form-group">
                            <label><b>Email</b></label>
                            <input type="text" name="txtEmail" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><b>Telefono</b></label>
                            <input type="text"  name="txtTelefono" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><b>Mensaje</b></label>
                            <textarea name="txtMensaje" style="height: 200px" class="form-control"></textarea>

                        </div>
                        <br>
                        <input type="submit" name="accion" value="Enviar" class="btn btn-primary btn-block">
                        <br>
                    </form>
                    <a href="Controlador?menu=Bienvenidos" class="btn btn-primary btn-block" >Salir</a>
                </div>
            </div>
            <br>
            <br>
            <div id="first">
                <div class="container">
                    <div class="footer-grids">
                        <div class="col-md-3 footer-grid">
                            <div class="footer-grid-heading">
                                <h4><u>Direccion</u></h4>
                            </div>
                            <div class="footer-grid-info">
                                <p>Hotel del Lago S.A. <br>
                                    <span>Av. Siempre Viva 123, Embalse</span>
                                </p>
                                <p class="phone">Tel : +54 9 3571 12345 <br>
                                    <span>Email : <a href="mailto:info@lagohotel.com">info@lagohotel.com</a></span>
                                </p>
                            </div>
                        </div>

                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>
