package com.spring.model;

import lombok.Data;

@Data
public class OrderDTO {
    private int order_no;
    private int user_no;
    private int book_no;
    private int order_price;
    private int order_amount;
    private String order_date;
    private int order_set;
}
