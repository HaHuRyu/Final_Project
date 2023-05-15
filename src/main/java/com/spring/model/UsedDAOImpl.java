package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import java.util.List;

@Repository
public class UsedDAOImpl implements UsedDAO{

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public List<UsedDTO> usedList() {
        return this.sqlSession.selectList("all");
    }
}
