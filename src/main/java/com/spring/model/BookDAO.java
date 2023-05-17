package com.spring.model;

import java.util.List;

public interface BookDAO {

    public List<BookDTO> book_list(PageDTO dto);

    public BookDTO book_cont(int no);

    public void book_insert(BookDTO book);

    public int book_modify(BookDTO book);

    public int book_delete(int num);

    public int book_status(int status);

    public int total_selling();

    public int day_per_count();

    public int BookListCount();

    public int CategoryCount();

    public List<CategoryDTO> category_list(PageDTO dto);

}
