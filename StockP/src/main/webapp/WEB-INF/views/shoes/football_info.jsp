<%-- 
    Document   : basketball_info
    Created on : Jul 4, 2022, 9:50:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" href="<c:url value="/css/button.css"/>">
        <title>Football Shoes Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-1">

            </div>
            <div class="col-md-2">

            </div>
            <div class="col-md-2">

            </div>
            <div class="col-md-2">

            </div>
            <div class="col-md-4">
                <input type="text" placeholder="Search" class="search" placeholder="Search">
                <button type="button" class="button-1">Search</button>
            </div>
            <div class="col-md-1">

            </div>
        </div>
        <c:forEach var="shoes" items="${list}" varStatus="loop"> 
            <div class="container mt-3">
                <div class="card" style="width:400px">
                    <img class="card-img-top" src="<c:url value="/image/${shoes.img}"/>" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">${shoes.name}</h4>
                        <h5 class="card-text">${shoes.price}$</h5>
                        Size <select name="size" class="form-select">
                            <option value="${shoes.size}">7</option>
                            <option value="${shoes.size}">8</option>
                            <option value="${shoes.size}">9</option> 
                            <option value="${shoes.size}">10</option>
                        </select>
                        <br/>
                        <input type="submit" name="op" value="Add to cart" class="btn btn-primary"/>
                    </div>
                </div>
                <br>
            </div>
        </c:forEach>      
    </body>
</html>