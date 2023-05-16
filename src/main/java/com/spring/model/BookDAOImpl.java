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
    public List<BookDTO> book_list(PageDTO dto) {
        return this.sqlSession.selectList("book_all", dto);
    }

    @Override
    public BookDTO book_cont(int no) {
        return this.sqlSession.selectOne("book_cont", no);
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

    @Override
    public int BookListCount() {
        return this.sqlSession.selectOne("book_cnt");
    }

    @Override
    public int CategoryCount() {
        return this.sqlSession.selectOne("category_cnt");

    }

    @Override
    public List<CategoryDTO> category_list(PageDTO dto) {
        return this.sqlSession.selectOne("category_all");
    }

}
