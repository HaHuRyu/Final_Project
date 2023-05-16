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

}
