package com.spring.book;

import com.spring.model.ChatDAO;
import com.spring.model.ChatDTO;
import com.spring.model.ChatListDTO;
import com.spring.model.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ChatController {

    final ChatDAO chatDAO;
    final UserDAO userDAO;

    @Autowired
    public ChatController(ChatDAO chatDAO, UserDAO userDAO) {
        this.chatDAO = chatDAO;
        this.userDAO = userDAO;
    }


    @RequestMapping("chat.go")
    public String chat(@RequestParam("receiveNo") int receive_no, HttpSession session, Model model) {

        int user_no = Integer.parseInt(session.getAttribute("UserNo").toString());
        System.out.println("user_no = " + user_no);
        System.out.println("receiveNo = " + receive_no);
        ChatDTO chatDTO = new ChatDTO();
        chatDTO.setUser_no(user_no);
        // user_no2 는 무조건 메세지 요청을 받는사람
        chatDTO.setUser_no2(receive_no);

        List<ChatDTO> chat = chatDAO.getChat(chatDTO);

        for(ChatDTO chatDTO1 : chat){
            int sent = chatDTO1.getUser_no();
            int receive = chatDTO1.getUser_no2();
            if(sent == user_no) {
                chatDTO1.setSent_name("나");
                chatDTO1.setReceive_name("상대방");
            }else{
                chatDTO1.setSent_name("상대방");
                chatDTO1.setReceive_name("나");
            }
        }

        model.addAttribute("chat", chat).addAttribute("receiveNo", receive_no).addAttribute("userNo", user_no);

        return "chat";
    }

    @RequestMapping("newChat.go")
    public String newChat(HttpServletRequest request, @RequestParam("receiveNo") int receive_no, HttpSession session, Model model, HttpServletResponse response) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();


        String message = request.getParameter("message");
        int user_no = Integer.parseInt(session.getAttribute("UserNo").toString());
        ChatDTO chatDTO = new ChatDTO();
        chatDTO.setUser_no(user_no);
        chatDTO.setUser_no2(receive_no);
        chatDTO.setChat_cont(message);
        chatDAO.newChat(chatDTO);



        List<ChatListDTO> chatList2 = (List<ChatListDTO>) session.getAttribute("chatList");
        for(ChatListDTO chatListDTO : chatList2){
            if(chatListDTO.getOther_user() == receive_no){
                chatListDTO.setLast_chat(message);
            }
        }

        session.setAttribute("chatList", chatList2);

        return "redirect:chat.go?receiveNo="+receive_no;
    }

    @RequestMapping("chat_delete.go")
    public void deleteChat(@RequestParam("receiveNo") int receive_no, HttpServletResponse response,HttpSession session) throws IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        int user_no = Integer.parseInt(session.getAttribute("UserNo").toString());

        Map<String, Integer> map = new HashMap<>();
        map.put("user_no", user_no);
        map.put("user_no2", receive_no);

        chatDAO.deleteChat(map);
        List<ChatListDTO> chatList = (List<ChatListDTO>) session.getAttribute("chatList");

        for (int i = 0; i < chatList.size(); i++) {
            if (chatList.get(i).getOther_user() == receive_no) {
                chatList.remove(i);
            }
        }

        session.setAttribute("chatList", chatList);

        out.println("<script>");
        out.println("alert('채팅방이 삭제되었습니다.');");
        out.println("window.close();");
        out.println("</script>");
    }
}
