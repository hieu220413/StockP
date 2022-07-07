<%-- 
    Document   : login
    Created on : Jul 4, 2022, 4:03:53 PM
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
        <link href="<c:url value="/css/login.css" />" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
    </head>

    <style>
        .signup-wrapper .company-details {
            background: url(<c:url value="/images/SKATERBOARD.jpg"/>);
            background-size: cover;
            position: relative;
        }
    </style>

    <body>
        <div class="content-wrapper">

            <div class="content">
                <div class="signup-wrapper shadow-box">
                    <div class="company-details ">
                        <div class="shadow"></div>
                        <div class="wrapper-1">
                            <h1 class="title">StockP</h1>
                            <div class="slogan">We deliver shoes to you.</div>
                        </div>
                    </div>

                    <div class="signup-form ">
                        <div class="wrapper-2">
                            <div class="form-title">Sign in !</div>
                            <div class="form">
                                <form>
                                    <p class="content-item">
                                        <label>Username
                                            <input type="text" placeholder="" required>
                                        </label>
                                    </p>
                                    <p class="content-item">
                                        <label>password
                                            <input type="password" placeholder="" name="pw" required>
                                        </label>
                                    </p>
                                    <button type="submit" class="signup">i want a pair of shoes </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    </body>
</html>
