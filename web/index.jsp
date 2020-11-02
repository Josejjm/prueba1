
<%-- 
    Document   : Bienvenidos
    Created on : 16/08/2020, 19:13:07
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
        <link
            href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese"
            rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <div class="about">
            <div class="container">
                <div class="w3ls-heading">
                    <h2>Bienvenido</h2>
                </div>
                <div class="w3-about-grids">
                    <div class="col-md-6 w3-about-left">
                        <h5>Hotel del Lago</h5>
                        <p>Es un hotel situado al pie de las sierras de Cordoba con una espectacular vista al Lago. <span>
                                Es un Excelente lugar para relajarse, pasar el tiempo en familia y realizar excursiones guiadas para conocer
                                la cultura de la region.</span></p>

                        <div class="w3l-button">
                            <a href="Controlador?menu=Ingreso" data-toggle="modal" data-target="#myModal">Ingresar</a>
                        </div>
                    </div>
                    <div class="col-md-6 w3-about-right">
                        <div class="about-img-grids">
                            <div class="col-md-7 about-img">
                                <img src="img/f1.jpg" alt=" " />
                            </div>
                            <div class="col-md-5 about-img about-img1">
                                <img src="img/f2.jpg" alt=" " />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="about-img-grids">
                            <div class="col-md-5 about-img about-img1">
                                <img src="img/f4.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 about-img">
                                <img src="img/f3.jpg" alt=" " />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="popular-section-wthree">
            <div class="container">
                <div class="w3ls-heading">
                    <h3>Servicios Populares</h3>
                </div>
                <div class="popular-agileinfo">
                    <div class="col-md-3 popular-grid">
                        <i class="fa fa-book" aria-hidden="true"></i>
                        <h4>Restaurante</h4>
                        <p>A la hora de desayunar, almorzar o cenar contamos con las mejores delicias con platos regionales.</p>
                    </div>
                    <div class="col-md-3 popular-grid">
                        <i class="fa fa-anchor" aria-hidden="true"></i>
                        <h4>Excursiones</h4>
                        <p>Diversas excursiones tienen punto de salida desde el hotel y con las mejores recomendaciones</p>
                    </div>
                    <div class="col-md-3 popular-grid popular-grid-bottom">
                        <i class="fa fa-bell" aria-hidden="true"></i>

                        <h4>Room Service</h4>
                        <p>Servicio a la habitacion de alimentos, bebidas, ropa blanca, entre otros.</p>
                    </div>
                    <div class="col-md-3 popular-grid">
                        <i class="fa fa-car" aria-hidden="true"></i>
                        <h4>Estacionamiento</h4>
                        <p>Estacionamiento Privado. Abierto las 24Hs con seguridad permanente.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="w3-agile-footer">
            <div class="container">
                <div class="footer-grids">
                    <div class="col-md-3 footer-grid">
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
                    <div class="col-md-3 footer-grid" style="float: center">
                        <div class="footer-grid-heading">
                            <h4>Escribenos Ahora</h4>
                        </div>
                        <a href="https://api.whatsapp.com/send?phone=5493513528111&text=Quiero%20más%20información,%20por%20favor." target="_blank"> 
                            <img src="http://s2.accesoperu.com/logos/btn_whatsapp.png" alt="" style="width: 50px;height: 50px;margin-left: 80px;margin-top: 30px"> </a>
                    </div>
                    <div class="col-md-3 footer-grid" style="float: right">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1688.1545697749063!2d-64.44712311082115!3d-32.195899666643484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sar!4v1604340155839!5m2!1ses-419!2sar" width="300" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <br>
            <br>
            <p style="color: lightgrey;text-align: center"><b>Diseñada por Martinez-Tardivo</b></p>
        </div>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
    </body>
</html>
