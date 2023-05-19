package com.spring.service;

import com.spring.model.BookDAO;
import com.spring.model.BookDTO;
import com.spring.model.CategoryDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{

    private final BookDAO bookDAO;

    @Autowired
    public BookServiceImpl(BookDAO bookDAO, SqlSessionTemplate sqlSessionTemplate) {
        this.bookDAO = bookDAO;
    }


    @Override
    public int book_insert_chk() {
        return 0;
    }

    @Override
    public int book_update_chk(int no) {
        return 0;
    }

    @Override
    public int category_update_chk(int no) {
        return 0;
    }

    @Override
    public int category_insert_chk(int no, String name) {
        int no_result = this.bookDAO.category_insert_NoChk(no);
        int name_result = this.bookDAO.category_insert_NameChk(name);

        if(no_result > 0 ){

        }

        return 0;
    }


}
