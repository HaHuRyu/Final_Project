package com.spring.book;

import com.spring.model.BasketDAO;
import com.spring.model.BasketDTO;
import com.spring.model.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class BasketController {

    @Autowired
    BasketDAO basketDAO;
    UserDTO userDTO;


    @RequestMapping("basket.go")
    public String basket(Model model, HttpSession session, HttpServletResponse response) throws Exception {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();


        if(session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
        }else{
            BasketDTO dto = new BasketDTO();
            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());
            List<BasketDTO> list = basketDAO.findByuserNo(userNo);
            model.addAttribute("basketList", list);

            return "Checkout";
        }


    }

}
