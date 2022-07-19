<%-- 
    Document   : index
    Created on : Jul 4, 2022, 10:03:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/css/shoppingcart.css" rel="stylesheet" />
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Cart Page</title>
    </head>
    <body>
        <div style="height: 100vh;" class="container px-3 my-5 clearfix">

            <!-- Shopping cart table -->
            <div class="card">

                <div class="card-header">
                    <h2>Shopping Cart</h2>
                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered m-0">

                            <thead>

                                <tr>
                                    <!-- Set columns width -->
                                    <th class="name-content" style="min-width: 400px;">Shoes's Name &amp; Details</th>
                                    <th class="name-content" style="width: 100px;">Size</th>
                                    <th class="name-content" style="width: 120px;">Quantity</th>
                                    <th class="name-content" style="width: 100px;">Price</th>
                                    <th class="name-content" style="width: 100px;">Give back<a href="#"
                                                                                               class="shop-tooltip float-none text-light" title=""
                                                                                               data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a></th>
                                </tr>

                            </thead>

                            <tbody>
                                <c:set var="total" value="0"></c:set>
                                <c:set var="shoes" value="0"></c:set>
                                <c:forEach var="shoes" items="${cart.cartList}" varStatus="loop">
                                <form action="<c:url value="/cart/index.do"/>">
                                    <tr>
                                        <td class="p-4">
                                            <div class="media">
                                                <div class="media-body">
                                                    <p href="#" class="">${shoes.name}</p>
                                                    <div>
                                                        <span class="text-muted"></span>
                                                        <span class="ui-product-color ui-product-color-sm align-text-bottom"
                                                              style="background:#e81e2c;"></span> &nbsp;
                                                        <span class="text-muted">
                                                            <span class="text-muted"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4">${shoes.size}</td>
                                        <td class="align-middle p-4">${shoes.amount}</td>
                                        <td class="text-right font-weight-semibold align-middle p-4"><fmt:formatNumber value="${shoes.price*shoes.amount}" pattern="$#,##0.00"/></td>
                                        <td class="text-center align-middle px-0">
                                            <input type="hidden" name="id" value="${shoes.shoeId}"/>
                                            <button class="btn btn-danger" type="submit" name="op" value="delete" >
                                                X
                                            </button>
                                        </td>
                                        <c:set var="total" value="${total + shoes.price*shoes.amount}"></c:set>
                                        </tr>
                                    </form>

                            </c:forEach>

                            </tbody>

                        </table>

                    </div>

                    <!-- / Shopping cart table -->
                    <div class="container">

                        <div class="mt-4">
                        </div>

                        <div class="text-end mt-4">

                            <label class="text-muted fw-bold fs-5 m-0">Total price</label>
                            <div class="text-large"><strong><fmt:formatNumber value="${total}" pattern="$#,##0.00"/></strong></div>

                        </div>
                    </div>

                </div>

                <div class="container">
                    <span style="display: none">
                        <form id="cart" action="<c:url value="/cart/index.do"/>">
                            <c:set var="total1" value="0"></c:set>
                            <c:forEach var="shoes" items="${cart.cartList}" varStatus="loop">
                                <input type="hidden" name="size" value="${shoes.size}"/>
                                <input type="hidden" name="quantity" value="${shoes.amount}"/>
                                <fmt:formatNumber var="p" value="${shoes.price*shoes.amount}" pattern="$#,##0.00"/>
                                <input type="hidden" name="id" value="${shoes.shoeId}"/>
                                <c:set var="total1" value="${total1 + (shoes.price*shoes.amount)}"></c:set>
                            </c:forEach>
                                <input type="hidden" name="total_price" value="${total}"/>
                        </form>
                    </span>
                    <div class="clearfix">
                        <button  name="" value="" type="submit" class="btn btn-lg btn-dark float-start mt-2 mb-2 button1">Want more !</button>
                        <button form="cart"  name="op" value="addInvoice" type="submit" class="btn btn-lg btn-dark float-end mt-2 mb-2 button1">Wear now !</button>

                    </div>

                </div>

            </div>

        </div>

    </div>

</body>
</html>