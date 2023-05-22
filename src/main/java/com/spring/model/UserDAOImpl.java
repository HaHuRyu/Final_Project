package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;



    @Override
    public int save(UserDTO user) {

       return this.sqlSession.insert("add" , user);
    }

    @Override
    public UserDTO findByUsername(String username) {
        return null;
    }

    @Override
    public UserDTO findByUserId(String userid){
        return this.sqlSession.selectOne("contOne", userid);
    }
    @Override
    public UserDTO findByEmail(String email) {
        return null;
    }

    @Override
    public UserDTO findByConfirmationToken(String confirmationToken) {
        return null;
    }

    @Override
    public int update(UserDTO user) {

        return this.sqlSession.update("modi" , user);
    }

    @Override
    public int delete(int no) {

        return this.sqlSession.delete("delete",no);

    }

    @Override
    public void sequence(int no) {
        this.sqlSession.update("seq",no);

    }



    @Override
    public void deleteByUsername(String username) {

    }

    @Override
    public void deleteByEmail(String email) {

    }

    @Override
    public void deleteByConfirmationToken(String confirmationToken) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public boolean existsByUsername(String username) {
        return false;
    }

    @Override
    public boolean existsByEmail(String email) {
        return false;
    }

    @Override
    public boolean existsByConfirmationToken(String confirmationToken) {
        return false;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public int plusPayment(Map<String, Integer> map) {
        return this.sqlSession.update("pluspayment", map);
    }
}
