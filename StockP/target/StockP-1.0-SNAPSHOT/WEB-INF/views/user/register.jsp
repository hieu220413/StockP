<%-- 
    Document   : register
    Created on : Jul 4, 2022, 4:04:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <link href="<c:url value="/css/register.css" />" rel="stylesheet" type="text/css"/>
        <title>Register Form</title>
    </head>
    <style>
        .rf {
            background-image: linear-gradient(rgba(255, 255, 255, 0.65), rgba(255, 255, 255, 0.65)), url(<c:url value="/images/backgroundimagesneaker.jpg"/>);
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
    <body>
        <div class="container mt-3 rf">
            <h2 style="text-align: center;" style="padding: 0px 50px; padding-top: 50px; font-weight: bold;">StockP Sneaker Store's Register </h2>
            <p style="padding: 0px 50px; font-weight: bold;">We deliver shoes to you !</p>
            <form style="padding-bottom: 50px; padding: 0px 50px 50px 50px;" action="/action_page.php">
                <div class="form-floating mb-3 mt-3">
                    <input type="text" class="form-control" id="fullname" placeholder="Enter full name" name="fullname"
                           required>
                    <label style="font-weight: bold;" for="fullname">Fullname</label>
                </div>
                <div class="form-floating mt-3 mb-3">
                    <input type="text" class="form-control" id="address" placeholder="Enter address" name="address"
                           required>
                    <label style="font-weight: bold;" for="address">Addresss</label>
                </div>
                <div class="form-floating mt-3 mb-3">
                    <div class="form-check">
                        <label style="font-weight: bold;" class="form-check-label" for="radio1">
                            <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1"
                                   checked>Male
                        </label>
                        <!-- </div>
                    <div class="form-check"> -->
                        <label style="padding-left: 40px; font-weight: bold;" class="form-check-label" for="radio2">
                            <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Female
                        </label>
                    </div>
                </div>
                <div class="form-floating mt-3 mb-3">
                    <input type="text" class="form-control" id="username" placeholder="Enter password" name="username"
                           required>
                    <label style="font-weight: bold;" for="username">Username</label>
                </div>
                <div class="form-floating mt-3 mb-3">
                    <input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw" required>
                    <label style="font-weight: bold;" for="pwd">Password</label>
                </div>
                <div class="form-floating mt-3 mb-3">
                    <input type="password" class="form-control" id="Cpw" placeholder="Enter password" name="Cpw" required>
                    <label style="font-weight: bold;" for="pwd">Confirm Password</label>
                </div>
                <div style="display: flex; justify-content: center;">
                    <button style="font-weight: bold; border-radius: 5px; padding: 10px 150px;" type="submit"
                            class="btn btn-dark">Register</button>
                </div>
            </form>
        </div>
    </body>
</html>
