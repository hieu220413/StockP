<%-- 
    Document   : index
    Created on : Jul 4, 2022, 4:03:03 PM
    Author     : Admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link href="<c:url value="/html/styleindex.css" />" rel="stylesheet" type="text/css"/>
        <title>PRJ Sneakers Store</title>
    </head>

    <body>
        <div class="container-fluid-2" class="nav" style="width: 100vw; padding: 0px;">
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
                            <img src="<c:url value="/images/slider 1.jpg"/>" class="d-block w-100" alt="">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Spadling VBA</h5>
                                <p>Bóng thi đấu chuyên dùng dành cho môn bóng rổ chính hãng.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/images/slider 2,3.jpg"/>" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Tất cả các hãng giày, loại giày</h5>
                                <p>Đều có mặt tại đây, đáp ứng mọi nhu cầu.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/images/newnenwnennnnenenen.jpg"/>" class="d-block w-100" alt="...">
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
        <div class="container">
            <div class="row">

                <div class="col-md-12 text-center">
                    <h1>

                    </h1>
                </div>

            </div>

            <div class="row">

                <div class="col-md-1">

                </div>

                <div class="col-md-4">
                    <div class="text-center">
                        <a href="<c:url value="/shoes/basketball_info.do"/>">
                            <img style="width:100%" class="img-responsive" src="<c:url value="/images/basketball2.png"/>" />
                        </a>
                        <div class="service-item">
                            <h3 class="sertice-item-titile">BASKETBALL</h3>
                            <p>Các mẫu giày đẹp bóng rổ</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-2">

                </div>

                <div class="col-md-4">
                    <div class="text-center">
                        <a href="<c:url value="/shoes/football_info.do"/>">
                            <img style="width:100%" class="img-responsive" src="<c:url value="/images/fooball1.jpg"/>" />
                        </a>
                        <div class="service-item">
                            <h3 class="sertice-item-titile">FOOTBALL</h3>
                            <p>Các mẫu giày đẹp bóng đá</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-1">

                </div>

            </div>

            <div class="row">

                <div class="col-md-1">

                </div>

                <div class="col-md-4">
                    <div class="text-center">
                        <a href="<c:url value="/shoes/running_info.do"/>">
                            <img style="width:100%" src="<c:url value="/images/runnig.png"/>" class="img-responsive" />
                        </a>
                        <div class="item">
                            <div class="service-item">
                                <h3 class="sertice-item-titile">RUNNING</h3>
                                <p>Các mẫu giày đẹp chạy bộ</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-2">

                </div>

                <div class="col-md-4">
                    <div class="text-center">
                        <a href="<c:url value="/shoes/lifestyle_info.do"/>">
                            <img style="width:100%" src="<c:url value="/images/lifestyle.png"/>" class="img-responsive" />
                        </a>
                        <div class="item">
                            <div class="service-item">
                                <h3 class="sertice-item-titile">LIFETSTYLE</h3>
                                <p>Các mẫu giày đẹp đường phố</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-1">

                </div>

            </div>
        </div>

    </body>

</html>
