package com.spring.book;

import com.spring.model.BookDAO;
import com.spring.model.BookDTO;
import com.spring.model.PageDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookDAO dao;

    private final int rowsize = 9;

    // DB 상의 전체 게시물의 수
    private int totalRecord = 0;

    @RequestMapping("book_list.go")
    public String book_list(HttpServletRequest request,  Model model) {
        // 페이징 처리 작업
        int page;    // 현재 페이지 변수

        if(request.getParameter("page") != null) {
            page =
                    Integer.parseInt(request.getParameter("page"));
        }else {
            // 처음으로 "게시물 전체 목록" 태그를 클릭한 경우
            page = 1;
        }

        // DB 상의 전체 게시물의 수를 확인하는 메서드 호출
        totalRecord = this.dao.BookListCount();

        PageDTO dto  = new PageDTO(page, rowsize, totalRecord);

        // 페이지에 해당하는 게시물을 가져오는 메서드 호출
        List<BookDTO> list = this.dao.book_list(dto);

        model.addAttribute("BookList", list).
                addAttribute("Paging", dto);

        return "";
    }
}
