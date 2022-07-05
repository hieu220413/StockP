<%-- 
    Document   : main
    Created on : Jul 4, 2022, 4:02:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<c:url value="/css/styleindex.css"/>" rel="stylesheet" />
        <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="./js/Jquery.js"></script>
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/bootstrap.bundle.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <title>PRJ Sneakers Store</title>
    </head>

    <body>
        <div class="container-fluid" class="nav" style="width: 100vw; padding: 0px;">
            <div id="wrapper">
                <div id="header">
                    <div id="toggle">
                        <i class="fas fa-bars"></i>
                    </div>
                    <nav>
                        <ul id="main-menu">
                            <a href="<c:url value="/"/>">
                               <img style="height: 100px" src="./images/StockP__3_-removebg-preview.png">
                                </a>
                                <li>
                                    <a href="/">BASKETBALL</a>
                                       </li>
                                       <li>
                                       <a href="/">FOOTBALL</a>
                                        </li>
                                        <li>
                                            <a href="/">RUNNING</a>
                                               </li>
                                               <li>
                                               <a href="/">LIFESTYLE</a>
                                                </li>
                                                <li>
                                                    <a href="/">LOG IN/LOG OUT</a>
                                                       <li>
                                                       <a href="/">REGISTER</a>
                                                        </li>
                                                        </li>
                                                        <li>
                                                            <a href="/">
                                                               <i class="fa fa-shopping-cart"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </nav>
                                                </div>
                                            </div>
                                            <!-- <script>
                                                $(document).ready(function () {
                                                    $('#toggle').click(function () {
                                                        $('nav').slideToggle();
                                                    });
                                                })
                                            </script> -->

                                            <div class="row">

                                                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
                                                    <div class="carousel-indicators">
                                                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                                                                aria-current="true" aria-label="Slide 1"></button>
                                                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                                                aria-label="Slide 2"></button>
                                                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                                                aria-label="Slide 3"></button>
                                                    </div>
                                                    <div class="carousel-inner">
                                                        <div class="carousel-item active">
                                                            <img src="./images/slider 1.jpg" class="d-block w-100" alt="">
                                                            <div class="carousel-caption d-none d-md-block">
                                                                <h5>Spadling VBA</h5>
                                                                <p>Bóng thi đấu chuyên dùng dành cho môn bóng rổ chính hãng.</p>
                                                            </div>
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="./images/slider 2,3.jpg" class="d-block w-100" alt="...">
                                                            <div class="carousel-caption d-none d-md-block">
                                                                <h5>Tất cả các hãng giày, loại giày</h5>
                                                                <p>Đều có mặt tại đây, đáp ứng mọi nhu cầu.</p>
                                                            </div>
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="./images/newnenwnennnnenenen.jpg" class="d-block w-100" alt="...">
                                                            <div class="carousel-caption d-none d-md-block">
                                                                <h5>Mặt hàng mới</h5>
                                                                <p>Luôn về tay với mức giá ưu đãi.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                                                            data-bs-slide="prev">
                                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                        <span class="visually-hidden">Previous</span>
                                                    </button>
                                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                                                            data-bs-slide="next">
                                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                        <span class="visually-hidden">Next</span>
                                                    </button>
                                                </div>

                                            </div>

                                        </div>
                                        <!--Kết thúc container-fluid-->

                                        <!--layouts-->
                                        <div class="row">
                                            <div class="col">
                                                <!--including views-->
                                                <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
                                            </div>
                                        </div>

                                        <!--footer-->
                                        <div class="footer">

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="text-center footer">
                                                        <h3 style="font-weight: bold; font-style: normal; color: #95171F;">StockP</h3>
                                                        <p>PHONE: 0748523113</p>
                                                        <p>Store's address: Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh
                                                            700000</p>
                                                        <p>Email: StockP@store.fpt.com</p>
                                                        <p>Copyrights &copy; by PRJ Class. All Rights Reserved.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </body>
                                </html>
