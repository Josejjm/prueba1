

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
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
        <link
            href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese"
            rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
        <title>Contacto</title>
        <style>
            body {
                background-image: url(https://img.freepik.com/foto-gratis/fondo-nubes-color-pastel_66899-709.jpg?size=626&ext=jpg);
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
                            <%if (us.equals("normal")) {%>
                            <input type="text" name="txtNombre" value="<%=nom%>" readonly="readonly" class="form-control"> 
                            <%} else {%>
                            <input type="text" name="txtNombre" class="form-control">
                            <%}%>
                        </div>
                        <div class="form-group">
                            <label><b>Email</b></label>
                            <input type="email" name="txtEmail" class="form-control">
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
                    <div class="col-md-3 footer-grid" style="float: left">
                        <div class="footer-grid-heading">
                            <h4>Direccion</h4>
                        </div>
                        <div class="footer-grid-info">
                            <p>Hotel del Lago S.A.
                                <span>De los Navegantes S/N</span> 
                                <span>Villa del Dique</span>    
                            </p>
                            <p class="phone">Tel : +54 9 3571 12345
                                <span>Email : <a href="mailto:info@lagohotel.com">info@lagohotel.com</a></span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3 footer-grid" style="float: right">
                        <div class="footer-grid-heading">
                            <h4>Escribenos Ahora</h4>
                        </div>
                        <a href="https://api.whatsapp.com/send?phone=5493513528111&text=Quiero%20más%20información,%20por%20favor." target="_blank"> 
                            <img src="http://s2.accesoperu.com/logos/btn_whatsapp.png" alt="" style="width: 50px;height: 50px;margin-left: 80px;margin-top: 30px"> </a>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>
