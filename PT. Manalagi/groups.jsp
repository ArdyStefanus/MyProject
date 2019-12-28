<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>
<%@page language="java"%>
<%@include file="header.jsp" %>

<!DOCTYPE html>
<html lang="${param.LANG}">
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/groups.css">
      
        <title>PT PELAYARAN MANA LAGI</title>
    </head>
    
    <body>
        
        <div id="centered" class="animated fadeInUp">
            <p>
                <b><fmt:message key = "LANG.GROUPS_TAG"/></b>
            </p>
        </div>
        <div class="parallax"></div>
        
            <div class="bg-white border-bottom animated fadeInUp">
                <p style="text-align: center; 
                 font-family: sans-serif; font-size: 50px; font-weight: 900;
                     margin-bottom: 20px; margin-top: 20px; color: #2e7d32!important">
                     <fmt:message key = "LANG.GROUPS_JARALLAX"/>
                </p>
            </div>
        
            <div class="form-row">
                
                <div class="col-md-4" style="margin-top: 20px;">
                    <div class="text-center" style="font-size: 14px; font-weight: 900;">
                        CONTAINER CARRIER
                    </div>
                <div class="d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <img class="my-4" id="imgGroup" data-toggle="collapse" alt="PT Salam Pacific Indonesia Lines"  data-target="#123" src="https://www.spil.co.id/images/pt%20salam%20pacific%20indonesia%20lines-1546720957.png">
                        <span class="text-center" style="font-size: 13px;">
                            PT Salam Pacific Indonesia Lines
                        </span>
                    </div>
                </div>
                    
                </div>
                
                <div class="col-md-4" style="margin-top: 20px;">
                     
                    <div class="text-center" style="font-size: 14px; font-weight: 900; ">
                        TERMINAL OPERATOR
                    </div>
                    
                    <div class="row">
                    
                        <div class="col-md-6">

                            <div class="d-flex align-items-center justify-content-center">
                                <div class="d-flex flex-column justify-content-center align-items-center">
                                    <img class="my-4" id="imgGroup" alt="PT Nilam Port Terminal Indonesia" width="140" height="30" src="https://www.spil.co.id/images/pt%20nilam%20port%20terminal%20indonesia-1546721229.png">
                                    <span class="text-center" style="font-size: 13px;">
                                        PT Nilam Port Terminal Indonesia
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">

                            <div class="d-flex align-items-center justify-content-center">
                                <div class="d-flex flex-column justify-content-center align-items-center">
                                    <img class="my-4" id="imgGroup" alt="PT Adipurusa" width="140" height="30" src="https://www.spil.co.id/images/pt%20adipusura-1546721217.png">
                                    <span class="text-center" style="font-size: 13px;">
                                        PT Adipurusa
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
                
                <div class="col-md-4" style="margin-top: 20px;">
                    <div class="text-center" style="font-size: 14px; font-weight: 900;">
                        CAR CARRIER
                    </div>
                    
                    <div class="d-flex align-items-center justify-content-center">
                        <div class="d-flex flex-column justify-content-center align-items-center">
                            <img class="my-4" id="imgGroup" alt="PT NYK-SPIL Indororo" src="https://www.spil.co.id/images/pt%20nyk-spil%20indororo-1546721206.png">
                            <span class="text-center" style="font-size: 13px;">
                                PT NYK-SPIL Indororo
                            </span>
                        </div>
                    </div>
                </div>
                
                </div>
                
        <div class="form-row" style="margin-bottom: 40px;">
                
                <div class="col-md-4" style="margin-top: 40px;">
                    <div class="text-center" style="font-size: 14px; font-weight: 900;">
                        BULK CARRIER
                    </div>
                    
                <div class="d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <img class="my-4" id="imgGroup" alt="PT Pelayaran Manalagi" src="https://www.spil.co.id/images/pt%20pelayaran%20manalagi-1550636029.png">
                        <span class="text-center" style="font-size: 13px;">
                            PT Pelayaran Manalagi
                        </span>
                    </div>
                </div>
                    
                </div>
                
                <div class="col-md-4" style="margin-top: 40px;">
                     
                    <div class="text-center" style="font-size: 14px; font-weight: 900; ">
                        DOCK & SHIPYARD
                    </div>
                    
                    <div class="d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <img class="my-4" id="imgGroup" alt="PT Dok Pantai Lamongan" src="https://www.spil.co.id/images/pt%20dok%20pantai%20lamongan-1546721182.png">
                        <span class="text-center" style="font-size: 13px;">
                            PT Dok Pantai Lamongan
                        </span>
                    </div>
                </div>
                    
                </div>
                
                <div class="col-md-4" style="margin-top: 40px;">
                    <div class="text-center" style="font-size: 14px; font-weight: 900;">
                        LOGISTICS & INTERNATIONAL FREIGHT
                    </div>
                    
                    <div class="d-flex align-items-center justify-content-center">
                        <div class="d-flex flex-column justify-content-center align-items-center">
                            <img class="my-4" id="imgGroup" alt="PT SPIL Toll Indonesia" width="200" height="70" src="https://www.spil.co.id/images/pt%20salam%20pacific%20indonesia%20lines-1546721168.png">
                            <span class="text-center" style="font-size: 13px;">
                                PT SPIL Toll Indonesia
                            </span>
                        </div>
                    </div>
                </div>
                
            </div>
        
    </body>
    
</html>
<%@include file="footer.jsp" %>