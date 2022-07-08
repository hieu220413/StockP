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
        <link href="<c:url value="/html/styleindex.css" />" rel="stylesheet" type="text/css"/>
        <title>StockP Sneakers Store</title>
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
                            <a href="<c:url value="/home/index.do"/>">
                                <img style="height: 100px" src="<c:url value="/images/StockP__3_-removebg-preview.png"/>">
                            </a>
                            <li>
                                <a href="<c:url value="/shoes/basketball_info.do"/>">BASKETBALL</a>
                            </li>
                            <li>
                                <a href="<c:url value="/shoes/football_info.do"/>">FOOTBALL</a>
                            </li>
                            <li>
                                <a href="<c:url value="/shoes/running_info.do"/>">RUNNING</a>
                            </li>
                            <li>
                                <a href="<c:url value="/shoes/lifestyle_info.do"/>">LIFESTYLE</a>
                            </li>
                            
                            <c:if test="${sessionScope.LOGIN_CUSTOMER == null}">
                                <li>
                                    <a href="<c:url value="/user/login.do"/>">LOG IN</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.LOGIN_CUSTOMER != null}">
                                <li>
                                    <a href="<c:url value="/user/logout.do"/>">LOG OUT</a>
                                </li>
                            </c:if>
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
