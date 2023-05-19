package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BasketDAOImpl implements BasketDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;


    @Override
    public List<BasketDTO> findByuserNo(int user_no) {
        return this.sqlSession.selectList("basketFindByUserNo", user_no);
    }

    @Override
    public void save(BasketDTO basket) {
    }

    @Override
    public void deleteByuserNoandBookNo(BasketDTO basket) {
    }

    @Override
    public void updateQuantity(BasketDTO basket) {
        this.sqlSession.update("basketUpdateQuantity", basket);
    }
}
