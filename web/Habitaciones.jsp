<%-- 
    Document   : Habitaciones
    Created on : 16/08/2020, 19:10:27
    Author     : Jose
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Habitaciones</title>
    </head>
    <body>
            <%if(us.equals("normal")){%>
            
            <div class="d-flex">
            <div class="card col-lg-6">
                
                <div align="center">
                    <img src="img/h1.jpg"  width="400"/>
                    <h1>Suite de lujo</h1>
                    <h3>Precio por noche $900</h3>    
                    <div class="col-lg-6">
                    <a href="Controlador?menu=Reserva&accion=Listar&tipo=lujo" class="btn btn-primary btn-block">Reservar</a>
                    </div>
                </div>                       
            </div>
            <div class="card col-lg-6">
                    <div align="center">
                    <img src="img/h2.jpg"  width="400"/>
                    <h1>Habitacion Standar</h1>
                    <h3>Precio por noche $500</h3>    
                    <div class="col-lg-6">
                    <a href="Controlador?menu=Reserva&accion=Listar" class="btn btn-primary btn-block">Reservar</a>
                    </div>
                </div> 
            </div>
            </div>
            
                <%}%>
        <%if (us.equals("admin")) {
        %>
        <div class="d-flex">
            <div class="card col-lg-3">
                    <div class="card-body">
                        <form action="Controlador?menu=Habitaciones" method="POST">
                            <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" value="${habitacion.getNombre()}" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Precios</label>
                                <input type="text" value="${habitacion.getPrecio()}" name="txtPrecio" class="form-control">
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
                                <th>Precio</th>

                            </tr>
                        </thead>
                            
                        <tbody>
                            <c:forEach items="${habit}" var="h">
                               <tr>
                                    <td>${h.getId()}</td>
                                    <td>${h.getNombre()}</td>
                                    <td>${h.getPrecio()}</td>
                                    
                                    <td>
                                        <a href="Controlador?menu=Habitaciones&accion=Editar&id=${h.getId()}" class="btn btn-primary">Editar</a>
                                        <b></b>
                                        <a href="Controlador?menu=Habitaciones&accion=Eliminar&id=${h.getId()}" class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            
                        </tbody>


                    </table>
                </div>
            
        </div>
        <%}
        %>
    </body>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
</html>
