package com.spring.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public class WishDAOImpl implements WishDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<WishDTO> findByuserNo(int user_no) {
        return this.sqlSession.selectList("wishFindByUserNo", user_no);
    }

    @Override
    public void save(WishDTO wishDTO) {

    }



    @Override
    public void updateQuantity(WishDTO wish) {

    }

    @Override
    public void delete(WishDTO WishDTO) {
        this.sqlSession.delete("wishDelete", WishDTO);
    }

    @Override
    public void insert(WishDTO WishDTO) {

    }

    @Override
    public WishDTO findByBookNo(WishDTO WishDTO) {
        return null;
    }

    @Override
    public void updateSequence(WishDTO WishDTO) {

    }
}
