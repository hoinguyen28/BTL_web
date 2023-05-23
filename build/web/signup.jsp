<%-- 
    Document   : addProdduct
    Created on : May 21, 2023, 4:00:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/home.css">     
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="style/addProduct.css">
    </head>
    <body>
        <div id="signup" class="modal">
            <div style='width: 30%;' class="modal-content"> 
                <h6 style='text-align: center; margin-bottom: 30px; font-size: 25px;' class="login__account-title">SIGN IN</h6>
                <p style='margin-bottom: 18px;' class="login__account-desc">Create your very own account</p>
                <form id="addProductForm" action="signup" method="post">
                    <input name="userName" type="text" class="login__form__control" placeholder="Username">
                    <input name="email" type="text" class="login__form__control" placeholder="Email address">
                    <input name="name" type="text" class="login__form__control" placeholder="Full name">
                    <input name="phone" type="text" class="login__form__control" placeholder="Phone number">
                    <input name="address" type="text" class="login__form__control" placeholder="Address">
                    <input name="password" type="text" class="login__form__control" placeholder="Password">
                    <input  type="text" class="login__form__control" placeholder="cd">
                    <a href="home">         
                        <input style='margin-top: 15px;' type="button" class="btn" data-dismiss="modal" value="Cancel">
                    </a>
                    <input type="submit" class="btn" value="Login">
                </form>
            </div>
        </div>
    </body>
</html>
