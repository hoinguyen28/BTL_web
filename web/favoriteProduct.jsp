<%-- 
    Document   : favoriteProduct
    Created on : Jun 13, 2023, 2:41:32 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>Hello World!</h1>
        <div class="product__content">
            <div class="row active product__row">
                <c:forEach items = "${requestScope.listf}" var ="o">
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
                                        <li><a href="deleteFavoriteProduct?pid=${o.id}" class="product__link-item" ><i class="far fa-heart"></i></a></li>
                                        <li><a style="cursor: pointer;" href="#" class="product__link-item" ><i class="fas fa-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
