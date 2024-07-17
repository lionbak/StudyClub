<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>App landing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/assets/img/favicon.ico' />">

    <!-- CSS here -->
    <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/owl.carousel.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/slicknav.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/flaticon.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/progressbar_barfiller.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/gijgo.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/animate.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/animated-headline.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/magnific-popup.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/fontawesome-all.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/themify-icons.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/slick.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/nice-select.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">
</head>
<body>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="<c:url value='/assets/img/logo/loder.png' />" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader End -->

    <main class="login-body" data-vide-bg="<c:url value='/assets/img/mal.mp4' />">
        <!-- Login Form -->
        <form class="form-default" action="<c:url value='/user_login' />" method="POST">
            <div class="login-form">
                <!-- Logo -->
                <div class="logo-login">
                    <a href="<c:url value='/' />"><img src="<c:url value='/assets/img/logo/loder.png' />" alt=""></a>
                </div>
                <h2>Login Here</h2>
                <!-- Display error message if exists -->
                <c:if test="${not empty errorMessage}">
                    <div class="alert alert-danger">
                        ${errorMessage}
                    </div>
                </c:if>
                <!-- Email Input -->
                <div class="form-input">
                    <label for="id">Email</label>
                    <input type="text" id="id" name="userEmail" placeholder="Email">
                </div>
                <!-- Password Input -->
                <div class="form-input">
                    <label for="password">Pw</label>
                    <input type="password" id="password" name="userPw" placeholder="Pw">
                </div>
                <!-- Submit Button -->
                <div class="form-input pt-30">
                    <input type="submit" name="submit" value="Login">
                </div>
                <!-- Registration Link -->
                <a href="<c:url value='/views/register.jsp' />" class="registration">Registration</a>
            </div>
        </form>
        <!-- /end login form -->
    </main>

    <!-- JS here -->
    <script src="<c:url value='/assets/js/vendor/modernizr-3.5.0.min.js' />"></script>
    <script src="<c:url value='/assets/js/vendor/jquery-1.12.4.min.js' />"></script>
    <script src="<c:url value='/assets/js/popper.min.js' />"></script>
    <script src="<c:url value='/assets/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.slicknav.min.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.vide.js' />"></script>
    <script src="<c:url value='/assets/js/owl.carousel.min.js' />"></script>
    <script src="<c:url value='/assets/js/slick.min.js' />"></script>
    <script src="<c:url value='/assets/js/wow.min.js' />"></script>
    <script src="<c:url value='/assets/js/animated.headline.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.magnific-popup.js' />"></script>
    <script src="<c:url value='/assets/js/gijgo.min.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.nice-select.min.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.sticky.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.barfiller.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.counterup.min.js' />"></script>
    <script src="<c:url value='/assets/js/waypoints.min.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.countdown.min.js' />"></script>
    <script src="<c:url value='/assets/js/hover-direction-snake.min.js' />"></script>
    <script src="<c:url value='/assets/js/contact.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.form.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.validate.min.js' />"></script>
    <script src="<c:url value='/assets/js/mail-script.js' />"></script>
    <script src="<c:url value='/assets/js/jquery.ajaxchimp.min.js' />"></script>
    <script src="<c:url value='/assets/js/plugins.js' />"></script>
    <script src="<c:url value='/assets/js/main.js' />"></script>
</body>
</html>
