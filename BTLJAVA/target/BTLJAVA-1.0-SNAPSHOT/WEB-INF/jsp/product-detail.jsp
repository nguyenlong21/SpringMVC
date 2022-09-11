<%-- 
    Document   : product-detail
    Created on : Sep 9, 2022, 1:30:13 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-md-6">
        <img class ="card-img-top img-fluid" src="<c:url value="/images/LQ1.jfif"/>"/>
    </div>
    <div class="col-md-6">
        <h1>${product.name}</h1>
        <h3 class="text-danger">${product.price} VND</h3>
        <p>${product.description}</p>
        <div>
            <input onclick="addToCart(${product.id}, '${product.name}', ${product.price})" type="button" value="Đặt hàng" class="btn btn-danger"/>
        </div>
    </div>
</div>
        <br></br>
<form>
    <div class="form-group">        
        <textarea class="form-control" placeholder="Bạn đánh giá thế nào về sản phẩm..."></textarea>
        <h1></h1>
        <input type="submit" value="Gửi đánh giá" class="btn btn-success"/>
    </div>
</form>
        <br></br>
        <div class="row">
            <div class="col-md-2">
                <img class="rounded-circle img-fluid" src="<c:url value="/images/W.jpg"/>"/>
            </div>
            <div class="col-md-10">
                <p>Tuyet voi</p>
                <i>1/9/2022<i>
            </div>
        </div>
            <h1></h1>
                    <div class="row">
            <div class="col-md-2">
                <img class="rounded-circle img-fluid" src="<c:url value="/images/W.jpg"/>"/>
            </div>
            <div class="col-md-10">
                <p>Tuyet voi</p>
                <i>1/9/2022<i>
            </div>
        </div>