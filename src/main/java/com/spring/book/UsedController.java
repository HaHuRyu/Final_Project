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

    private final int rowsize = 16;

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


    @RequestMapping("used_board_search.go")
    public String search(Model model,
                         @RequestParam("field") String field,
                         @RequestParam("keyword") String keyword,
                         HttpServletRequest request, HttpServletResponse response) {

        response.setContentType("text/html; charset=UTF-8");

        // 검색 페이징 처리 작업
        int page;    // 현재 페이지 변수

        if(request.getParameter("page") != null) {
            page =
                    Integer.parseInt(request.getParameter("page"));
        }else {
            // 처음으로 "게시물 전체 목록" 태그를 클릭한 경우
            page = 1;
        }

        // 검색분류와 검색어에 해당하는 게시글의 수를
        // DB에서 확인하는 작업
        Map<String, String> map =
                new HashMap<String, String>();

        map.put("field", field);
        map.put("keyword", keyword);

        totalRecord = this.dao.getSearchUsedCount(map);

        System.out.println("검색 게시물 수 >>> " + totalRecord);

        PageDTO pdto =
                new PageDTO(page, rowsize, totalRecord, field, keyword);

        // 검색 시 한 페이지당 보여질 게시물의 수만큼 검색한
        // 게시물을 List로 가져오는 메서드 호출
        List<UsedDTO> searchList =
                this.dao.searchUsedList(pdto);


        model.addAttribute("searchPageList", searchList).
                addAttribute("Paging", pdto);

        return "used_search_board";
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





}
