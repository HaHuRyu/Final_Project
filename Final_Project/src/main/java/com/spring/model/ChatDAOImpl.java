package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository
public class ChatDAOImpl implements ChatDAO{


    private final SqlSessionTemplate sqlSession;

    public ChatDAOImpl(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List<ChatDTO> getChat(ChatDTO chatDTO) {
        return this.sqlSession.selectList("getChat", chatDTO);
    }

    @Override
    public void newChat(ChatDTO chatDTO) {
        this.sqlSession.insert("newChat", chatDTO);
    }

    @Override
    public List<ChatListDTO> getChatList(int user_no) {
        return this.sqlSession.selectList("getChatList", user_no);
    }

    @Override
    public void deleteChat(Map<String, Integer> map) {
        this.sqlSession.delete("deleteChat", map);
    }
}
