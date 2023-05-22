package com.spring.book;

import com.spring.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OrderController {

    private final OrderDAO orderDAO;

    private final BasketDAO basketDAO;

    private final BookDAO bookDAO;

    @Autowired
    public OrderController(BasketDAO basketDAO, OrderDAO orderDAO, BookDAO bookDAO) {
        this.basketDAO = basketDAO;
        this.orderDAO = orderDAO;
        this.bookDAO = bookDAO;
    }




    @RequestMapping("order.go")
    public String paymentdetail(HttpSession session, Model model, HttpServletResponse response) throws Exception {

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
            int userNo = Integer.parseInt(session.getAttribute("UserNo").toString());
            List<OrderDTO> orderList = orderDAO.getList(userNo);
            List<BookDTO> bookDTOList = new ArrayList<>();

            for(OrderDTO orderDTO : orderList) {
                BookDTO bookdto = bookDAO.book_cont(orderDTO.getBook_no());
                bookdto.setBook_basketAmount(orderDTO.getOrder_amount());
                bookdto.setBook_date(orderDTO.getOrder_date());
                bookDTOList.add(bookdto);

            }


            model.addAttribute("orderList", orderList).addAttribute("bookDTOList", bookDTOList);
            return "payment-detail";
        }

    }

}
