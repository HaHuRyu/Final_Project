package com.spring.book;

import com.spring.model.*;
import com.spring.service.BasketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class BasketController {

    @Autowired
    BasketService basketService;

    @Autowired
    private BookDAO bookDAO;

    @Autowired
    private BasketDAO basketDAO;


    @RequestMapping("basket.go")
    public String basket(Model model, HttpSession session, HttpServletResponse response) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();


        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
        } else {
            // 로그인 상태일시


            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());

            List<BasketDTO> list = basketDAO.findByuserNo(userNo);
            List<BookDTO> blist = new <BookDTO>ArrayList();

            if (list.size() != 0) {
                for (BasketDTO basketDTO : list) {
                    BookDTO book = bookDAO.book_cont(basketDTO.getBook_no());
                    blist.add(book);
                    book.setBook_basketPrice(book.getBook_price() * basketDTO.getBook_amount());
                    book.setBook_basketAmount(basketDTO.getBook_amount());
                }
            }

            model.addAttribute("basketList", list);
            model.addAttribute("bookList", blist);

            return "Checkout";
        }
    }

    @RequestMapping("updateQuantity.go")
    public String updateQuantity(HttpSession session, HttpServletResponse response, @RequestParam("bookNo") int bookNo, @RequestParam("quantity") int bookAmount, @RequestParam("su") String su) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
        } else {
            // 로그인 상태일시

            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());

            BasketDTO basketDTO = new BasketDTO();
            basketDTO.setUser_no(userNo);
            basketDTO.setBook_no(bookNo);



            if (su.equals("plus")) {
                basketDTO.setBook_amount(++bookAmount);
                basketDAO.updateQuantity(basketDTO);
            } else if (su.equals("minus")) {
                if (bookAmount == 1) {
                    out.println("<script>");
                    out.println("alert('최소 수량은 1개입니다.');");
                    out.println("history.back();");
                    out.println("</script>");
                    out.close();
                    return null;
                } else {
                    basketDTO.setBook_amount(--bookAmount);
                    basketDAO.updateQuantity(basketDTO);

                }

            }

            session.setAttribute("BasketList", basketService.basketList(userNo));
            session.setAttribute("BookList", basketService.bookList(userNo));

            return "redirect:basket.go";
        }
    }

    @RequestMapping("basket_delete.go")
    public String basket_delete(HttpSession session, HttpServletResponse response, @RequestParam("bookNo") int bookNo) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
        } else {
            // 로그인 상태일시

            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());

            BasketDTO basketDTO = new BasketDTO();
            basketDTO.setUser_no(userNo);
            basketDTO.setBook_no(bookNo);

            basketDAO.delete(basketDTO);
            basketDAO.updateSequence(basketDTO);

            session.setAttribute("BasketList", basketService.basketList(userNo));
            session.setAttribute("BookList", basketService.bookList(userNo));

            return "redirect:basket.go";
        }
    }

    @RequestMapping("basket_header_delete.go")
    public void basket_header_delete(HttpSession session,HttpServletResponse response,@RequestParam("bookNo") int bookNo) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
        } else {
            // 로그인 상태일시

            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());

            BasketDTO basketDTO = new BasketDTO();
            basketDTO.setUser_no(userNo);
            basketDTO.setBook_no(bookNo);

            basketDAO.delete(basketDTO);

            session.setAttribute("BasketList", basketService.basketList(userNo));
            session.setAttribute("BookList", basketService.bookList(userNo));

            out.println("<script>");
            out.println("history.back();");
            out.println("window.location.reload();");
            out.println("</script>");
        }
    }

    // 책을 장바구니에 추가 (장바구니에 있을 시 예외처리)
    @RequestMapping("basket_insert.go")
    public String basket_insert(HttpSession session, HttpServletResponse response, @RequestParam("bookNo") int bookNo) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
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
                return null;
            }

            basketDAO.insert(basketDTO);

            session.setAttribute("BasketList", basketService.basketList(userNo));
            session.setAttribute("BookList", basketService.bookList(userNo));

            return null;
        }
    }
}

