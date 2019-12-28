<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
            <%@page language="java"%>
                <%@ page isELIgnored="false" %>
                    <%@ page session="true" %>
                        <%@include file="header.jsp" %>

                            <!DOCTYPE html>
                            <html lang="${param.LANG}">

                            <head>

                                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                <link rel="stylesheet" href="assets/css/about.css">
                                <link rel="icon" href="slider/manalagi_icon.png">
                                <title>PT PELAYARAN MANA LAGI</title>

                            </head>

                            <body class="green lighten-1">

                                <div id="centered">
                                    <p class="animated fadeInUp">
                                        <b><fmt:message key = "LANG.ABOUT_TAG"/></b>
                                    </p>
                                </div>

                                <div class="parallax"></div>

                                <div id="our_story" class="container" style="margin-top: 20px;">

                                    <div class="col-xl-12 text-white" style="text-align: center">
                                        <p class="animated fadeInUp slow">
                                            <strong class="font-weight-bold">
                        PT. PELAYARAN MANA LAGI  
                    </strong>
                                            <fmt:message key="LANG.ABOUT_JARALLAX" />
                                            <strong class="font-weight-bold">
                        PT. SALAM PASIFIC INDONESIA LINES
                    </strong>
                                            <fmt:message key="LANG.ABOUT_JARALLAX1" />
                                        </p>
                                        <hr>
                                    </div>

                                    <div class="d-flex flex-column flex-md-row justify-content-center align-items-center py-4 py-md-5 container">
                                        <span class="text-center font-weight-bold mb-3 mb-md-0 mr-md-5" style="color: #fff!important; font-size: 50px;">
                                        <div class="animated fadeInUp slower" style="animation-fill-mode: both; animation-duration: 1000ms; animation-delay: 0ms; animation-iteration-count: 1; opacity: 1;">
                                            <fmt:message key = "LANG.ABOUT_OUR_JOURNEY"/>
                                        </div>
                                    </span>
                                    </div>

                                    <!--Carousel Wrapper-->
                                    <div id="video-carousel-example2" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">

                                        <!--Slides-->
                                        <div class="carousel-inner" role="listbox">
                                            <!-- First slide -->
                                            <div class="carousel-item active">
                                                <!--Mask color-->
                                                <div class="view">
                                                    <!--Video source-->
                                                    <video class="video-fluid" autoplay loop muted>
                                                        <source src="https://mdbootstrap.com/img/video/Lines.mp4" type="video/mp4" />
                                                    </video>
                                                    <div class="mask rgba-black-strong"></div>
                                                </div>

                                                <!--Caption-->
                                                <div class="carousel-caption">
                                                    <div class="animated fadeInUp">
                                                        <h3 class="h1-responsive font-weight-bold">1998</h3>
                                                        <p class="font-weight-bold">
                                                            <fmt:message key="LANG.ABOUT_VIDEO_1" />
                                                        </p>
                                                    </div>
                                                </div>
                                                <!--Caption-->
                                            </div>
                                            <!-- /.First slide -->

                                            <!-- Second slide -->
                                            <div class="carousel-item">
                                                <!--Mask color-->
                                                <div class="view">
                                                    <!--Video source-->
                                                    <video class="video-fluid" autoplay loop muted>
                                                        <source src="https://mdbootstrap.com/img/video/animation-intro.mp4" type="video/mp4" />
                                                    </video>
                                                    <div class="mask rgba-black-strong"></div>
                                                </div>

                                                <!--Caption-->
                                                <div class="carousel-caption">
                                                    <div class="animated fadeInDown">
                                                        <h3 class="h1-responsive font-weight-bold">2016</h3>
                                                        <p class="font-weight-bold">
                                                            <fmt:message key="LANG.ABOUT_VIDEO_2" />
                                                        </p>
                                                    </div>
                                                </div>
                                                <!--Caption-->
                                            </div>
                                            <!-- /.Second slide -->
                                            
                                            <div class="carousel-item">
                                                <!--Mask color-->
                                                <div class="view">
                                                    <!--Video source-->
                                                    <video class="video-fluid" autoplay loop muted>
                                                        <source src="https://mdbootstrap.com/img/video/Lines.mp4" type="video/mp4" />
                                                    </video>
                                                    <div class="mask rgba-black-strong"></div>
                                                </div>

                                                <!--Caption-->
                                                <div class="carousel-caption">
                                                    <div class="animated fadeInDown">
                                                        <h3 class="h1-responsive font-weight-bold">2019</h3>
                                                        <p class="font-weight-bold">
                                                            <fmt:message key="LANG.ABOUT_VIDEO_3" />
                                                        </p>
                                                    </div>
                                                </div>
                                                <!--Caption-->
                                            </div>
                                                        
                                            <div class="carousel-item">
                                                <!--Mask color-->
                                                <div class="view">
                                                    <!--Video source-->
                                                    <video class="video-fluid" autoplay loop muted>
                                                        <source src="https://mdbootstrap.com/img/video/animation-intro.mp4" type="video/mp4" />
                                                    </video>
                                                    <div class="mask rgba-black-strong"></div>
                                                </div>

                                                <!--Caption-->
                                                <div class="carousel-caption">
                                                    <div class="animated fadeInDown">
<!--                                                        <h3 class="h1-responsive font-weight-bold">Saat ini</h3>-->
                                                        <p class="font-weight-bold">
                                                            <fmt:message key="LANG.ABOUT_VIDEO_4" />
                                                        </p>
                                                    </div>
                                                </div>
                                                <!--Caption-->
                                            </div>
                                            
                                        </div>
                                        <!--/.Slides-->

                                        <!--/.Controls-->
                                        <ol class="carousel-indicators">
                                            <li data-target="#video-carousel-example2" data-slide-to="0" class="active">
                                                <img src="https://mdbootstrap.com/img/Photos/Others/Carousel-thumbs/img%20(88).jpg" width="100">
                                            </li>
                                            <li data-target="#video-carousel-example2" data-slide-to="1">
                                                <img src="https://mdbootstrap.com/img/Photos/Others/Carousel-thumbs/img%20(121).jpg" width="100">
                                            </li>
                                            <li data-target="#video-carousel-example2" data-slide-to="2">
                                                <img src="https://mdbootstrap.com/img/Photos/Others/Carousel-thumbs/img%20(88).jpg" width="100">
                                            </li>
                                            <li data-target="#video-carousel-example2" data-slide-to="3">
                                                <img src="https://mdbootstrap.com/img/Photos/Others/Carousel-thumbs/img%20(88).jpg" width="100">
                                            </li>
                                        </ol>

                                    </div>
                                    <!--Carousel Wrapper-->
                                </div>
                            </body>

                            </html>

                            <%@include file="footer.jsp" %>