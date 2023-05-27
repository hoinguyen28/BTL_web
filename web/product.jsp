<%-- 
    Document   : product
    Created on : May 6, 2023, 2:28:04 PM
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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">       
    </head>
    <body>
        <main>
            <jsp:include page="header.jsp"/>
            <!--begin top-->
            <div class="top" style='background-image: url("assets/img100.jpg"); background-position: 50% 100%'>
                <div class="container">
                    <div class="top__body" style='margin-top: 74px;'>
                        <h1>CHAIRS</h1>
                        <nav class="top__body--path">
                            <ul>
                                <li>
                                    <a href="#">Home</a>
                                    <i class="fa fa-angle-right"></i>
                                </li>
                                <li>
                                    <a href="#">Products</a>
                                    <i class="fa fa-angle-right"></i>
                                </li>
                                <li>Chairs</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!--end top-->
            <!--begin sidebar-->
            <div class="container">
                <div class="sidebar">
                    <!--begin filter-->
                    <!--                    <div class="sidebar__filter">
                                            <h2>filter</h2>
                                            <p>Filter by Brands</p>
                                            <ul>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">Casali</label>
                                                    <span class="sidebar__number">2</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">Decar</label>
                                                    <span class="sidebar__number">12</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">Fanitini</label>
                                                    <span class="sidebar__number">4</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">flamentstyle</label>
                                                    <span class="sidebar__number">4</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">Heerenhuis</label>
                                                    <span class="sidebar__number">2</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">Hoffmann</label>
                                                    <span class="sidebar__number">10</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="#">Italfloor</label>
                                                    <span class="sidebar__number">3</span>
                                                </li>
                                            </ul>
                                            <p>Filter by Price</p>
                                            <div class="sidebarm__oney">
                                                <div class="sidebar__boder">
                                                    <span class="sidebar__dot"></span>
                                                    <span class="sidebar__dot dot2"></span>
                                                </div>
                    
                                                <span class="sidebar__price">price &nbsp; $10 &nbsp; - &nbsp; $599</span>
                                                <a class="sidebar__button" href="#">filter</a>
                                            </div>
                                        </div>-->
                    <!--end filter-->
                    <!--begin CATEGORIES-->
                    <div class="sidebar__categories">
                        <h2 style='font-size: 30px;margin-bottom: 20px'>CATEGORIES</h2>
                        <ul>
                            <c:forEach items = "${dataC}" var = "o">
                                <li style='margin: 0 0 18px;'>
                                <a href="category?cid=${o.cid} ">
                                    <span class="sidebar__name">${o.cname}</span>
                                </a>
                            </li>
                             </c:forEach>
                        </ul>
                    </div>
                    <!--end CATEGORIES-->
                    <!--begin hotsale-->
                    <div class="sidebar__sale">
                        <h2>HOT SALE</h2>
                        <div class="sidebar__sale1">
                            <div class="sidebar__img">
                                <a href="#">
                                    <img src="assets/image02.jpg" alt="ghe dep">
                                </a>
                            </div>
                            <div class="sidebar__text">
                                <div class="sidebar__farm">
                                    <span><a href="#">Egon Wooden Chair</a></span>
                                    <ul class="sidebar__star">
                                        <li>
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li>
                                            <i class="far fa-star"></i>
                                        </li>
                                    </ul>
                                </div>
                                <del class="sidebar__off">$75,00</del>
                                <div class="sidebar__hot">$55,00</div>
                            </div>
                        </div>
                        <div class="sidebar__sale1">
                            <div class="sidebar__img">
                                <a href="#">
                                    <img src="assets/img15.jpg" alt="ghe dep">
                                </a>
                            </div>
                            <div class="sidebar__text">
                                <div class="sidebar__farm">
                                    <span><a href="#">Oyo Cantilever Chair</a></span>
                                </div>
                                <del class="sidebar__off">$75,00</del>
                                <div class="sidebar__hot">$55,00</div>
                            </div>
                        </div>
                        <div class="sidebar__sale1">
                            <div class="sidebar__img">
                                <a href="#">
                                    <img src="assets/img16.jpg" alt="ghe dep">
                                </a>
                            </div>
                            <div class="sidebar__text">
                                <div class="sidebar__farm">
                                    <span><a href="#">Kurve Chair</a></span>
                                    <ul class="sidebar__star">
                                        <li>
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li>
                                            <i class="far fa-star"></i>
                                        </li>
                                    </ul>
                                </div>
                                <del class="sidebar__off">$75,00</del>
                                <div class="sidebar__hot">$55,00</div>
                            </div>
                        </div>
                        <div class="sidebar__sale1">
                            <div class="sidebar__img">
                                <a href="#">
                                    <img src="assets/img12.jpg" alt="ghe dep">
                                </a>
                            </div>
                            <div class="sidebar__text">
                                <div class="sidebar__farm">
                                    <span><a href="#">Marvelous Wooden Chair</a></span>
                                </div>
                                <del class="sidebar__off">$75,00</del>
                                <div class="sidebar__hot">$55,00</div>
                            </div>
                        </div>
                    </div>
                    <!--end  hotsale-->
                </div>    
                <!--end sidebar-->
                <!--begin right-->
                <div class="right">
                    <!--begin headder-->
                    <div class="right__header">
                        <div class="right__box">
                            <ul class="right__line">
                                <li>
                                    <a href="#" class="right__link1" >Default Sorting </a>
                                    <div class="right__drop">
                                        <ul class="right__unstyled">
                                            <li>
                                                <a href="#">ASC</a>
                                            </li>
                                            <li>
                                                <a href="#">DSC</a>
                                            </li>
                                            <li>
                                                <a href="#">PRICE</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="right__link" href="#">
                                        <i class="fas fa-th-large"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="right__link">
                                        <i class="fas fa-th-list"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="right__text">
                            <p>Showing 
                                <span>1–9</span> 
                                of 
                                <span>65</span>  
                                results </p>
                            <p>View 
                                <a href="#">9</a>
                                /
                                <a href="#">18</a>
                                /
                                <a href="#">27</a>
                                /
                                <a href="#">ALL</a>
                            </p>
                        </div>
                    </div>
                    <!--end header-->
                    <!--begin bot-->
                    <div style='justify-content: space-between; margin-bottom: 20px' class="right__bot">
                        <c:forEach items = "${requestScope.dataP}" var ="o">
                            <div class="col">
                                <div class="product__item active l-12 m-12 c-12" >
                                    <div style='margin-left: 0px;' class="product__item-img">
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
                                            <ul style='background-color: white;'>
                                                <li style='width: auto;padding: 0;'><a href="#" class="product__link"><i class="fas fa-shopping-bag"></i><span>Add to Cart</span></a></li>
                                                <li style='width: auto;padding: 0;'><a href="#" class="product__link-item" ><i class="far fa-heart"></i></a></li>
                                                <li style='width: auto;padding: 0;'><a href="#" class="product__link-item" ><i class="fas fa-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!--end bot-->
                    <!--begin page-->
                    <!--end page-->
                </div>
                <!--end right-->
            </div>
            <!--end bottom-->
            <jsp:include page="footer.jsp"/>
        </main>
    </body>
</html>