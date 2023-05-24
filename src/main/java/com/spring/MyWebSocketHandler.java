package com.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.concurrent.atomic.AtomicInteger;

public class MyWebSocketHandler extends TextWebSocketHandler {


    private final AtomicInteger onlineCounter = new AtomicInteger();

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @Override
    public void afterConnectionEstablished(WebSocketSession session) {
        onlineCounter.incrementAndGet();
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) {
        // 메시지를 처리하는 데 필요한 로직을 추가하세요.
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) {
        onlineCounter.decrementAndGet();

    }
}
