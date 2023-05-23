package com.spring.model;

import lombok.Data;

@Data
public class BookDTO {

    private int book_no;
    private int category_no;
    private String book_title;
    private String book_intro;
    private int book_price;
    private String book_image;
    private String book_author;
    private int book_amount;
    private int ISBN;
    private String category_name;

    // 장바구니 출력을 위한 변수 선언 (태우)
    private int book_basketAmount;
    private int book_basketPrice;
    private String book_date;

}
