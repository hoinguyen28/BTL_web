<%-- 
    Document   : product
    Created on : May 6, 2023, 2:28:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="style/home.css">  
</head>
<body>
    <main>
        <!--begin top-->
        <div class="top">
            <div class="container">
                <div class="top__body">
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
                    <div class="sidebar__filter">
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
                    </div>
                    <!--end filter-->
                    <!--begin CATEGORIES-->
                    <div class="sidebar__categories">
                        <h2>CATEGORIES</h2>
                        <ul>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">chairs</span>
                                    <span class="sidebar__number">12</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">SOFAS</span>
                                    <span class="sidebar__number">24</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">ARMCHAIRS</span>
                                    <span class="sidebar__number">9</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">BEDROOM</span>
                                    <span class="sidebar__number">2</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">LIGHTING</span>
                                    <span class="sidebar__number">17</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">KITCHEN</span>
                                    <span class="sidebar__number">10</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar__name">ACCESSORIES</span>
                                    <span class="sidebar__number">23</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--end CATEGORIES-->
                    <!--begin hotsale-->
                    <div class="sidebar__sale">
                        <h2>HOT SALE</h2>
                        <div class="sidebar__sale1">
                            <div class="sidebar__img">
                                <a href="#">
                                    <img src="./assets/images/products/img02.jpg" alt="ghe dep">
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
                                    <img src="./assets/images/products/img15.jpg" alt="ghe dep">
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
                                    <img src="./assets/images/products/img16.jpg" alt="ghe dep">
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
                                    <img src="./assets/images/products/img12.jpg" alt="ghe dep">
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
                    <ul class="right__bot">
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img22.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Bombi Chair</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>399,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img23.jpg" alt="">
                                            </a>
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Marvelous Modern 3 Seater</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>599,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img24.jpg" alt="">
                                            </a>
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Chair With Armrests</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>200,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img67.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Pouf Chair</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>399,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img68.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Lucky Chair</a></span>
                                    <div class="right__price">
                                        <i></i>
                                        <strong>399,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img24.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Chair With Armrests</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>200,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img70.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Cut Chair With 4 Spoke Base</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>269,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img69.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Cut Chair With 4 Spoke Base</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>269,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="right__large">
                                <div class="right__box">
                                    <div class="right__b1">
                                        <div class="right__b2">
                                            <a href="#">
                                                <img src="./assets/images/products/img71.jpg" alt="">
                                            </a>
                                            <ul class="right__star">
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
                                            <ul class="right__hover">
                                                <li>
                                                    <a href="#">
                                                        <span>Add to Cart</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="far fa-heart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fas fa-exchange-alt"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right__txt">
                                    <span><a href="#">Yard SeChair</a></span>
                                    <div class="right__price">
                                        <i class="fas fa-euro-sign"></i>
                                        <strong>139,00</strong>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!--end bot-->
                    <!--begin page-->
                    <nav class="right__page">
                        <ul>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                        </ul>
                    </nav>
                    <!--end page-->
                </div>
                <!--end right-->
        </div>
        <!--end bottom-->
    </main>
</body>
</html>