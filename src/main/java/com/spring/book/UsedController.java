package com.spring.book;

import com.spring.model.UsedDAO;
import com.spring.model.UsedDTO;
import com.spring.model.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller
public class UsedController {
    @Autowired
    public UsedDAO dao;

    @RequestMapping("user_gall.go")
    public String usedList(Model model){

        List<UsedDTO> list = dao.usedList();

        model.addAttribute("List", list);

        return "used_board";
    }

    @RequestMapping("seller_add.go")
    public String sellerAdd(){

        return "seller-add-book";
    }

    @RequestMapping("book_add.go")
    public void bookAdd(UsedDTO dto, HttpServletResponse response) throws IOException {

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

        return "seller-book-page";

    }



}
