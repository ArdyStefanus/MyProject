<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
            <%@ page isELIgnored="false" %>
                <%@ page session="true" %>
                    <%@include file="header.jsp" %>

                        <html lang="${param.LANG}">

                        <head>

                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <link rel="stylesheet" href="assets/css/contact.css">

                            <title>PT PELAYARAN MANA LAGI</title>

                        </head>

                        <body>

                            <div id="centered">
                                <p class="animated fadeInUp">
                                    <b><fmt:message key = "LANG.CONTACT_TAG"/></b>
                                </p>
                            </div>

                            <div class="parallax"></div>

                            <div class="pt-4 z-depth-1 pb-4">

                                <div class="col">

                                    <div class="row">

                                        <div class="col-sm-12 text-center animated fadeInUp slow">

                                            <button type="button" class="btn btn-danger btn-rounded">
                                                <fmt:message key="LANG.CONTACT_CALL" />&nbsp;
                                                <i class="fas fa-phone"></i> &nbsp; 031-3533989
                                            </button>

                                            <button type="button" class="btn btn-danger btn-rounded">
                                                <fmt:message key="LANG.CONTACT_FAX" />&nbsp;
                                                <i class="fas fa-fax"></i> &nbsp; 031-3532793
                                            </button>

                                        </div>

                                    </div>

                                </div>

                            </div>
                                              
                            <!--Section: Contact v.2-->

                            <div class="container" style="margin-bottom: 60px;">

                                <section class="section">

                                    <!--Section heading-->
                                    <div class="text-center font-weight-bold font-size-22 mt-5 mb-5" style="color: #2e7d32!important">
                                        <fmt:message key="LANG.CONTACT_FIND_US" />
                                    </div>

                                    <div class="card" style="margin-bottom: 60px;">

                                        <div class="card-body">

                                            <!--Google map-->
                                            <div id="map-container-google-12" class="z-depth-1-half map-container-7" style="height: 200px">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31664.515465326687!2d112.7257146811856!3d-7.2334915104048765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7f8bb8a001ba1%3A0xe4a08865ac13d4d5!2sPt%20Pelayaran%20Mana%20Lagi!5e0!3m2!1sen!2sid!4v1571281773275!5m2!1sen!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                                            </div>
                                            
                                        </div>

                                    </div>

                                </section>
                                    
                                    <div class="row">
                                        <div class="col-md-8">
                                            <section class="mb-6">

                                                <div class="text-center font-weight-bold font-size-22 mt-5 mb-5" style="color: #2e7d32!important">
                                                    <fmt:message key="LANG.CONTACT_QUESTION" />
                                                </div>

                                                <form id="contact-form" name="contact-form" method="POST" action="process/procesSentEmail.jsp">

                                                    <div class="row">

                                                        
                                                        <div class="col-md-6 mb-4">

                                                            <div class="md-form">
                                                                <input type="text" id="contact-email" name="contact_email" class="form-control">
                                                                <label for="contact_email" class="">
                                                                    <fmt:message key="LANG.CONTACT_EMAIL" />
                                                                </label>
                                                            </div>

                                                            <div class="md-form">
                                                                <input type="text" id="contact-Subject" name="contact_subject" class="form-control">
                                                                <label for="contact_subject" class="">
                                                                    <fmt:message key="LANG.CONTACT_SUBJECT" />
                                                                </label>
                                                            </div>

                                                        </div>

                                                        
                                                        <div class="col-md-6 mb-4">
                                                            <div class="md-form primary-textarea">
                                                                <textarea id="contact-message" name="contact_message" class="md-textarea form-control mb-0" rows="5" style="padding-bottom: 1.2rem;"></textarea>
                                                                <label for="contact_message">
                                                                    <fmt:message key="LANG.CONTACT_MESSAGE" />
                                                                </label>
                                                            </div>
                                                        </div>
                                                       
                                                        <div class="col-md-12">
                                                            <div class="text-center">
                                                                <a class="btn btn-danger btn-rounded" onclick="document.getElementById('contact-form').submit();">
                                                                    <fmt:message key="LANG.CONTACT_SEND_MESSAGE" />
                                                                </a>
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                </form>

                                            </section>
                                        </div>
                                        
                                        <div class="col-md-4">
                                            <div class="row" style="margin-left: 20px;">
                                                <div class="text-center font-weight-bold font-size-22 mt-5 mb-3" style="color: #2e7d32!important">
                                                    <fmt:message key="LANG.CONTACT_HEAD" />
                                                </div>
                                                <div class="black-text">
                                                    <span>Jl. Karet No. 104 Surabaya - 60161 Indonesia</span><br>
                                                    <span>
                                                        <strong>
                                                            Telp :
                                                        </strong>
                                                        031-3533989
                                                    </span><br>
                                                    <span>
                                                        <strong>
                                                            Fax :
                                                        </strong>
                                                        031-3532793 / 3573184
                                                    </span><br>
                                                    <span>
                                                        <strong>
                                                            Email :
                                                        </strong>
                                                        salamps@spil.co.id
                                                    </span>
                                                </div>
                                            </div>
                                               
                                            <div class="row" style="margin-left: 20px;">
                                                <div class="text-center font-weight-bold font-size-22 mt-5 mb-3" style="color: #2e7d32!important">
                                                    <fmt:message key="LANG.CONTACT_COMMERSIAL" />
                                                </div>
                                                <div class="black-text">
                                                    <span>Jl. Kalianak No. 51 F Surabaya 60183, Indonesia</span><br>
                                                    <span>
                                                        <strong>
                                                            Telp :
                                                        </strong>
                                                        031-7497035
                                                    </span><br>
                                                    <span>
                                                        <strong>
                                                            Fax :
                                                        </strong>
                                                        031-7497270
                                                    </span><br>
                                                    <span>
                                                        <strong>
                                                            Email :
                                                        </strong>
                                                        general@manalagi.co.id
                                                    </span>
                                                </div>
                                            </div>
                                                
                                        </div>
                                    </div>
                            </div>

                        </body>

                        </html>
                        <%@include file="footer.jsp" %>