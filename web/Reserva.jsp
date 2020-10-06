<%-- 
    Document   : Reserva
    Created on : 16/08/2020, 19:01:00
    Author     : Jose
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession obse = request.getSession(false);
    String us = (String) obse.getAttribute("sesion");
    
    Integer id=(Integer)(obse.getAttribute("idus"));
    String nom=(String)obse.getAttribute("nom");
    String tipo = request.getParameter("tipo");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
        <%out.print(id.intValue());%>
        
            <div class="d-flex">
            <div class="card col-lg-3"></div>
            <div class="card col-lg-3">
                        <form action="Controlador?menu=Reserva" method="POST">
                            <div class="form-group">
                            <label>Fecha ingreso</label>
                            <input type="date" name="txtFecha" class="form-control">
                            </div>
                            <div class="form-group">
                            <label>Fecha salida</label>
                            <input type="date" name="txtFechaS" class="form-control">
                            </div>
                            <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" value="<%=nom%>" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                            <label>Habitacion</label>
                            <input type="text" value="<%=tipo%>" name="txtHabitacion" class="form-control">
                            </div>
                            <br>
                            
                            <input type="submit" name="accion" value="Crear" class="btn btn-primary btn-block">
                            <br>
                            
                            
                        </form>
                        <a href="Controlador?menu=Reserva&accion=Mostrar reservas&id=<%=nom%>" class="btn btn-primary btn-block" >Ver mis reservas</a>
                        
                    </div>
                <div class="col-lg-6">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Fecha</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${res}" var="c">
                                <tr>
                                    <td>${c.getId()}</td> 
                                    <td>${c.getFecha()}</td>
                                    <td>${c.getNombre()}</td> 
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                </div>
            
                            
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>
