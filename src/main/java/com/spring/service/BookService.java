package com.spring.service;


public interface BookService {

    public int book_insert_chk();

    public int book_update_chk(int no);


    public int category_insert_chk(int no, String name);

    public int category_modify_chk(int no, int ex_no, String ex_name, String name);

}
