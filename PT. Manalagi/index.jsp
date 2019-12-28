<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
            <%@page language="java"%>
                <%@ page isELIgnored="false" %>
                    <%@page session="true" %>

                        <%@include file="header.jsp" %>

                            <!DOCTYPE html>
                            <html lang="${param.LANG}">

                            <head>

                                <link rel="stylesheet" href="assets/css/index.css">
                                <link href="slider/manalagi_icon.png" type="image/x-icon">
                                <title>PT PELAYARAN MANA LAGI</title>
                                <style>
                                    html,
                                    body,
                                    header,
                                    .jarallax {
                                        height: 680px;
                                    }
                                    
                                    @media (max-width: 740px) {
                                        html,
                                        body,
                                        header,
                                        .jarallax {
                                            height: 100vh;
                                        }
                                    }
                                    
                                    @media (min-width: 800px) and (max-width: 850px) {
                                        html,
                                        body,
                                        header,
                                        .jarallax {
                                            height: 100vh;
                                        }
                                    }
                                    
                                    @media (min-width: 560px) and (max-width: 650px) {
                                        header .jarallax h5 {
                                            margin-bottom: 1.5rem !important;
                                        }
                                    }
                                </style>
                            </head>

                            <body>

                                <noscript>You need to enable JavaScript to run this app.</noscript>

                                <div id="slider" class="carousel slide view jarallax" data-jarallax data-speed="0,2" data-ride="carousel" data-interval="3000">
                                    <ul class="carousel-indicators">
                                        <li data-target="#slider" data-slide-to="0" class="active"></li>
                                        <li data-target="#slider" data-slide-to="1"></li>
                                        <li data-target="#slider" data-slide-to="2"></li>
                                    </ul>

                                    <div class="carousel-inner">

                                        <div class="carousel-item active text-center view jarallax data-jarallax data-speed">
                                            <img src="slider/home1.JPG" width="100%" height="100%">
                                            <div class="carousel-caption">
                                                <div class="flex-lg-column" opacity="1">
                                                    <h1 class="font-weight-bold"><fmt:message key = "LANG.HOME_TAG"/></h1>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="carousel-item view jarallax data-jarallax data-speed">
                                            <img src="slider/home2.jpeg" width="100%" height="100%">
                                            <div class="carousel-caption">
                                                <h1 class="font-weight-bold"><fmt:message key = "LANG.HOME_TAG"/></h1>

                                            </div>
                                        </div>

                                        <div class="carousel-item view jarallax data-jarallax data-speed">
                                            <img src="slider/home3.jpeg" width="100%" height="100%">
                                            <div class="carousel-caption">
                                                <h1 class="font-weight-bold"><fmt:message key = "LANG.HOME_TAG"/></h1>
                                            </div>
                                        </div>
                                        <nav>
                                            <ul class="pagination"></ul>
                                        </nav>
                                    </div>

                                    <a class="carousel-control-prev" href="#slider" data-slide="prev">
                                        <span class="carousel-control-prev-icon"></span>
                                    </a>
                                    <a class="carousel-control-next" href="#slider" data-slide="next">
                                        <span class="carousel-control-next-icon"></span>
                                    </a>
                                </div>

                                <div class="container">

