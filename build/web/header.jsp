<%-- 
    Document   : menu
    Created on : May 18, 2023, 8:50:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="#">
                            <img src="assets/logo.png" alt="logo" />
                        </a>
                    </div>
                    <nav class="header__nav">
                        <ul class="header__menu">
                            <li class="header__list">
                                <a class="drop-link" >HOME
                                    <i class="fas fa-angle-down"></i>
                                </a>
                            </li>
                            <li class="header__list">
                                <a class="drop-link" 
                                   >PRODUCTS
                                    <i class="fas fa-angle-down"></i>
                                </a>
                            </li>
                            <li class="header__list">
                                <a class="drop-link" >BLOG <i class="fas fa-angle-down"></i></a>
                            </li>
                            <li class="header__list">
                                <a >ABOUT</a>
                            </li>
                            <li class="header__list">
                                <a class="drop-link" >CONTACT
                                    <i class="fas fa-angle-down"></i></a>
                            </li>
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
                                <a href="#">
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
                            <li class="login-click">
                                <a   href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <!-- end form login -->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- begin login form -->
            <div class="login">
                <div class="login__container">
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
                            <form action="#">
                                <input type="text" class="login__form__control login__user-name" placeholder="Username or email address">
                                <input type="password" class="login__form__control login__password" placeholder="Password">
                                <div class="login__form__helper">
                                    <div class="login__form__checkbox">
                                        <input class="form__acp" type="checkbox" id="remember">
                                        <label for="remember">Remember Me</label>
                                    </div>
                                    <div class="login__form__help"><a href="#">Help?</a></div>
                                </div>
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
                            <form action="#">
                                <input type="text" class="login__form__control" placeholder="Username or email address">
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
                    <form action="#" method="get" target="_self" id="search__form">
                        <fieldset>
                            <input class="search__form-input" type="text" placeholder="Search...">
                            <a href="#" class="search-micro-btn"><i class="fas fa-microphone micro"></i></a>
                            <button class="search-btn modal__search" type="submit"><i class="fas fa-search"></i></button>
                        </fieldset> 
                    </form>
                    <div class="search-close">
                        <a href=""><i class="fas fa-times"></i></a>
                    </div>
                </div>
            </div>
            <!-- end header search -->
        </header>
        <!--END HEADER-->


    </body>
</html>
