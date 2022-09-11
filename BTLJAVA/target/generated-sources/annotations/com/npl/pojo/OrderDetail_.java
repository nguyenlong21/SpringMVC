package com.npl.pojo;

import com.npl.pojo.Product;
import com.npl.pojo.SaleOrder;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-11T12:48:51")
@StaticMetamodel(OrderDetail.class)
public class OrderDetail_ { 

    public static volatile SingularAttribute<OrderDetail, Long> unitPrice;
    public static volatile SingularAttribute<OrderDetail, Product> productId;
    public static volatile SingularAttribute<OrderDetail, SaleOrder> orderId;
    public static volatile SingularAttribute<OrderDetail, String> num;
    public static volatile SingularAttribute<OrderDetail, Integer> id;

}