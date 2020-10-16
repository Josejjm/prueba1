<%-- 
    Document   : Reserva
    Created on : 16/08/2020, 19:01:00
    Author     : Jose
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession obse = request.getSession();
    String us = (String) obse.getAttribute("sesion");

    String nom=(String)obse.getAttribute("nom");
    String tipo = request.getParameter("tipo");
    String id = request.getParameter("id");
    String precio = request.getParameter("precio");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
                            
            <div class="d-flex">
                
                    <%if(tipo!=null){%>
            <div class="card col-lg-3" style="padding-top:10px">
                        <form action="Controlador?menu=Reserva" method="POST">
                            

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
                            <label>Fecha ingreso</label>
                            <input type="date" name="txtFechaE" class="form-control" id="fi">
                            </div>
                            <div class="form-group">
                            <label>Fecha salida</label>
                            <input type="date" name="txtFechaS" class="form-control">
                            </div>
                            
                            <br>
                            
                            <input type="submit" name="accion" value="Crear" class="btn btn-primary btn-block" style="margin:auto">
                            <br>
                            
                            
                        </form>
                        
                        
                    </div>
                    
                    <div class="card col-lg-6">
                        <div align="center">
                            
                        <h1><%=tipo%></h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore 
                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                                nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse 
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, 
                                sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <h3>$<%=precio%></h3>    
                        
                        </div> 
                    </div>
                            <%} else {%> 
                 <div class="card col-lg-3">
                    <br>
                    <a href="Controlador?menu=Reserva&accion=Mostrar reservas&id=<%=nom%>" class="btn btn-danger" style="margin:auto" >Ver mis reservas</a>
                    <br>
                </div>           
                <div class="col-lg-6">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nº reserva</th>
                                <th>Fecha ingreso</th>
                                <th>Fecha salida</th>
                                <th>Nombre</th>
                                <th>Habitacion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${res}" var="c">
                                <tr>
                                    <td>${c.getId()}</td> 
                                    <td>${c.getFechaE()}</td>
                                    <td>${c.getFechaS()}</td>
                                    <td>${c.getNombre()}</td> 
                                    <td>${c.getHabitacion()}</td> 
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                    <%}%>
                </div>
            
                            
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>
