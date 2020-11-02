<%-- 
    Document   : Usuario
    Created on : 17/08/2020, 19:39:31
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
        <title>Usuarios</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-lg-3">
                <div class="card-body">
                    <form action="Controlador?menu=Usuario" method="POST">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" value="${usuario.getNombre()}" name="txtNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Direccion</label>
                            <input type="text" value="${usuario.getDireccion()}" name="txtDireccion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" value="${usuario.getEmail()}" name="txtEmail" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" value="${usuario.getUsuario()}" name="txtUsuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Clave</label>
                            <input type="text" value="${usuario.getClave()}" name="txtClave" class="form-control">
                        </div>
                        <div class="form-group" class="form-control">
                            <label>Nivel</label>

                            <select name="txtNivel" class="form-control">
                                <option value="normal">normal</option> 
                                <option value="admin" selected>admin</option>
                            </select>
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
                            <th>Direccion</th>
                            <th>Email</th>
                            <th>Usuario</th>
                            <th>Clave</th>
                            <th>Nivel</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${usua}" var="u">
                            <tr>
                                <td>${u.getId()}</td>
                                <td>${u.getNombre()}</td>
                                <td>${u.getDireccion()}</td>
                                <td>${u.getEmail()}</td>
                                <td>${u.getUsuario()}</td>
                                <td>${u.getClave()}</td>
                                <td>${u.getNivel()}</td>
                                <td>
                                    <a href="Controlador?menu=Usuario&accion=Editar&id=${u.getId()}" class="btn btn-primary">Editar</a>
                                    <b></b>
                                    <a href="Controlador?menu=Usuario&accion=Eliminar&id=${u.getId()}" class="btn btn-danger" id="confirmar">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <script src="js/Confirmacion.js"></script>   
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>    
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</html>
