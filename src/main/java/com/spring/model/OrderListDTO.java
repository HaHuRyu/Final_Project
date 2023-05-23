package com.spring.model;

import lombok.Data;

@Data
public class OrderListDTO {
    private int order_set;
    private String total_order_price;
    private String user_name;
    private String order_date;
}
