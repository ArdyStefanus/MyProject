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
                            <link rel="stylesheet" href="assets/css/careers.css">

                            <title>PT PELAYARAN MANA LAGI</title>

                        </head>

                        <body>

                            <noscript>You need to enable JavaScript to run this app.</noscript>

                            <div id="centered">
                                <p class="animated fadeInUp slow" style="text-align: center;">
                                    <b><fmt:message key = "LANG.CAREERS_TAG1"/></b>
                                </p>

                                <p class="text-center animated fadeInUp delay-2s" style="font-size: 24px!important; text-align: center;">
                                    <b><fmt:message key = "LANG.CAREERS_TAG2"/></b>
                                </p>
                            </div>

                            <div class="parallax"></div>

                            <div class="container bg-white text-center ">

                                <div class="row">

                                    <div class="col-md-6">
                                        <button class="btn btn-danger btn-rounded" type="button" data-toggle="collapse" data-target="#accordionEx" aria-expanded="false" aria-controls="accordionEx">
                                            PROFESSIONAL CAREERS
                                        </button>
                                    </div>

                                    <div class="col-md-6">
                                        <button class="btn btn-danger btn-rounded" type="button" data-toggle="collapse" data-target="#accordionEx2" aria-expanded="false" aria-controls="accordionEx2">
                                            SEAMAN OPPORTUNITIES
                                        </button>
                                    </div>
                                </div>

                            </div>

                            <!--Accordion wrapper-->
                            <div class=" container accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

                                <!-- Accordion card -->
                                <div class="card">

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="headingOne1">
                                        <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
                                            <h5 class="mb-0" style="color: #232f34;">
                  <strong class="font-small">HVE &amp; WORKSHOP MECHANIC</strong>
                  <p class="job-add-info">
                      <i class="fas fa-users"></i>
                      <span class="job-level font-small">WORKER</span>
                      <i class="fas fa-map-marker-alt font-small"></i>
                      <span class="job-location font-small">SELURUH INDONESIA</span>
                      <i class="far fa-clock"></i>
                      <span class="job-time font-small">FULL TIME</span>
                  </p>
              </h5>
                                        </a>
                                    </div>
                                </div>

                                <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1" data-parent="#accordionEx">

                                    <div class="card">
                                        <div class="card-body">
                                            <p>
                                                <strong>Level :</strong>
                                                <span id="level">Worker</span>
                                            </p>

                                            <p>
                                                <strong>Education :</strong>
                                                <span id="education">D3 / D4 Jurusan Teknik Otomasi / Teknik Elektro / Teknik Kelistrikan Kapal / Teknik Mekantronika / Teknik Permesinan Kapal </span>
                                            </p>

                                            <p>
                                                <strong>Experience :</strong>
                                                <span id="experience">Fresh Graduate
                        </span>
                                            </p>

                                            <strong>About the Job</strong>
                                            <p id="description">
                                                - Melakukan pengecheckan rutin kondisi setiap unit alatb erat.
                                                <br>- Menyiapkan spare parts alat berat untuk maintenance
                                                <br>- Troubleshooting electrica
                                                <br>- Maintenance dan memperbaiki unit alat berat
                                                <br>- Membuat laporan kondisi alat berat ke atasan
                                                <br>- Menentukan kebutuhan spare part repair
                                                <br>
                                            </p>

                                            <strong>Minimum Qualification</strong>
                                            <p id="min-qualification">- Minimal pendidikan D3 / D4
                                                <br>- IPK min 2.9 / 4.0
                                                <br>- Jurusan Teknik Otomasi / Teknik Elektro / Teknik Kelistrikan Kapal / Teknik Mekantronika / Teknik Permesinan Kapal
                                                <br>- Fresh Graduate atau berpengalaman dipersilahkan melamar
                                                <br>- Loyalitas tinggi
                                                <br>- Memiliki komunikasi yang baik, jiwa kepemimpinan dan kemampuan presentasi
                                                <br>- Mampu bekerja dalam shift
                                                <br>- Memiliki kemampuan basic electrical, diagnostic engine, kalibrasi transmisi, menentukan kebutuhan spare part repair, trouble shooting electrica, trouble shooting mesin kapal
                                                <br>
                                            </p>
                                            <hr>
                                            <h6>Is this position suitable with you? Get ready and 
                        <button type="button" class="btn btn-outline-danger btn-rounded waves-effect" onclick="apply_job_pro()">
                            Apply Now
                            <script>
                                function apply_job_pro()
                                {
                                    window.location.href = 'form_apply_pro';
                                }
                            </script>
                        </button>
                    </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Accordion wrapper -->

                            <!--Accordion wrapper-->
                            <div class=" container accordion md-accordion" id="accordionEx2" role="tablist" aria-multiselectable="true">

                                <!-- Accordion card -->
                                <div class="card">

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="headingOne2">
                                        <a data-toggle="collapse" data-parent="#accordionEx2" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
                                            <h5 class="mb-0" style="color: #232f34;">
                  <strong class="font-small">JURU MASAK II</strong>
                  <p class="job-add-info">
                      <i class="fas fa-map-marker-alt font-small"></i>
                      <span class="job-location font-small">SELURUH INDONESIA</span>
                      <i class="far fa-clock"></i>
                      <span class="job-time font-small">FULL TIME</span>
                  </p>
              </h5>
                                        </a>
                                    </div>
                                </div>

                                <div id="collapseOne2" class="collapse show" role="tabpanel" aria-labelledby="headingOne2" data-parent="#accordionEx2">

                                    <div class="card">
                                        <div class="card-body">
                                            <p>
                                                <strong>Level :</strong>
                                                <span id="level">-</span>
                                            </p>

                                            <p>
                                                <strong>Education :</strong>
                                                <span id="education">CERTIFICATE BST and FOOD HANDLING CERTIFICATE </span>
                                            </p>

                                            <p>
                                                <strong>Experience :</strong>
                                                <span id="experience">At least 2 Years as a Cook
                        </span>
                                            </p>

                                            <strong>About the Job</strong>
                                            <p id="description">
                                                -
                                            </p>

                                            <strong>Minimum Qualification</strong>
                                            <p id="min-qualification">- CERTIFICATE BST and FOOD HANDLING CERTIFICATE,
                                                <br>- Experience BULK CARRIER, CONTAINER, CARGO or TANKER At least 2 Years as a Cook
                                                <br>- Max Age 45 Years old
                                                <br>- Requirement for BULK CARRIER AND CONTAINER SHIPS with NCV sailing route, (Indonesia)

                                            </p>
                                            <hr>
                                            <h6>Is this position suitable with you? Get ready and 
                        <button type="button" class="btn btn-outline-danger btn-rounded waves-effect" onclick="apply_job_sea()">
                            Apply Now
                            <script>
                                function apply_job_sea()
                                {
                                    window.location.href = 'form_apply_sea';
                                }
                            </script>
                        </button>
                    </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </body>

                        </html>
                        <%@include file="footer.jsp" %>