<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
            <%@page language="java"%>
                <%@ page isELIgnored="false" %>
                    <%@page session="true" %>

                        <!DOCTYPE html>

                        <html lang="${param.LANG}">

                        <head>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <link rel="stylesheet" href="assets/css/footer.css">
                        </head>

                        <body>

                            <div class="position-relative green darken-4 text-white pt-3 pb-5 py-md-3 z-depth-5">

                                <!-- Mobile -->
                                <div class="d-md-none">

                                    <div class="justify-content-center align-items-center d-flex">

                                        <i class="fas fa-phone mr-2" style="font-size: 22px;"></i>

                                        <div class="d-flex flex-column flex-md-row 
                         justify-content-center align-items-start 
                         align-items-md-center">

                                            <a href="tel:0313533989" class="font-size-11 
                           font-size-md-12 d-flex flex-wrap text-white">

                                                <span class="flex-shrink mr-2">
                                <fmt:message key = "LANG.FOOTER_CALL"/>
                            </span>

                                                <span class="flex-shrink">
                                <b>031 – 3533989</b>
                            </span>

                                            </a>

                                            <div class="mx-2 d-none d-md-flex position-relative layout-footer__divider"></div>
                                            <a href="https://wa.me/62811333799" class="font-size-11 font-size-md-12 d-flex flex-wrap text-white">
                                                <span class="flex-shrink mr-2">
                                WA
                            </span>
                                                <span class="flex-shrink">
                                <b>081-133-3799</b>
                            </span>
                                            </a>
                                        </div>
                                        <a aria-label="instagram icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.instagram.com/ptspil/">
                                            <i class="fab fa-instagram" style="font-size: 22px;"></i>
                                        </a>
                                        <a aria-label="facebook icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.facebook.com/ptspil/">
                                            <i class="fab fa-facebook-square" style="font-size: 22px;"></i>
                                        </a>
                                        <a aria-label="linkedin icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.linkedin.com/company/pt-salam-pacific-indonesia-lines/">
                                            <i class="fab fa-linkedin" style="font-size: 22px;"></i>
                                        </a>
                                    </div>

                                    <hr class="border-white my-3">

                                </div>

                                <!-- Desktop -->
                                <div class="px-3 text-center text-md-left d-md-flex justify-content-md-between align-items-md-center">

                                    <a class="btn btn-link text-white" type="button" aria-haspopup="true" aria-expanded="false" href="assets/Download/Company Profile PT Manalagi.pdf" download>
                                        <i class="fas fa-file-download"></i>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <fmt:message key="LANG.FOOTER_DOWNLOAD" />
                                    </a>

                                    <div class="mr-md-3 font-size-10"></div>
                                    <div class="justify-content-center align-items-center d-none d-md-flex flex-shrink">
                                        <i class="fas fa-mobile-alt" style="font-size: 22px;"></i>
                                        <div class="d-flex flex-column flex-md-row justify-content-center align-items-start align-items-md-center">
                                            <a href="tel:0313533989" class="font-size-11 font-size-md-12 d-flex flex-wrap text-white">
                                                <span class="flex-shrink mr-2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key = "LANG.FOOTER_CALL"/>
                                </span>
                                                <span class="flex-shrink">
                                    <b>031 – 3533989</b>
                                </span>
                                            </a>
                                            <div class="mx-2 d-none d-md-flex position-relative layout-footer__divider"></div>
                                            <a href="https://wa.me/62811333799" class="font-size-11 font-size-md-12 d-flex flex-wrap text-white">
                                                <span class="flex-shrink mr-2">
                                    WA
                                </span>
                                                <span class="flex-shrink">
                                    <b>081-133-3799</b>
                                </span>
                                            </a>
                                        </div>

                                        <a aria-label="instagram icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.instagram.com/ptspil/">
                                            <i class="font-size-22 fab fa-instagram"></i>
                                        </a>
                                        <a aria-label="facebook icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.facebook.com/ptspil/">
                                            <i class="font-size-22 fab fa-facebook"></i>
                                        </a>
                                        <a aria-label="linkedin icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.linkedin.com/company/pt-salam-pacific-indonesia-lines/">
                                            <i class="font-size-23 fab fa-linkedin"></i>
                                        </a>
                                    </div>
                                </div>

                            </div>

                        </body>

                        </html>