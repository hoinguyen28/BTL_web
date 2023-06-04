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
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style/home.css">
        <title>Schon</title>
    </head>
    <body>
        <div class="app">
            <jsp:include page="header.jsp"/>
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
                                            <div style='margin-left: 0px;' class="product__item-img">
                                                <a style='cursor: pointer;' href="detailProduct?pid=${o.id}">
                                                    <img src="${o.image}" alt="lounge chair">
                                                </a>
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
                                                    <ul style='background-color: white;'>
                                                        <li><a href="#" class="product__link"><i class="fas fa-shopping-bag"></i><span>Add to Cart</span></a></li>
                                                        <li><a href="#" class="product__link-item" ><i class="far fa-heart"></i></a></li>
                                                        <li><a style="cursor: pointer;" href="detailProduct?pid=13" class="product__link-item" ><i class="fas fa-eye"></i></a></li>
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
        <jsp:include page="footer.jsp"/>
    </body>
</html>