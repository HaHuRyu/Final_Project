package com.spring.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ChatDAO {
    List<ChatDTO> getChat(ChatDTO chatDTO);

    void newChat(ChatDTO chatDTO);


    List<ChatListDTO> getChatList(int user_no);

    void deleteChat(Map<String, Integer> map);
}
