<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
            <%@ page isELIgnored="false" %>
                <%@ page session="true" %>
                    <%@page language="java" %>
                        <%@include file="header.jsp" %>

                            <!DOCTYPE html>
                            <html lang="${param.LANG}">

                            <head>

                                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                <link rel="stylesheet" href="assets/css/services.css">

                                <title>PT PELAYARAN MANA LAGI</title>

                            </head>

                            <body>

                                <div id="centered" class="animated fadeInUp">
                                    <p>
                                        <b><fmt:message key = "LANG.SERVICE_TAG"/></b>
                                    </p>
                                </div>

                                <div class="parallax"></div>

                                <div id="our_story" class="container" style="margin-top: 20px;">

                                    <div class="col-xl-12" style="text-align: center">
                                        <p style="text-transform: uppercase">
                                            <fmt:message key="LANG.SERVICE_JARALLAX" />
                                            <br>
                                            <strong class="font-weight-bold">
                            <fmt:message key = "LANG.SERVICE_JARALLAX2"/>
                        </strong

                    </p>
                    <hr>
                </div>

                <div class="container bg-white ">

                    <div class="row justify-content-md-center">
                        <div class="col col-lg-3 animated bounceInLeft slower">
                            <img src="assets/Screenshot/coal.png" alt="Responsive image" width="auto" height="80" style="
                            margin-top: 50px; margin-left: -60px;">
                        </div>

                        <div class="col col-lg-6 animated bounceInUp slow">
                            <p class="text-justify font-weight-bold" style="font-size: 16px; margin-top: 20px;">
                                mySPIL is an e-commerce platform specifically designed by 
                                PT Salam Pacific Indonesia Lines (SPIL) to provide simple and friendly online
                                services for the customers. First launched in 2017, mySPIL has become the first
                                e-commerce platform in Indonesian shipping industry.
                            </p>
                        </div>
                    </div>

                    <div class="row justify-content-md-center">
                        <div class="col col-lg-3 animated bounceInLeft slower">
                            <img src="assets/Screenshot/coal.png" alt="Responsive image" width="auto" height="80" style="
                            margin-top: 50px; margin-left: -60px;">
                        </div>

                        <div class="col col-lg-6 animated bounceInUp slow">
                            <p class="text-justify font-weight-bold" style="font-size: 16px; margin-top: 20px;">
                                mySPIL is an e-commerce platform specifically designed by 
                                PT Salam Pacific Indonesia Lines (SPIL) to provide simple and friendly online
                                services for the customers. First launched in 2017, mySPIL has become the first
                                e-commerce platform in Indonesian shipping industry.
                            </p>
                        </div>
                    </div>

                    <div class="row justify-content-md-center" style="margin-bottom: 40px;">
                        <div class="col col-lg-3 animated bounceInLeft slower">
                            <img src="assets/Screenshot/coal.png" alt="Responsive image" width="auto" height="80" style="
                            margin-top: 50px; margin-left: -60px;">
                        </div>

                        <div class="col col-lg-6 animated bounceInUp slow">
                            <p class="text-justify font-weight-bold" style="font-size: 16px; margin-top: 20px;">
                                mySPIL is an e-commerce platform specifically designed by 
                                PT Salam Pacific Indonesia Lines (SPIL) to provide simple and friendly online
                                services for the customers. First launched in 2017, mySPIL has become the first
                                e-commerce platform in Indonesian shipping industry.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
<%@include file="footer.jsp" %>