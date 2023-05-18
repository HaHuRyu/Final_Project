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
    public List<BookDTO> book_list() {
        return this.sqlSession.selectList("book_all");
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
    public int book_delete(int num) {
        int result = this.sqlSession.delete("book_del", num);
        return result;
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
    };

    @Override
    public List<CategoryDTO> category_list() {
        return this.sqlSession.selectList("category_all");
    }

    @Override
    public CategoryDTO category_one(int num) {
        return this.sqlSession.selectOne("category_one");
    }

    @Override
    public int category_modify(int no, CategoryDTO dto) {
        return this.sqlSession.update("category_modify");
    }

    @Override
    public int category_insert(CategoryDTO dto) {
        return this.sqlSession.insert("category_add",dto);
    }

    @Override
    public int category_delete(int no) {
        return this.sqlSession.delete("category_del",no);
    }



}
