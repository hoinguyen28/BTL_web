<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
                margin-top: 25px;
            }

            th, td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #f2f2f2;
            }

            .tr {
                text-align: right;
            }
            form {
                display: inline;
            }

            h1 {
                text-align: center;
            }

            h3 {
                text-align: right;
                margin-right: 30px;
            }

            hr {
                border: none;
                border-top: 1px solid #ddd;
                margin: 20px 0;
            }

            .center {
                text-align: center;
                width: 100%;
            }

            .quantity {
                display: flex;
                align-items: center;
            }

            .quantity button {
                margin: 0 5px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <center>
                <h1>Cart</h1>
                <table>
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total money</th>
                        <th>Action</th>
                    </tr>
                    <c:set var="o" value="${requestScope.cart}" />
                    <c:set var="tt" value="0"/>
                    <c:forEach items="${o.items}" var="i">
                        <c:set var="tt" value="${tt+1}"/>
                        <tr>
                            <td>${tt}</td>
                            <td>${i.product.name}</td>
                            <td class="quantity">
                                <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                                ${i.quantity}
                                <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                            </td>
                            <td class="tr">${i.price}</td>
                            <td class="tr">${i.price*i.quantity}</td>
                            <td class="center">
                                <form action="process" method="post">
                                    <input class="btn" type="hidden" name="id" value="${i.product.id}">
                                    <input class="btn" type="submit" value="return item"/>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <h3 class="center">Total money: $ ${o.totalMoney}</h3>
                <hr>
                <form action="checkout" method="post" class="center">
                    <input type="submit" value="Check Out">
                </form>
                <hr>
                <div class="center">
                    <a href="home">Back to Home Page</a>
                </div>
            </center>
        </div>
        <%--<jsp:include page="footer.jsp.jsp"/>--%>
    </body>
</html>
