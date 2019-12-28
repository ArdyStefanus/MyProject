<%@page contentType="text/html" pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@page language="java"%>
<%@ page isELIgnored="false" %>
<%@page session="true" %>
 <!DOCTYPE html>
    <!-- Change the Locale -->
    <c:set var="language" value="${not empty param.LANG ? param.LANG : not empty language ? language : pageContext.request.locale}" scope="session" />
    <fmt:setLocale value="${language}" />
    <fmt:setBundle basename="manalagi_lang.lang" />

    <html lang="${param.LANG}">
                        <head>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                            <meta name="theme-color" content="#000000">
                            <meta name="mobile-web-app-capable" content="yes">

                            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
                            <!-- Bootstrap core CSS -->
                            <link href="mdb-pro_4.8.10/css/bootstrap.min.css" rel="stylesheet">
                            <!-- Material Design Bootstrap -->
                            <link href="mdb-pro_4.8.10/css/mdb.min.css" rel="stylesheet">
                            <link rel="shortcut icon" href="slider/manalagi_icon.png" type="image/x-icon">
                            <link rel="stylesheet" href="assets/css/header.css">
                        </head>

                        <body>
                            <nav class="navbar navbar-expand-lg navbar-dark green scrolling-navbar fixed-top z-depth-3">
                                <a href="index">
                                    <img src="slider/manalagi_icon.png" width="100" height="50" class="navbar-brand ">
                                </a>
                                <div class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </div>
                                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                                    <div id="nav_text" class="w-100">
                                        <ul class="navbar-nav mr-auto ml-1 border-left">

                                            <li class="nav-item mx-auto">
                                                <a class="nav-link font-weight-bold btn btn-flat btn-lg" href="index">
                                                    <fmt:message key="LANG.HOME" />
                                                </a>
                                            </li>
                                            <li class="nav-item mx-auto">
                                                <div class="btn-group" style="color: #fff;">
                                                    <button class="btn btn-flat btn-lg nav-link font-weight-bold" type="button" data-toggle="dropdown">
                                                        <fmt:message key="LANG.ABOUT"/>
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="aboutUs">
                                                            <fmt:message key="LANG.ABOUT.SUB1" />
                                                        </a>
                                                        <a class="dropdown-item" href="aboutVisiMisi">
                                                            <fmt:message key="LANG.ABOUT.SUB2" /> 
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="nav-item mx-auto">
                                                <div class="btn-group" style="color: #fff;">
                                                    <button class="btn btn-flat btn-lg nav-link font-weight-bold" type="button" data-toggle="dropdown">
                                                        <fmt:message key="LANG.SERVICE"/>
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="BulkCarierr">
                                                            <fmt:message key="LANG.SERVICE.SUB1" />
                                                        </a>
                                                        <a class="dropdown-item" href="BargeCrane.jsp">
                                                            <fmt:message key="LANG.SERVICE.SUB2" /> 
                                                        </a>
                                                        <a class="dropdown-item" href="TugBoat.jsp">
                                                            <fmt:message key="LANG.SERVICE.SUB3" /> 
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
<!--                                            <li class="nav-item mx-auto">
                                                <a class="nav-link font-weight-bold" href="news">
                                                    <fmt:message key="LANG.NEWS" />
                                                </a>
                                            </li>-->
                                            <li class="nav-item mx-auto">
                                                <a class="nav-link font-weight-bold btn btn-flat btn-lg" href="groups">
                                                    <fmt:message key="LANG.GROUPS" />
                                                </a>
                                            </li>
                                            <li class="nav-item mx-auto">
                                                <a class="nav-link font-weight-bold btn btn-flat btn-lg" href="careers">
                                                    <fmt:message key="LANG.CAREERS" />
                                                </a>
                                            </li>
                                            <li class="nav-item mx-auto">
                                                <a class="nav-link font-weight-bold btn btn-flat btn-lg" href="contact">
                                                    <fmt:message key="LANG.CONTACT" />
                                                </a>
                                            </li>
<!--                                            <li class="nav-item mx-auto">
                                                <a class="nav-link font-weight-bold" href="fleet">
                                                    <fmt:message key="LANG.FLEET" />
                                                </a>
                                            </li>-->
                                                    <li class="nav-item mx-auto" style="margin-top: 10px;">

                                                <div class="btn-group text-white">
                                                    <button class="btn green darken-3 btn-sm" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-globe-americas"></i>&nbsp;&nbsp;
                                                        <fmt:message key="LANG.LANG.GLOBE" />
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="?LANG=id">
                                                            <fmt:message key="LANG.LANG.id" />
                                                            <img src="slider/flag idn.png" width="30" height="40">
                                                        </a>
                                                        <a class="dropdown-item" href="?LANG=en">
                                                            <fmt:message key="LANG.LANG.en" /> &nbsp;&nbsp;&nbsp;
                                                            <img src="slider/flag eng.png" width="30" height="40">
                                                        </a>
                                                    </div>
                                                </div>

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>

                            <!-- JQuery -->
                            <script type="text/javascript" src="mdb-pro_4.8.10/js/jquery-3.4.1.min.js"></script>
                            <!-- Bootstrap tooltips -->
                            <script type="text/javascript" src="mdb-pro_4.8.10/js/popper.min.js"></script>
                            <!-- Bootstrap core JavaScript -->
                            <script type="text/javascript" src="mdb-pro_4.8.10/js/bootstrap.min.js"></script>
                            <!-- MDB core JavaScript -->
                            <script type="text/javascript" src="mdb-pro_4.8.10/js/mdb.min.js"></script>
                           

                        </body>

                        </html>