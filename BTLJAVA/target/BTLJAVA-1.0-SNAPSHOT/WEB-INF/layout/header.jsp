<%-- 
    Document   : header
    Created on : Sep 9, 2022, 2:34:52 AM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="<c:url value="/"/>">LQ Palace</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
    <!--    <li class="nav-item">
                <a class="nav-link" href="<c:url value="/"/>">Trang chủ</a>
            </li>
            <c:forEach var="c" items="${categories}">
                <li class="nav-item">
                    <c:url value="/" var="catPath">
                        <c:param name="cateId" value="${c.id}"></c:param>
                    </c:url>
                    <a class="nav-link" href="${catPath}">${c.name}</a>
                </li>
            </c:forEach>
            <li class="nav-item">
                <a href="<c:url value="/cart"/>" class="nav-link">
                    <i class="fas fa-cart-plus"></i>
                    <div class="badge badge-danger" id="cartCounter">${cartCounter}</div>
                </a>
            </li>-->
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li class="nav-item">
                    <a href="<c:url value="/login"/>" class="nav-link text-danger">Đăng nhập</a>
                </li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/"/>">Trang chủ</a>
                </li>
                <c:forEach var="c" items="${categories}">
                    <li class="nav-item">
                        <c:url value="/" var="catPath">
                            <c:param name="cateId" value="${c.id}"></c:param>
                        </c:url>
                        <a class="nav-link" href="${catPath}">${c.name}</a>
                    </li>
                </c:forEach>
                <li class="nav-item">
                    <a href="<c:url value="/cart"/>" class="nav-link">
                        <i class="fas fa-cart-plus"></i>
                        <div class="badge badge-danger" id="cartCounter">${cartCounter}</div>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/"/>" class="nav-link text-danger">${pageContext.request.userPrincipal.name}</a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/logout"/>" class="nav-link text-danger">Đăng xuất</a>
                </li>
                <form class="form-inline" action="<c:url value="/"/>">
                    <input class="form-control mr-sm-2" name="kw" type="text" placeholder="Nhập từ khóa...">
                    <button class="btn btn-success" type="submit">Tìm kiếm</button>
                </form>
            </c:if>      
        </ul>     
    </div>
</nav>
