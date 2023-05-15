package com.spring.model;

import java.util.List;

public interface BookDAO {

    public List<BookDTO> book_select();

    public void book_insert(BookDTO book);

    public int book_modify(BookDTO book);

    public void book_delete();

    public int book_status(int status);

    public int total_selling();

    public int day_per_count();

}
