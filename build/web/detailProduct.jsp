<%-- 
    Document   : detailProduct
    Created on : May 26, 2023, 1:21:11 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .detail {
                padding: 100px 0;
            }

            .detail__wrap {
                display: flex;
                justify-content: space-between
            }

            .detail__img {
                width: 200%;
                margin-right: 50px;
            }

            .detail__content {
                margin-top: 30px;
            }

            .detail__name {

                font-size: 44px;
                line-height: 46px;
                font-weight: 300;
                letter-spacing: 5px;
                word-spacing: -4px;
                margin: 0 0 15px;
                color: #000;
            }

            .detail__des {
                font-size: 19px;
                padding-bottom: 30px;
                border-bottom: 1px #b6b6b6 solid;
                color: #b6b6b6;
                line-height: 21px;
                font-size: 16px;
                margin-bottom: 60px;
            }

            .detail__price {
                display: block;
                font-size: 30px;
                line-height: 32px;
                font-family: "Montserrat", sans-serif;
                font-weight: 400;
                letter-spacing: -1px;
                color: #000;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="detail">
            <div class="container"> 
                <div class="detail__wrap">
                    <div class="detail__img">
                        <img style='height: auto;
                             width: 100%;' src="${detail.image}">
                    </div>
                    <div class="detail__content">
                        <h1 style="margin-bottom: 50px;" class="detail__name">${detail.name}</h1>
                        <p class="detail__des">${detail.des}</p>
                        <div style="text-align: center; margin-bottom: 30px;" class="product__item-price">
                            <p class="detail__price">${detail.price}$</p>
                        </div>
                        <input type="button" class="btn" data-dismiss="modal" value="Add to card">
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
