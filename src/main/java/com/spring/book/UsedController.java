package com.spring.book;

import com.spring.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.*;
import java.util.HashMap;
import java.util.Map;


@Controller
public class UsedController {
    @Autowired
    public UsedDAO dao;

    public UserDAO udao;

    private final int rowsize = 4;

    private int totalRecord = 0;

    @RequestMapping("user_gall.go")
    public String usedList(Model model, HttpServletRequest request){

        int page;

        if(request.getParameter("page") != null) {
            page =
                    Integer.parseInt(request.getParameter("page"));
        }else {
            page = 1;
        }

        // DB 상의 전체 게시물의 수를 확인하는 메서드 호출
        totalRecord = this.dao.getUsedCount();

        PageDTO dto =
                new PageDTO(page, rowsize, totalRecord);

        // 페이지에 해당하는 게시물을 가져오는 메서드 호출
        List<UsedDTO> list = this.dao.usedList(dto);

        model.addAttribute("List", list).
                addAttribute("Paging", dto);


        return "used_board";
    }

    @RequestMapping("seller_add.go")
    public String sellerAdd(){

        return "seller-add-book";
    }

    @RequestMapping("book_add.go")
    public void bookAdd(UsedDTO dto, HttpServletResponse response,@RequestParam("seller_file")String file) throws IOException {

        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();

        int check = this.dao.usedInsert(dto);


        if(check > 0) {
            out.println("<script>");
            out.println("alert('책 등록이 완료 되었습니다.')");
            out.println("location.href='user_gall.go'");
            out.println("</script>");
        } else {
            out.println("<script>");
            out.println("alert('책 등록에 실패 하였습니다')");
            out.println("history.back()");
            out.println("</script>");
        }

    }

    @RequestMapping("book_page.go")
    public String bookPage(@RequestParam("seller_no") int no, Model model){

        UsedDTO dto = this.dao.usedBookPage(no);

        System.out.println("dto.getSeller_no >>> "+ dto.getSeller_no());

        model.addAttribute("Dto",dto);
        model.addAttribute("No", no);

        return "seller-book-page";

    }

    @RequestMapping("used_book_pay.go")
    public void usedBookPay(@RequestParam("sellno") int sellno, @RequestParam("sellprice") int price, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {

        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();

        int userMoney = 0;

        if (session.getAttribute("UserMoney") != null) {
            userMoney = (int) session.getAttribute("UserMoney");
        } else{
            out.println("<script>");
            out.println("alert('로그인 먼저 해주세요.')");
            out.println("history.back()");
            out.println("</script>");
        }

        if(userMoney >= price){
            Map<String, Integer> map = new HashMap();
            map.put("user_no", Integer.parseInt(session.getAttribute("UserNo").toString()));
            map.put("sell_no", sellno);

            dao.usedBookPay(map);

            userMoney -= price;

            session.setAttribute("UserMoney", userMoney);

            Map<String, Integer> map2 = new HashMap();
            map2.put("sell_no", sellno);
            map2.put("price", price);

            dao.usedinputPay(map2);

            Map<String, Integer> map3 = new HashMap();
            map3.put("sell_no", sellno);
            map3.put("user_no", Integer.parseInt(session.getAttribute("UserNo").toString()));

            dao.sellorder(map3);

            dao.usedDelete(sellno);


            out.println("<script>");
            out.println("alert('구매가 완료되었습니다.')");
            out.println("history.back()");
            out.println("</script>");

        } else {
            out.println("<script>");
            out.println("alert('금액이 부족합니다')");
            out.println("history.back()");
            out.println("</script>");
        }


    }



}
