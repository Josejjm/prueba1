<%-- 
    Document   : Consultas
    Created on : 23/08/2020, 21:19:01
    Author     : Jose
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
        <link
            href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese"
            rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
        <title>Consultas</title>
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
            <div class="d-flex">
                <div class="card col-lg-3">
                    <div class="card-body">
                        <form action="Controlador?menu=Consultas" method="POST">
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" value="${contacto.getNombre()}" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" value="${contacto.getEmail()}" name="txtEmail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="text" value="${contacto.getTelefono()}" name="txtTelefono" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mensaje</label>
                                <input type="text" value="${contacto.getMensaje()}" name="txtMensaje" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <input type="text" value="${contacto.getEstado()}" name="txtEstado" class="form-control">

                            </div>

                            <input type="submit" name="accion" value="Agregar" class="btn btn-warning">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-danger">
                        </form>

                    </div>
                </div>
                <div class="col-lg-9">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Email</th>
                                <th>Telefono</th>
                                <th>Mensaje</th>
                                <th>Estado</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${cont}" var="c">
                                <tr>
                                    <td>${c.getId()}</td>
                                    <td>${c.getNombre()}</td>
                                    <td>${c.getEmail()}</td>
                                    <td>${c.getTelefono()}</td>
                                    <td>${c.getMensaje()}</td>
                                    <td>${c.getEstado()}</td>

                                    <td>
                                        <a href="Controlador?menu=Consultas&accion=Editar&id=${c.getId()}" class="btn btn-primary">Editar</a>
                                        <b></b>
                                        <a href="Controlador?menu=Consultas&accion=Eliminar&id=${c.getId()}" class="btn btn-danger" id="confirmar">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
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
        <script src="js/Confirmacion.js"></script> 
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>

</html>

