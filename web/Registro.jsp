<%-- 
    Document   : Registro
    Created on : 18/08/2020, 21:52:42
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
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

        <div class="container mt-4 col-lg-4">

            <div class="card-body">
                <form action="Controlador?menu=Registro" method="POST">
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Direccion</label>
                        <input type="text" name="txtDireccion" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" id="email" placeholder="correo@mail.com" name="txtEmail" class="form-control" onfocusout="validarMail()">
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="txtUsuario" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" name="txtClave" class="form-control" id="c1">
                    </div>
                    <div class="form-group">
                        <label>Repita su Contraseña</label>
                        <input  type="password" name="txtClave2" class="form-control" id="c2" onfocusout="validarContrasenias()">
                    </div>

                    <br>
                    <script>
                        function validarMail() {
                            let email = document.getElementById('email');

                            if (!email.validity.valid) {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error',
                                    text: 'El email es incorrecto',
                                    footer: ''
                                });
                                email.innerHTML = "";
                            }
                        }

                        function validarContrasenias() {
                            var contra1 = document.getElementById("c1").value;
                            var contra2 = document.getElementById("c2").value;
                            if (contra1 !== contra2) {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error',
                                    text: 'Las contraseñas no coinciden!',
                                    footer: ''
                                })
                                document.getElementById("submit").disabled = true;
                            } else
                            {
                                document.getElementById("submit").disabled = false;
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Datos Completados Correctamente',
                                    showConfirmButton: false,
                                    timer: 1500
                                });

                                
                            }
                        }
                    </script>
                    <input id="submit" type="submit" name="accion" value="Crear" class="btn btn-primary btn-block" disabled="true">
                    <br>
                </form>

                <a href="Controlador?menu=Ingreso" class="btn btn-primary btn-block" >Salir</a>
            </div>
        </div>


        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    </body>
</html>
