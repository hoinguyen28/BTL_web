<%-- 
    Document   : index
    Created on : May 1, 2023, 1:33:56 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
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
        <div class="app">
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
            <div class="homepage">
                <div class="slider">
                    <div class="slider__light slider__item">
                        <div class="slider__img light">
                            <img src="assets/light.jpg" alt="Light">
                        </div>
                        <div class="slider__content">
                            <div class="slider__slogan">
                                <strong>
                                    FURNITURE DESIGNS IDEAS
                                </strong>
                            </div>
                            <div class="slider__title">
                                <h1>Lightning</h1>
                            </div>
                            <div class="slider__sub-title">
                                <h2>PENDANT LAMPS</h2>
                            </div>
                            <div class="slider__desc">
                                <p>Consectetur adipisicing elit. Beatae accusamus, optio, repellendus inventore</p>
                            </div>
                            <div class="slider__btn">
                                <a href="#">Shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner ">
                    <div class="grid wide">
                        <div class="banner__row row">
                            <div class="banner__item col l-4 m-6 c-12">
                                <div class="banner__item-img">
                                    <img src="assets/img01.jpg" alt="">
                                </div>
                                <div class="banner__item-content">
                                    <div class="banner__item-title">
                                        <h2>MY SMALL WRITING DESK</h2>
                                    </div>
                                    <div class="banner__item-btn">
                                        <a href="#">SHOP NOW<i class="fas fa-angle-right"></i></a>
                                    </div>
                                    <div class="banner__item-sale-off">
                                        <p>-20%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="banner__item col l-4 m-6 c-12 banner__middle">
                                <div class="banner__item-half">
                                    <div class="banner__item-img banner__half-img">
                                        <img src="assets/img02.jpg" alt="">
                                    </div>
                                    <div class="banner__item-content banner__item-half-top">
                                        <div class="banner__item-title">
                                            <h2>MODULAR LOUNGE TEAK</h2> 
                                        </div>
                                        <div class="banner__item-price">
                                            <p>$ 129.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner__item-half">
                                    <div class="banner__item-img banner__half-img">
                                        <img src="assets/img03.jpg" alt="">
                                    </div>
                                    <div class="banner__item-content banner__item-half-bottom ">
                                        <div class="banner__item-title banner__half-title-botom">
                                            <h2>Modular technical fabric sofa</h2> 
                                        </div>
                                        <div class="banner__item-btn banner__half-btn ">
                                            <a href="#">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="banner__item col l-4 m-6 c-12">
                                <div class="banner__item-img">
                                    <img src="assets/img04.jpg" alt="">
                                </div>
                                <div class="banner__item-content">
                                    <div class="banner__item-title">
                                        <h2>DIRECT LIGHT PENDANT LAMP</h2>
                                    </div>
                                    <div class="banner__item-price banner__item-price-last">
                                        <p>$ 129.00</p>
                                    </div>
                                    <div class="banner__item-btn">
                                        <a href="#">SHOP NOW <i class="fas fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product ">
                    <div class="grid wide">
                        <div class="product__filter">
                            <div class="row">
                                <div class="col l-12 c-12 m12 product__navbar">
                                    <div class="product__filter-select">
                                        <c:forEach items = "${dataC}" var = "o">
                                            <div class="product__filter-options ">
                                                <a href="category?cid=${o.cid} ">
                                                    <h2>${o.cname}</h2>
                                                </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product__content">
                            <div class="row active product__row">
                                <c:forEach items = "${requestScope.dataP}" var ="o">
                                    <div class="col">
                                        <div class="product__item active l-12 m-12 c-12" >
                                            <div class="product__item-img">
                                                <img src="${o.image}" alt="lounge chair">
                                            </div>
                                            <div class="product__item-body">
                                                <div class="product__item-rating">
                                                    <i class="fas fa-star product__item-rating-current"></i>
                                                    <i class="fas fa-star product__item-rating-current"></i>
                                                    <i class="fas fa-star product__item-rating-current"></i>
                                                    <i class="far fa-star"></i>
                                                </div>
                                                <div class="product__item-name">
                                                    <p>${o.name}</p>
                                                </div>
                                                <div class="product__item-price">
                                                    <h3><i class="fas fa-euro-sign"></i>${o.price}</h3>
                                                </div>
                                                <div class="product__item-links">
                                                    <ul>
                                                        <li><a href="#" class="product__link"><i class="fas fa-shopping-bag"></i><span>Add to Cart</span></a></li>
                                                        <li><a href="#" class="product__link-item" ><i class="far fa-heart"></i></a></li>
                                                        <li><a href="#" class="product__link-item" ><i class="fas fa-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product__best-seller ">
                <div class="grid wide">
                    <div class="row">
                        <div class="product__best-seller-heading">
                            <div class="product__best-seller-title">
                                <h2>BEST SELLER</h2>
                            </div>
                            <div class="product__best-seller-sub-title">
                                <p>EXCEPTEUR SINT OCCAECAT</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items = "${requestScope.dataB}" var ="o">
                        <div class="product__item product__seller-item">
                            <div class="product__item-img">
                                <img src="${o.image}" alt="lounge chair">
                            </div>
                            <div class="product__item-body product__seller-body">
                                <div class="product__item-rating">
                                    <i class="fas fa-star product__item-rating-current"></i>
                                    <i class="fas fa-star product__item-rating-current"></i>
                                    <i class="fas fa-star product__item-rating-current"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <div class="product__item-name">
                                    <p>${o.name}</p>
                                </div>
                                <div class="product__item-price">
                                    <h3><i class="fas fa-euro-sign"></i>${o.price}</h3>
                                </div>
                                <div class="product__item-links product__seller-links">
                                    <ul>
                                        <li><a href="#" class="product__seller-link product__link" ><i class="fas fa-shopping-bag"></i><span>Add to Cart</span></a></li>
                                        <li><a href="#" class="product__seller-link-item " ><i class="far fa-heart"></i></a></li>
                                        <li><a href="#" class="product__seller-link-item " ><i class="fas fa-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="product__list">
                <div class="grid wide">
                    <div class="row">
                        <div class="col l-3 m-6 c-12 product__list-content">
                            <div class="product__list-title">
                                <h2>Hot Sale</h2>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img14.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Egon Wooden Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img15.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Oyo Cantilever Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img16.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Kurve Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col l-3 m-6 c-12 product__list-content">
                            <div class="product__list-title">
                                <h2>Featured Products</h2>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img17.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Bombi Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating ">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img18.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Oyo Cantilever Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img19.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Puff Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col l-3 m-6 c-12 product__list-content">
                            <div class="product__list-title">
                                <h2>Sale Products</h2>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img14.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Egon Wooden Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img15.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Oyo Cantilever Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img16.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Kurve Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col l-3 m-6 c-12 product__list-content">
                            <div class="product__list-title">
                                <h2>Top Rated Products</h2>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img20.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Marvelous Wooden Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img21.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Oyo Cantilever Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product__list-col">
                                <a href="#" class="product__list-item">
                                    <div class="product__list-item-img">
                                        <img src="./assets/images/products/img16.jpg" alt="chair">
                                    </div>
                                    <div class="product__list-item-body">
                                        <div class="product__list-item-title">
                                            <h3>Kurve Chair</h3>
                                        </div>
                                        <div class="product__item-rating product__list-rating">
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="fas fa-star product__item-rating-current"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <div class="product__list-item-price">
                                            <div class="product__list-price-old">
                                                <p>$75,00</p>
                                            </div>
                                            <div class="product__list-price-current">
                                                <p>$55,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- BEGIN FOOTER-->
        <footer class="footer">
            <div class="footer__top">
                <div class="grid wide">
                    <div class="footer__wrap row">
                        <div class="footer__card col l-3 m-6 c-12">
                            <div>
                                <div class="footer__logo">
                                    <img src="assets/logo--footer.png" alt="logo">
                                </div>
                                <div class="footer__detail">
                                    <p>Exercitation ullamco laboris nisi ut aliquip ex commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                </div>
                            </div>
                            <ul class="social">
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp"></i></a></li>
                            </ul>
                        </div>
                        <div class="footer__card col l-3 m-6 c-12">
                            <h3>
                                Twitter
                            </h3>
                            <div class="footer__2">
                                <i class="fab fa-twitter"></i>
                                <p>
                                    Laboris nisi ut <a href="#">#schön</a> aliquip econse-
                                    quat. <a href="">https://t.co/vreNJ9nEDt</a>
                                </p>
                            </div>
                            <div class="footer__2">
                                <i class="fab fa-twitter"></i>
                                <p>
                                    Ficia deserunt mollit anim id est labo-
                                    rum. incididunt ut labore et dolore
                                    <a href="">https://t.co/vreNJ9nEDt
                                    </a>
                                </p>
                            </div>
                        </div>
                        <div class="footer__card col l-3 m-6 c-12">
                            <h3>
                                Product Tags
                            </h3>
                            <ul class="footer__list">
                                <li> <a href=""> Sofas   </a> </li>
                                <li><a href=""> Armchairs </a> </li>
                                <li><a href=""> Living </a> </li>
                                <li><a href=""> Bedroom </a> </li>
                                <li><a href=""> Lighting </a> </li>
                                <li><a href=""> Tables </a> </li>
                                <li><a href=""> Pouf </a> </li>
                                <li><a href=""> Wood </a> </li>
                                <li><a href=""> Office </a> </li>
                                <li><a href=""> Outdoor </a> </li>
                                <li><a href=""> Kitchen </a> </li>
                                <li><a href=""> Stools </a> </li>
                                <li><a href=""> Footstools </a> </li>
                                <li><a href=""> Desks </a> </li>
                            </ul>
                        </div>
                        <div  class="footer__card footer__last">
                            <h3>Information</h3>
                            <ul>
                                <li><i class="fas fa-map-marker-alt"></i><address>Connaugt Road Central Suite 18B, 148 <br>New Yankee</address></li>
                                <li><a href="">+1 (555) 333 22 11</a><i class="fas fa-phone-alt"></i></li>
                                <li><a href="">info@schon.chair</a><i class="far fa-envelope"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="grid wide">  
                    <div class="footer__bottom">
                        <span>© <a href=""> schön.</a> - All rights Reserved</span>
                        <img src="assets/bank-card.png" alt="">
                    </div>            
                </div>
            </div>
        </footer>
        <!--END FOOTER-->
    </body>
</html>