package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDAOImpl implements BookDAO{

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public List<BookDTO> book_select() {
        return this.sqlSession.selectList("book_all");
    }

    @Override
    public void book_insert(BookDTO book) {

    }

    @Override
    public int book_modify(BookDTO book) {
        return 0;
    }

    @Override
    public void book_delete() {

    }

    @Override
    public int book_status(int status) {
        return 0;
    }

    @Override
    public int total_selling() {
        return 0;
    }

    @Override
    public int day_per_count() {
        return 0;
    }

}
