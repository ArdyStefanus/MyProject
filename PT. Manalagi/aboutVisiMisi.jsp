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
                            <body class="">
                                <div id="centered">
                                    <p class="animated fadeInUp">
                                        <b><fmt:message key = "LANG.ABOUT_TAG"/></b>
                                    </p>
                                </div>

                                <div class="parallax"></div>

                                <div id="our_story" class="container" style="margin-top: 20px;">

                                    <div class="col-xl-12" style="text-align: center">
                                        <p class="animated fadeInUp slow">
                                            <strong class="font-weight-bold">
                        PT. PELAYARAN MANA LAGI  
                    </strong>
                                            <fmt:message key="LANG.ABOUT_JARALLAX" />
                                            <strong class="font-weight-bold">
                        PT. SALAM PASIFIC INDONESIA LINES
                    </strong>
                                        </p>
                                        <hr>
                                    </div>
                                            
                                            <div class="bg-white border-bottom animated fadeInUp">
                                        <p class="font-weight-bold" style="text-align: center; 
                 font-family: sans-serif; font-size: 50px; 
                     margin-bottom: 10px; margin-top: 80px; color: #2e7d32!important; ">
                                            <fmt:message key="LANG.ABOUT_OUR_MISSION_VISION" />
                                        </p>
                                    </div>
                                    <div class="container row text-center" style="margin-top: 20px; margin-bottom: 40px;">
                                        <div class="col-md w-100 border-right">
                                            <p class="animated fadeInUp slow" style="font-size: 20px; font-weight: 700;
                     margin-left: 30px; color: #2e7d32!important">
                                                <fmt:message key="LANG.ABOUT_VISION" />
                                            </p>
                                            <p class="animated fadeInUp slower justify-content-center">
                                                <fmt:message key="LANG.ABOUT_VISION_TEXT" />
                                            </p>
                                        </div>
                                        <div class="col-md w-100">
                                            <p class="animated fadeInUp slow" style="font-size: 20px; font-weight: 700;
                     margin-right: 30px; color: #2e7d32!important">
                                                <fmt:message key="LANG.ABOUT_MISSION" />
                                            </p>
                                            <p class="animated fadeInUp slower text-left" style="margin-left: 80px;">
                                                <span>
                                                    <fmt:message key="LANG.ABOUT_MISSION_TEXT1" />
                                                </span><br>
                                                <span>
                                                    <fmt:message key="LANG.ABOUT_MISSION_TEXT2" />
                                                </span><br>
                                                <span>
                                                    <fmt:message key="LANG.ABOUT_MISSION_TEXT3" />
                                                </span>
                                                
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </body>
                            </html>
 <%@include file="footer.jsp" %>