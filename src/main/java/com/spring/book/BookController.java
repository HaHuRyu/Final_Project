package com.spring.book;

import com.spring.model.BookDAO;
import com.spring.model.BookDTO;
import com.spring.model.CategoryDTO;
import com.spring.model.PageDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookDAO dao;

    private final int rowsize = 10;

    // DB 상의 전체 게시물의 수
    private int totalRecord = 0;

//    도서 관련
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

        return "admin-books";
    }
    
    // 도서 상세조회
    @RequestMapping("book_content.go")
    public String book_content(@RequestParam("book_no") int num, HttpServletRequest request, Model model){
        BookDTO dto = this.dao.book_cont(num);
        model.addAttribute("Book_cont", dto);

        return "book-page";
    }


//    카테고리
    @RequestMapping("category_list.go")
    public String category_list(HttpServletRequest request, Model model) {
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
        totalRecord = this.dao.CategoryCount();

        PageDTO dto  = new PageDTO(page, rowsize, totalRecord);

        // 페이지에 해당하는 게시물을 가져오는 메서드 호출
        List<CategoryDTO> list = this.dao.category_list(dto);

        model.addAttribute("Category_list", list).
                addAttribute("Paging", dto);

        return "admin-category";
    }

}
