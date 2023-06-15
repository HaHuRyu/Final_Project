package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class UsedDAOImpl implements UsedDAO{

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public List<UsedDTO> usedList(PageDTO dto) {
        return this.sqlSession.selectList("all", dto);
    }

    @Override
    public int usedInsert(UsedDTO dto) {
        return this.sqlSession.insert("selleradd", dto);

    }
    @Override
    public UsedDTO usedBookPage(int no){
        return this.sqlSession.selectOne("pick", no);
    }

    @Override
    public int usedBookPay(Map<String, Integer> map) {
        return this.sqlSession.update("minususedmoney", map);
    }

    @Override
    public void usedinputPay(Map map) {

        this.sqlSession.update("plususedmoney", map);
    }

    @Override
    public void sellorder(Map map) {
        this.sqlSession.insert("sellorderadd", map);
    }

    @Override
    public void usedDelete(int no) {
        this.sqlSession.delete("sellerdelete", no);
    }

    @Override
    public int getUsedCount() {
        return this.sqlSession.selectOne("count");
    }

    @Override
    public int getSearchUsedCount(Map map) {
        return this.sqlSession.selectOne("searchcount", map);
    }

    @Override
    public List<UsedDTO> searchUsedList(PageDTO dto) {
        return this.sqlSession.selectList("searchlist", dto);
    }

    @Override
    public int sellerBookDelete(int seller_no) {
       return this.sqlSession.delete("deleteBook", seller_no);
    }


}
