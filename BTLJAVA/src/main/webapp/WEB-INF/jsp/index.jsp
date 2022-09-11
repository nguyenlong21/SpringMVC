<%-- 
    Document   : index
    Created on : Sep 9, 2022, 2:33:32 AM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-danger">LQ PALACE</h1>
<ul class="pagination">
    <c:forEach begin="1" end="${Math.ceil(productCounter/6)}" var="page">
        <li class="page-item"><a class="page-link" href="<c:url value="/"/>?page=${page}">${page}</a></li>
    </c:forEach>
  
</ul>
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <div class="row"> 
    <c:forEach var="p" items="${products}">
        <div class="col-md-4 col-xs-12">
            <div class="card">
                <div class="card-body">
                    <a href="<c:url value="/products/${p.id}"/>">
                        <img class="card-img-top img- fluid" src="<c:url value="/images/LQ1.jfif" />">    
                    </a>
                    <div style="text"> <h4 class="card-title " >${p.name}</h4></div>
                   
                    <p class="card-text">${p.price} VND</p>
                    <a href="#" class="btn btn-primary" onclick="addToCart(${p.id}, '${p.name}', ${p.price})">Đặt hàng</a>
                </div>
            </div> 
            
        </div>
    </c:forEach>
</div>
</c:if>

