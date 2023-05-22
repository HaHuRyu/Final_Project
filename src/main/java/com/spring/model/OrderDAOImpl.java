package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class OrderDAOImpl implements OrderDAO {
    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public void save(OrderDTO orderDTO) {
        this.sqlSession.insert("orderInsert", orderDTO);
    }

    @Override
    public int allCount() {
        return this.sqlSession.selectOne("allCount");
    }

    @Override
    public int totalSales() {
        return this.sqlSession.selectOne("totalSales");
    }

    @Override
    public List<OrderDTO> getList(int user_no) {
        return this.sqlSession.selectList("orderList", user_no);
    }
}
