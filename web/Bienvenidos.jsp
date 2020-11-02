
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Ingreso</title>
        <style>
            body {
                background-image: url('https://q-xx.bstatic.com/xdata/images/hotel/840x460/116156669.jpg?k=099c4cc2ed0326411f8259823d588643f15f9b89cca0fa4ebf82f14d424f443f&o=');
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
        <div class="col-md-3 footer-grid">
            <img src="img/logo.png" alt=""/>
        </div>
        <div id="container">
            <div class="container mt-4 col-lg-4" style="background-color: #0096ff">
                <div class="card">
                    <div class="card-body">
                        <form class="form-sing" action="Login" method="POST">
                            <div class="form-group text-center">
                                <h3>Entrar</h3>
                                <img src="img/login.png" alt="70" width="170"/>
                            </div>

                            <div class="form-group">
                                <label>Usuario</label>
                                <input type="text" name="user" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Clave</label>
                                <input type="password" name="pass" class="form-control">
                            </div>

                            <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block" href="Controlador?menu=Habitaciones&accion=Listar" target="iframe" >
                            <br>
                            <input type="submit" name="accion" value="Visitante" class="btn btn-primary btn-block">
                            <br>
                        </form>
                        <a href="Controlador?menu=Registro&accion=Registrar" class="btn btn-primary btn-block" >Crear Cuenta</a>
                        <br>
                    </div>
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
    </body>
</html>
