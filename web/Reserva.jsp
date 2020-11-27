

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
    Date date = new Date();
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    HttpSession obse = request.getSession();
    String us = (String) obse.getAttribute("sesion");

    String nom = (String) obse.getAttribute("nom");
    String tipo = request.getParameter("tipo");
    String id = request.getParameter("id");
    String precio = request.getParameter("precio");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <title>Reserva</title>
        <style>
            body {
                background-image: url(https://img.freepik.com/foto-gratis/fondo-nubes-color-pastel_66899-709.jpg?size=626&ext=jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }

            label {
                color:white;
            }

        </style>
    </head>
    <body>
        <% if (us.equals("")) {%>
        <div align="center" style="margin: 100px">
            <h1>Debe crearse un Usuario para realizar Reservas</h1><br>
            <h4>Cierre la sesión actual y comience el Registro</h4>
        </div>
        <%} else if (us.equals("normal")) {%>

        <div class="d-flex">

            <div class="card col-lg-4" style="padding-top:10px">
                <%if (tipo != null) {%>
                <form action="Controlador?menu=Reserva" method="POST">

                    <input type="hidden" value="<%=id%>" name="id">
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" value="<%=nom%>" name="txtNombre" readonly="readonly" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Habitacion</label>
                        <input type="text" value="<%=tipo%>" name="txtHabitacion" readonly="readonly" class="form-control">
                    </div>
                    <div class="form-group" align="center">
                        <img src="ControladorIMG?id=<%=id%>" width="250">
                    </div>

                    <div class="form-group">
                        <label>Precio por noche</label>
                        <input type="text" value="<%=precio%>" name="txtPrecio" readonly="readonly" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Fecha</label>
                        <input type="date" name="txtFechaE" step="1" min="<%=dateFormat.format(date)%>">                     
                    </div>
                    <br>

                    <input type="submit" name="accion" value="Agregar" class="btn btn-primary btn-block" style="margin:auto">

                    <br>

                </form>
                <%}%>

            </div>
            <div class="card col-lg-3" style="padding-top:10px">           
                <table class="table">
                    <thead>
                        <tr>
                            <th>Fechas no disponibles</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${habita}" var="c">
                            <tr>
                                <td>${c.getFechaE()}</td> 
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>           

            <div class="col-lg-5">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Nº reserva</th>
                            <th>Fecha reservada</th>
                            <th>Precio</th>
                            <th>Habitacion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${res}" var="c">
                            <tr>
                                <td>${c.getId()}</td> 
                                <td>${c.getFechaE()}</td>
                                <td>$${c.getPrecio()}</td>
                                <td>${c.getHabitacion()}</td> 
                                <td><a href="Controlador?menu=Reserva&accion=Eliminar&id=${c.getId()}&nom=${c.getNombre()}" class="btn btn-danger" id="confirmar">Eliminar</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="d-flex">
                    <div class="col-lg-4">
                        Debe abonar por caja
                    </div>
                    <div class="col-lg-5">
                        <input type="text" value="$${total}" name="" readonly="readonly" class="form-control">
                    </div>
                </div>
            </div>
            <%}%>

            <%if (us.equals("admin")) {%>

            <div class="d-flex">
                <div class="col-lg-2">
                    <a href="Controlador?menu=Reserva&accion=Consultar&consulta=fechae" class="btn btn-primary" id="confirmar" style="margin: 10px">Ordenar por fecha</a><br>
                    <a href="Controlador?menu=Reserva&accion=Consultar&consulta=nombre" class="btn btn-primary" id="confirmar" style="margin: 10px">Ordenar por nombre</a>
                    <form  action="Controlador?menu=Reserva" method="POST">
                        <input type="text" value="" name="txtConsulta" style="margin: 10px">
                        <input type="submit" name="accion" value="Consultar Nombre" class="btn btn-warning btn-block" style="margin: 10px">

                    </form>
                </div>
                <div class="col-lg-10">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nº reserva</th>
                                <th>Nombre de usuario</th>
                                <th>Fecha reservada</th>
                                <th>Precio</th>
                                <th>Habitacion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${res}" var="c">
                                <tr>
                                    <td>${c.getId()}</td> 
                                    <td>${c.getNombre()}</td>
                                    <td>${c.getFechaE()}</td>
                                    <td>$${c.getPrecio()}</td>
                                    <td>${c.getHabitacion()}</td> 
                                    <td><a href="Controlador?menu=Reserva&accion=Eliminar&id=${c.getId()}&nom=${c.getNombre()}" class="btn btn-danger" id="confirmar">Eliminar</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <%}%>
        </div>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>
