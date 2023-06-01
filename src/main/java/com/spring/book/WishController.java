package com.spring.book;

import com.spring.model.*;
import com.spring.service.BasketService;
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

    private final WishDAO wishDAO;
    private final BookDAO bookDAO;
    private final BasketDAO basketDAO;
    private final BasketService basketService;

    @Autowired
    public WishController(WishDAO wishDAO, BookDAO bookDAO, BasketDAO basketDAO, BasketService basketService) {
        this.wishDAO = wishDAO;
        this.bookDAO = bookDAO;
        this.basketDAO = basketDAO;
        this.basketService = basketService;
    }

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
            wishDAO.updateSequence(wishDTO);
            out.println("<script>");
            out.println("location.href='wish.go'");
            out.println("</script>");
            out.close();
        }
    }

    @RequestMapping("wish_move-basket.go")
    public void wish_move_basket(HttpServletResponse response, HttpSession session, Model model, @RequestParam("bookNo") int bookNo) throws IOException {

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
            BasketDTO basketDTO = new BasketDTO();
            basketDTO.setUser_no(userNo);
            basketDTO.setBook_no(bookNo);
            basketDTO.setBook_amount(1);

            if(basketDAO.findByBookNo(basketDTO) != null) {
                out.println("<script>");
                out.println("alert('이미 장바구니에 담긴 책입니다.');");
                out.println("history.back();");
                out.println("</script>");
                out.close();
            }else {
                basketDAO.insert(basketDTO);
                session.setAttribute("BasketList", basketService.basketList(userNo));
                session.setAttribute("BookList", basketService.bookList(userNo));
                session.setAttribute("countBasket", basketDAO.countBasket(userNo));

                out.println("<script>");
                out.println("alert('장바구니 추가 완료');");
                out.println("location.href='basket.go'");
                out.println("</script>");
                out.close();
            }
            
 
        }
    }

    @RequestMapping("wish_add.go")
    public void wish_go(HttpServletResponse response, HttpSession session, @RequestParam("bookNo")int bookNo) throws IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go'");
            out.println("</script>");
            out.close();
        }else{
            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());
            WishDTO wishDTO = new WishDTO();
            wishDTO.setUser_no(userNo);
            wishDTO.setBook_no(bookNo);

            if(wishDAO.findByBookNo(wishDTO) != null) {
                out.println("<script>");
                out.println("alert('이미 위시리스트에 담긴 책입니다.');");
                out.println("history.back();");
                out.println("</script>");
                out.close();
            }else {
                wishDAO.insert(wishDTO);

                out.println("<script>");
                out.println("alert('위시리스트 추가 완료');");
                out.println("location.href='wish.go'");
                out.println("</script>");
                out.close();
            }


        }


    }
}
