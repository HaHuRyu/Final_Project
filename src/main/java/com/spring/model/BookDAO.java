package com.spring.model;

import java.util.List;
import java.util.Map;

public interface BookDAO {

    public int book_count();

    public List<BookDTO> book_list();

    public BookDTO book_cont(int no);

    public void book_insert(BookDTO book);

    public int book_modify(BookDTO book);

    public int book_delete(int num);

    public int book_status(int status);

    public int total_selling();

    public int day_per_count();

    public List<CategoryDTO> category_list();

    public int category_delete(int no);

    public CategoryDTO category_one(int num);

    public int category_modify(Map< String, Object> category);

    public int category_insert(CategoryDTO dto);

    public int category_NoChk(int no);

    public int category_NameChk(String name);

}
