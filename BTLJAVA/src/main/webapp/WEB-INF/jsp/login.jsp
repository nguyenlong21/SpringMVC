<%-- 
    Document   : login
    Created on : Sep 11, 2022, 11:39:25 AM
    Author     : Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-danger">ĐĂNG NHẬP</h1>

<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        Đã có lỗi xảy ra, vui lòng quay lại sau!
    </div>
</c:if>

<c:url value="/login" var="action"/>
<form method="post" action="${action}">
    <div class="form-group">
        <label>Username</label>
        <input type="text" id ="username" name="username" class="form-control"/>
    </div>
        <div class="form-group">
        <label>Password</label>
        <input type="password" id ="password" name="password" class="form-control"/>
    </div>
    <div class="form-group">
        <input type="submit" value="Đăng nhập" class="btn btn-danger"/>
    </div>
</form>
