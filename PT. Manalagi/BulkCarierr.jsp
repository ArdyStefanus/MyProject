<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
            <%@ page isELIgnored="false" %>
                <%@ page session="true" %>
                    <%@include file="header.jsp" %>

                        <!DOCTYPE html>
                        <html lang="${param.LANG}">

                        <head>

                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <link rel="stylesheet" href="assets/css/fleet.css">
                             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                            <title>PT PELAYARAN MANA LAGI</title>
                                
                        </head>

                        <body>

                            <div id="centered">
                                <p class="animated fadeInUp">
                                    <b><fmt:message key = "LANG.FLEET_TAG"/></b>
                                </p>
                            </div>

                            <div class="parallax"></div>

                            <div class="bg-white border-bottom animated fadeInUp  z-depth-5">
                                <p style="text-align: center; 
             font-family: sans-serif; font-size: 40px; font-weight: 900;
                 margin-bottom: 20px; margin-top: 10px; color: #2e7d32!important">
                                    <fmt:message key="LANG.FLEET_JARALLAX1" />
                                </p>
                            </div>  
                                <div class="fleet-ship">
                                    <div class="fleet-name">
                                        <div class="" style="margin-left: 80px;">
                                            <div class="row">
                                                <p class="text-uppercase font-weight-bold font-size-22" style="margin-top: 50px;">SUPRAMAX</p>
                                            </div>
                                            <div class="row">
                                                <button href="#" class="text-uppercase font-weight-bold text-dark active btn btn-flat btn-lg hita" onclick="show('text-hita');" style="margin-top: 10px;">MV. HITA</button>
                                            </div>
                                            <div class="row">
                                                <button href="#" class="text-uppercase font-weight-bold text-dark btn btn-flat btn-lg wanda" onclick="show('text-wanda');" style="margin-top: 15px;">MV. WANDA</button>
                                            </div>
                                            <div class="row">
                                                <button  href="#" class="text-uppercase font-weight-bold text-dark btn btn-flat btn-lg tisya" onclick="show('text-tisya');" style="margin-top: 15px;">MV. TISYA</button>
                                            </div>
                                            <div class="row">
                                                <button  href="#" class="text-uppercase font-weight-bold text-dark btn btn-flat btn-lg samba" onclick="show('text-samba');" style="margin-top:15px;">MV. SAMBA</button >
                                            </div><hr>
                                            <div class="row">
                                                <p class="text-uppercase font-weight-bold text-white font-size-22 " style="margin-top: 15px;" >HANDYSIZE</p>
                                            </div>
                                            <div class="row">
                                                <button  href="#" class="text-uppercase font-weight-bold text-dark btn btn-flat btn-lg yasa" onclick="show('text-yasa');" style="margin-top: 10px;" >MV. YASA</button >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fleet-text " id="text-hita">
                                            <span class="font-size-26 px-3 font-weight-bold mb-2">
                                                 MANALAGI HITA<br>
                                             </span>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Flags :</strong> Indonesia / Jakarta
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Class :</strong> NK
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Gear &nbsp;:</strong> 30T X 4 Cranes
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>DWT / DRAFT :</strong> Summer 52,454 MT / 12,022 MTR
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>LOA / Breadth / Depth (Moulded) :</strong> 189.99 M / 32.26 M / 17 M
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Built :</strong> August 2005 - Tsuneishi Corporation Japan
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Type :</strong> Single Deck Bulk Carrier
                                             </span>
                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Grab :</strong> 12 Cubic Meter X 4 sets remote control
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>GRT / NRT :</strong> International 30,046 MT / 18,207 MT
                                             </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                 <strong>Holds / Hatches :</strong> 5 / 5 type folding
                                             </span>
                                         </div>
                                        
                                        <div class="fleet-text" id="text-samba">
                                        <span class=" font-size-22 px-3 font-weight-bold mb-2">
                                            MANALAGI SAMBA
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Flags :</strong> Indonesia / Surabaya
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Class :</strong> NK
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Gear &nbsp;:</strong> 30T X 4 Cranes
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>DWT / DRAFT :</strong> Summer 52,447 MT / 12,022 MTR
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>LOA / Breadth / Depth (Moulded) :</strong> 189.99 M / 32.26 M / 17 M
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Built :</strong> February 2003 ? Tsuneishi, Philippines
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Type :</strong> Single Deck Bulk Carrier
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Grab :</strong> 12 Cubic Meter X 4 sets remote control
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>GRT / NRT :</strong> International 30,011 MT / 17,843 MT
                                            </span>
                                                                 <br>
                                                                 <span class="font-size-md-18 px-3">
                                                <strong>Holds / Hatches :</strong> 5 / 5 type folding
                                            </span>
                                                                     
                                        </div>
                                        
                                        <div class="fleet-text" id="text-tisya">
                                        
                                        <span class=" font-size-22 px-3 font-weight-bold mb-2">
                                            MANALAGI TISYA
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Flags :</strong> Indonesia / Surabaya
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Class :</strong> KR
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Gear &nbsp;:</strong> 30T X 4 Cranes
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>DWT / DRAFT :</strong> Summer 52,202 MT / 12,016 MTR
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>LOA / Breadth / Depth (Moulded) :</strong> 191.56 M / 32.26 M / 17 M
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Built :</strong> January 2003 ? Hyundai, MIPO
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Type :</strong> Single Deck Bulk Carrier
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Grab :</strong> 12 Cubic Meter X 4 sets remote control
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>GRT / NRT :</strong> International 30,374 MT / 18,290 MT
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Holds / Hatches :</strong> 5 / 5 type folding
                                            </span>
                                            
                                        </div>
                                        
                                        <div class="fleet-text" id="text-wanda">
                                        <span class=" font-size-22 px-3 font-weight-bold mb-2">
                                            MANALAGI WANDA
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Flags :</strong> Indonesia / Jakarta
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Class :</strong> NK
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Gear &nbsp;:</strong> 30T X 4 Cranes
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>DWT / DRAFT :</strong> Summer 53,348.5 MT / 12.490 MTR
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>LOA / Breadth / Depth (Moulded) :</strong> 189.99 M / 32.26 M / 17.2 M
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Built :</strong> Juni 2008 ? Dayang, China
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Type :</strong> Single Deck Bulk Carrier
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Grab :</strong> 12 Cubic Meter X 4 sets remote control
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>GRT / NRT :</strong> International 31,144 MT / 18,571 MT
                                            </span>
                                                                <br>
                                                                <span class="font-size-md-18 px-3">
                                                <strong>Holds / Hatches :</strong> 5 / 5 type folding
                                            </span>
                                        </div>
                                        <div class="fleet-text" id="text-yasa">          
                                            <span class=" font-size-22 px-3 font-weight-bold mb-2">
                                                MANALAGI YASA
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Flags :</strong> Indonesia / Surabaya
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Class :</strong> NK
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Gear &nbsp;:</strong> 30T X 4 Cranes
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>DWT / DRAFT :</strong> Summer 34,655.90 MT / 10,650 MTR
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>LOA / Breadth / Depth (Moulded) :</strong> 179.28 M / 28 M / 15.20 M
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Built :</strong> May 2002 - Tianjin Xingang Shipyard
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Type :</strong> Handymax Bulk Carriers
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Grab :</strong> 15 Cubic Meter x 4 sets remote control
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>GRT / NRT :</strong> International 22,022 MT / 11,132 MT
                                                </span>
                                                                    <br>
                                                                    <span class="font-size-md-18 px-3">
                                                    <strong>Holds / Hatches :</strong> 5 / 5 type folding
                                                </span>
                                            </div>
                                    <img src="slider/MANALAGI HITA.JPG" width="100%" height="100%" id="change-image">
                                </div>
                        </body>
                        
                        <script type="text/javascript">
                            jQuery(document).ready(function($){

                            $('.hita').on({
                                 'click': function(){
                                     $('#change-image').attr('src','slider/MANALAGI HITA.JPG');
                                     
                                 }
                             });

                            $('.wanda').on({
                                 'click': function(){
                                     $('#change-image').attr('src','slider/MANALAGI WANDA.jpeg');
                                 }
                             });

                            $('.tisya').on({
                                 'click': function(){
                                     $('#change-image').attr('src','slider/MANALAGI TISYA.JPG');
                                 }
                             });

                            $('.samba').on({
                                 'click': function(){
                                     $('#change-image').attr('src','slider/MANALAGI SAMBA.jpeg');
                                 }
                             });
                            $('.yasa').on({
                               'click': function(){
                                   $('#change-image').attr('src','slider/MANALAGI YASA.jpeg');
                               }
                           });
                            });                      
                        </script>
                        
                        <script type="text/javascript">
                            
                            function show(elementId) { 
                                document.getElementById("text-hita").style.display="none";
                                document.getElementById("text-samba").style.display="none";
                                document.getElementById("text-wanda").style.display="none";
                                document.getElementById("text-tisya").style.display="none";
                                document.getElementById("text-yasa").style.display="none";
                                document.getElementById(elementId).style.display="block";
                           }
                        </script>

                        </html>
                        <%@include file="footer.jsp" %>