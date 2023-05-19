package com.spring.book;

import com.spring.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class WishController {

    @Autowired
    private WishDAO wishDAO;

    @Autowired
    private BookDAO bookDAO;

    @RequestMapping("wish.go")
    public String wish(HttpServletResponse response, HttpSession session, Model model) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go'");
            out.println("</script>");
            out.close();
            return null;
        } else {
            // 로그인 상태일시
            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());
            List<WishDTO> list = wishDAO.findByuserNo(userNo);
            List<BookDTO> blist = new <BookDTO>ArrayList();

            if (list.size() != 0) {
                for (WishDTO wishDTO : list) {
                    BookDTO book = bookDAO.book_cont(wishDTO.getBook_no());
                    blist.add(book);
                }
            }

            model.addAttribute("wishList", list);
            model.addAttribute("bookList", blist);

            return "wishlist";
        }
    }

    @RequestMapping("wish_delete.go")
    public void wish_delete(HttpServletResponse response, HttpSession session, Model model, @RequestParam("bookNo") int bookNo) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go'");
            out.println("</script>");
            out.close();
        } else {
            // 로그인 상태일시
            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());
            WishDTO wishDTO = new WishDTO();
            wishDTO.setUser_no(userNo);
            wishDTO.setBook_no(bookNo);
            wishDAO.delete(wishDTO);
            out.println("<script>");
            out.println("location.href='wish.go'");
            out.println("</script>");
            out.close();
        }
    }

}
