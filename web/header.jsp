<%-- 
    Document   : menu
    Created on : May 18, 2023, 8:50:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400&display=swap" rel="stylesheet">  
        <link href="./assets/fonts/fontawesome-free-5.15.3-web/css/all.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style/home.css">
        <title>Schon</title>
    </head>
    <body>
        <!--BEGIN HEADER-->
        <header class="header">
            <div class="grid wide">
                <div class="header__wrap row">
                    <div class="header__logo">
                        <a href="home">
                            <img src="assets/logo.png" alt="logo" />
                        </a>
                    </div>
                    <nav class="header__nav">
                        <ul class="header__menu">
                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                <li class="header__list">
                                    <a href="managerProduct" class="drop-link" >MANAGER PRODUCT
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                </li>
                                <li class="header__list">
                                    <a href="managerUser" class="drop-link" >MANAGER USER
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                </li>
                            </c:if>
                            <li class="header__list">
                                <a href="home" class="drop-link" >HOME
                                    <i class="fas fa-angle-down"></i>
                                </a>
                            </li>
                            <li class="header__list">
                                <a href="product" class="drop-link" 
                                   >PRODUCTS
                                    <i class="fas fa-angle-down"></i>
                                </a>
                            </li>
                            <c:if test="${sessionScope.acc == null}">
                                <li class="header__list">
                                    <a href="login.jsp" class="drop-link" >LOGIN
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                                <li class="header__list">
                                    <a href="" class="drop-link" >HELLO ${sessionScope.acc.userName}
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                </li>
                                <li class="header__list">
                                    <a href="logout" class="drop-link" >LOGOUT
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                    </nav>
                    <div class="header__icon">
                        <ul>
                            <li class="bar-menu">
                                <a href="#">
                                    <i class="fas fa-bars"  ></i>
                                </a>
                            </li>
                            <li class="search-click">
                                <a href="#">
                                    <i class="fas fa-search"></i>
                                </a>
                            </li>
                            <li class="react__love modal__header-click">
                                <a href="#"> 
                                    <i class="far fa-heart">
                                        <span class="num">3</span>
                                    </i>
                                </a>              
                                <!-- begin liked form -->
                                <div class="liked modal__header-show">
                                    <div class="liked__container">
                                        <div class="liked__body">
                                            <div class="liked__item">
                                                <div class="liked__item-content">
                                                    <div class="liked__item-img">
                                                        <img src="assets/img36.jpg" alt="chair">
                                                    </div>
                                                    <div class="liked__item-desc">
                                                        <div class="liked__item-title">
                                                            Marvelous Modern 3 Seater
                                                        </div>
                                                        <div class="liked__item-price">
                                                            $599,000
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="liked__item-close">
                                                    <i class="fas fa-times"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="liked__footer">
                                            <div class="liked__footer-text">
                                                Add them all
                                            </div>
                                            <div class="liked__footer-btn modal__hide">
                                                add to cart
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end liked form -->   
                            </li>
                            <!-- begin cart form -->
                            <li class="cart-list modal__header-click">
                                <a href="show">
                                    <i  class="fas fa-shopping-bag" >
                                        <span class="num">3</span>
                                    </i>
                                </a>
                                <div class="cart modal__header-show">
                                    <div class="cart__container">
                                        <div class="cart__body">
                                            <div class="cart__item">
                                                <div class="cart__item-content">
                                                    <div class="cart__item-img">
                                                        <img src="assets/img36.jpg" alt="chair">
                                                    </div>
                                                    <div class="cart__item-desc">
                                                        <div class="cart__item-title">
                                                            Marvelous Modern 3 Seater
                                                        </div>
                                                        <div class="cart__item-price">
                                                            $599,000
                                                        </div>
                                                        <div class="cart__quantity">
                                                            Qty:1
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cart__item-close">
                                                    <i class="fas fa-times"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart__bottom">
                                            <div class="cart__statistical cart__footer-control">
                                                <div class="cart__statistical-title">
                                                    Sub total
                                                </div>
                                                <div class="cart__statistical-total">
                                                    $799
                                                </div>
                                            </div>
                                            <div class="cart__footer cart__footer-control">
                                                <div class="cart__footer-btn cart__btn-left">
                                                    View cart
                                                </div>
                                                <div class="cart__footer-btn cart__btn-right modal__hide">
                                                    check out
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- end cart form -->
                            <!-- begin form login -->
                            
                            <!-- end form login -->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- begin login form -->
            <div style='display: none' class="login">
                <div style='right: 0;position: absolute' class="login__container">
                    <div class="login__header">
                        <div class="login__title">
                            <h2>MY ACCOUNT</h2>
                        </div>
                        <div class="login__close"><a href="#"><i class="fas fa-times"></i></a></div>
                    </div>
                    <div class="login__body">
                        <div class="login__account">
                            <div class="login__account-text">
                                <div class="login__account-title">
                                    SIGN IN
                                </div>
                                <p class="login__account-desc">
                                    Welcome back! Sign in to Your Account
                                </p>
                            </div>
                            <form action="login" method = "post">
                                <input type="text" name="user" class="login__form__control login__user-name" placeholder="Username">
                                <input type="password" name="password" class="login__form__control login__password" placeholder="Password">      
                                <button type="submit" class="login__btn">Login</button>
                            </form>
                        </div>
                        <div class="login__or">
                            <p>or</p>
                        </div>
                        <div class="login__create-account">
                            <div class="login__account-text">
                                <div class="login__account-title">
                                    CREATE NEW ACCOUNT
                                </div>
                                <p class="login__account-desc">
                                    Create your very own account
                                </p>
                            </div>
                            <form action="signup">
                                <input name="userName" type="text" class="login__form__control" placeholder="Username">
                                <input name="email" type="text" class="login__form__control" placeholder="Email address">
                                <input name="name" type="text" class="login__form__control" placeholder="Full name">
                                <input name="phone" type="text" class="login__form__control" placeholder="Phone number">
                                <input name="address" type="text" class="login__form__control" placeholder="Address">
                                <input name="password" type="text" class="login__form__control" placeholder="Password">
                                <input  type="text" class="login__form__control" placeholder="cd">
                                <button type="submit" class="login__btn">Register</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end login form -->
            <!--CLICK JD-->
            <!-- header search -->
            <div class="search">
                <div class="search-container">
                    <form action="searchProduct" method="post" target="_self" id="search__form">
                        <fieldset>
                            <input name="search" class="search__form-input" type="text" placeholder="Search...">
                            <button style='cursor: pointer' class="search-btn modal__search" type="submit"><i class="fas fa-search"></i></button>
                        </fieldset> 
                    </form>
                    <div class="search-close">
                        <a href=""><i style='font-size: 30px;' class="fas fa-times"></i></a>
                    </div>
                </div>
            </div>
            <!-- end header search -->
        </header>
        <!--END HEADER-->
        <script>

// Show Search
            const search = document.querySelector('.search');
            const input = document.querySelector('.search__form-input');
            const btnSearch = document.querySelector('.search-click');
            const btnClose = document.querySelector('.search-close');
            const modalSearch = document.querySelector('.modal__search');
            function isShow() {
                search.classList.add('isShow');
                input.focus();
            }
            function isHide() {
                search.classList.remove('isShow');
            }
            btnSearch.addEventListener('click', isShow);
            btnClose.addEventListener('click', isHide);
            modalSearch.addEventListener('click', isHide);
        </script>
    </body>
</html>
