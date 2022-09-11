package com.npl.pojo;

import com.npl.pojo.OrderDetail;
import com.npl.pojo.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-11T12:48:51")
@StaticMetamodel(SaleOrder.class)
public class SaleOrder_ { 

    public static volatile SingularAttribute<SaleOrder, Long> amount;
    public static volatile SingularAttribute<SaleOrder, Date> createdDate;
    public static volatile CollectionAttribute<SaleOrder, OrderDetail> orderDetailCollection;
    public static volatile SingularAttribute<SaleOrder, Integer> id;
    public static volatile SingularAttribute<SaleOrder, User> userId;

}