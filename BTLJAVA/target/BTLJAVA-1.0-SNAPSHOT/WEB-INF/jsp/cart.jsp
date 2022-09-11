<%-- 
    Document   : cart
    Created on : Sep 11, 2022, 1:36:26 AM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-danger">GIỎ HÀNG</h1>
<br></br>
<c:if test="${carts == null}">
    <h4 class=" text-center">Hiện tại không có sản phẩm nào trong giỏ</h4>
</c:if>
<c:if test="${carts != null}">
    <table class="table  table-hover">
        <tr>    
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
        </tr>
        <c:forEach items="${carts}" var="c">
             <tr>
                <td>${c.productId}</td>
                <td>${c.productName}</td>
                <td>${c.price} VND</td>
                <td>
                    <div class="form-group">
                        <input type="number" onblur="updateCart(this)"
                               value="${c.quantity}" class="form-control"/>
                    </div>
                </td>
                <td>
                    <input type="button" onclick="deleteCart(${c.productId})" value="Xóa" class="btn bnt-danger"/>
                </td>
            </tr>
        </c:forEach>       
    </table>
    <div>
        <h4 class="text-danger">Tổng tiền: <span>${amount}</span> VND</h4>
        
    </div>
        <br>
    <input type="button" value="Thanh toán" class="btn btn-danger"/>
</c:if>