package com.spring.model;

import lombok.Data;

@Data
public class ChatDTO {
    int chat_no;
    int user_no;
    int user_no2;
    String chat_cont;
    String sent_name;
    String receive_name;
}