<!--                                    Section: Blog v.3
                                    <section class="section extra-margins pb-3 text-center text-lg-left wow fadeIn" data-wow-delay="0.3s">

                                        Section heading
                                        <h2 class="font-weight-bold text-center h1 my-5" style="color: #2e7d32!important;"><fmt:message key = "LANG.HOME_RECENTNEWS"/></h2>
                                        Section description
                                        <p class="text-center grey-text mb-5 mx-auto w-responsive" style="color: #001311">

                                            <strong>
                <fmt:message key = "LANG.HOME_MOTTO"/>
            </strong>
                                        </p>

                                        Grid row
                                        <div class="row">

                                            Grid column
                                            <div class="col-lg-4 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1">
                                                    <img src="https://mdbootstrap.com/img/Photos/Others/img (38).jpg" class="img-fluid" alt="First sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>
                                            </div>
                                            Grid column

                                            Grid column
                                            <div class="col-lg-7 mb-4">
                                                Excerpt
                                                <a href="" class="teal-text">
                                                    <h6 class="pb-1"><i class="fas fa-heart"></i><strong> Lifestyle </strong></h6>
                                                </a>
                                                <h4 class="mb-4"><strong>This is title of the news</strong></h4>
                                                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor.</p>
                                                <p>by <a><strong>Jessica Clark</strong></a>, 26/08/2016</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                        </div>
                                        Grid row

                                        <hr class="mb-5">

                                        Grid row
                                        <div class="row mt-3">

                                            Grid column
                                            <div class="col-lg-4 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1">
                                                    <img src="https://mdbootstrap.com/img/Photos/Others/forest-sm.jpg" class="img-fluid" alt="Second sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>
                                            </div>
                                            Grid column

                                            Grid column
                                            <div class="col-lg-7 mb-4">
                                                Excerpt
                                                <a href="" class="cyan-text">
                                                    <h6 class="pb-1"><i class="fas fa-plane"></i><strong> Travels</strong></h6>
                                                </a>
                                                <h4 class="mb-4"><strong>This is title of the news</strong></h4>
                                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</p>
                                                <p>by <a><strong>Jessica Clark</strong></a>, 24/08/2016</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                        </div>
                                        Grid row

                                        <hr class="mb-5">

                                        Grid row
                                        <div class="row">

                                            Grid column
                                            <div class="col-lg-4 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1">
                                                    <img src="https://mdbootstrap.com/img/Photos/Others/img (35).jpg" class="img-fluid" alt="Third sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>
                                            </div>
                                            Grid column

                                            Grid column
                                            <div class="col-lg-7 mb-4">
                                                Excerpt
                                                <a href="" class="brown-text">
                                                    <h6 class="pb-1"><i class="fas fa-camera"></i><strong> Photography</strong></h6>
                                                </a>
                                                <h4 class="mb-4"><strong>This is title of the news</strong></h4>
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                <p>by <a><strong>Jessica Clark</strong></a>, 21/08/2016</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                        </div>
                                        Grid row

                                        <hr class="mb-5">

                                        Grid row
                                        <div class="row">

                                            Grid column
                                            <div class="col-lg-4 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1">
                                                    <img src="https://mdbootstrap.com/img/Photos/Others/img (39).jpg" class="img-fluid" alt="Third sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>
                                            </div>
                                            Grid column

                                            Grid column
                                            <div class="col-lg-7 mb-4">
                                                Excerpt
                                                <a href="" class="red-text">
                                                    <h6 class="pb-1"><i class="fas fa-heart"></i><strong> Lifestyle</strong></h6>
                                                </a>
                                                <h4 class="mb-4"><strong>This is title of the news</strong></h4>
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                <p>by <a><strong>Jessica Clark</strong></a>, 21/08/2016</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                        </div>
                                        Grid row

                                        Pagination dark
                                        <nav class="wow fadeIn mb-4 mt-5" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeIn;">
                                            <ul class="pagination pg-dark flex-center">
                                                Arrow left
                                                <li class="page-item">
                                                    <a class="page-link waves-effect waves-effect" aria-label="Previous">
                                                        <span aria-hidden="true">«</span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                </li>

                                                Numbers
                                                <li class="page-item active"><a class="page-link waves-effect waves-effect">1</a></li>
                                                <li class="page-item"><a class="page-link waves-effect waves-effect">2</a></li>
                                                <li class="page-item"><a class="page-link waves-effect waves-effect">3</a></li>
                                                <li class="page-item"><a class="page-link waves-effect waves-effect">4</a></li>
                                                <li class="page-item"><a class="page-link waves-effect waves-effect">5</a></li>

                                                Arrow right
                                                <li class="page-item">
                                                    <a class="page-link waves-effect waves-effect" aria-label="Next">
                                                        <span aria-hidden="true">»</span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                        /Pagination dark

                                    </section>
                                    Section: Blog v.3

                                    <hr class="mb-5">

                                    Section: Blog v.2
                                    <section class="section extra-margins text-center pb-3 wow fadeIn" data-wow-delay="0.3s">

                                        Section heading
                                        <h2 class="font-weight-bold text-center h1 my-5" style="color: #c8102e!important;"><fmt:message key = "LANG.HOME_OLDERNEWS"/></h2>
                                        Section description
                                        <p class="text-center grey-text mb-5 mx-auto w-responsive">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

                                        Grid row
                                        <div class="row">

                                            Grid column
                                            <div class="col-lg-4 col-md-12 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1 mb-2">
                                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(131).jpg" class="img-fluid" alt="First sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                Excerpt
                                                <a href="" class="pink-text">
                                                    <h6 class="mb-3 mt-3"><i class="fas fa-map "></i><strong> Adventure</strong></h6>
                                                </a>
                                                <h4 class="mb-3 font-weight-bold">This is title of the news</h4>
                                                <p>by <a><strong>Billy Forester</strong></a>, 15/07/2016</p>
                                                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus voluptas.</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                            Grid column
                                            <div class="col-lg-4 col-md-6 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1 mb-2">
                                                    <img src="https://mdbootstrap.com/img/Photos/Others/img6.jpg" class="img-fluid" alt="Second sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                Excerpt
                                                <a href="" class="indigo-text">
                                                    <h6 class="mb-3 mt-3"><i class="fas fa-graduation-cap"></i><strong> Education</strong></h6>
                                                </a>
                                                <h4 class="mb-3 font-weight-bold">This is title of the news</h4>
                                                <p>by <a><strong>Billy Forester</strong></a>, 12/07/2016</p>
                                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores.</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                            Grid column
                                            <div class="col-lg-4 col-md-6 mb-4">
                                                Featured image
                                                <div class="view overlay z-depth-1 mb-2">
                                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(33).jpg" class="img-fluid" alt="Thrid sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                Excerpt
                                                <a href="" class="cyan-text">
                                                    <h6 class="mb-3 mt-3"><i class="fas fa-fire "></i><strong> Culture</strong></h6>
                                                </a>
                                                <h4 class="mb-3 font-weight-bold">This is title of the news</h4>
                                                <p>by <a><strong>Billy Forester</strong></a>, 10/07/2016</p>
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, quia consequuntur magni dolores eos qui ratione voluptatem.</p>
                                                <a class="btn btn-primary">Read more</a>
                                            </div>
                                            Grid column

                                        </div>
                                        Grid row

                                    </section>
                                    Section: Blog v.2-->

                                </div>

                            </body>

                            </html>
                            <%@include file="footer.jsp" %>