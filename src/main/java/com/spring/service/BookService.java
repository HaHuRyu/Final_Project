package com.spring.service;


public interface BookService {

    public int book_insert_chk();

    public int book_update_chk(int no);

    public int category_update_chk(int no);

    public int category_insert_chk(int no, String name);

}
