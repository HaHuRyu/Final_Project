package com.spring.book;

import com.spring.model.BookDAO;
import com.spring.model.BookDTO;
import com.spring.model.CategoryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class BookController {

    private final BookDAO dao;

    @Autowired
    public BookController(BookDAO dao) {
        this.dao = dao;
    }

    //    도서 관련
    @RequestMapping("book_list.go")
    public String book_list(Model model) {


        // 페이지에 해당하는 게시물을 가져오는 메서드 호출
        List<BookDTO> list = this.dao.book_list();

        model.addAttribute("BookList", list);

        return "admin-books";
    }
    
    // 도서 상세조회
    @RequestMapping("book_content.go")
    public String book_content(@RequestParam("book_no") int num, Model model){
        BookDTO dto = this.dao.book_cont(num);
        model.addAttribute("Book_cont", dto);

        return "book-page";
    }


    // 도서 등록
    @RequestMapping("book_insert.go")
    public String book_insert() {
        return "admin-add-book";
    }
    @RequestMapping("book_insert_ok.go")
    public String book_insert_ok(){

        return "home";
    }

    // 도서 삭제
    @RequestMapping("book_delete.go")
    public void book_delete(@RequestParam("book_no") int num, HttpServletResponse response) throws IOException {
        int result = this.dao.book_delete(num);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (result > 0) {
            out.println("<script>");
            out.println("alert('삭제되었습니다.')");
            out.println("location.href='book_list.go'");
            out.println("</script>");
        }else{
            out.println("<script>");
            out.println("alert('삭제가 실패하였습니다.')");
            out.println("history.back()");
            out.println("</script>");
        }
    }



//    카테고리
    @RequestMapping("category_list.go")
    public String category_list(Model model) {


        // 페이지에 해당하는 게시물을 가져오는 메서드 호출
        List<CategoryDTO> list = this.dao.category_list();

        model.addAttribute("Category_list", list);

        return "admin-category";
    }

    @RequestMapping("category_insert.go")
    public String category_insert(){
        return "admin-add-category";
    }

    @RequestMapping("category_insert_ok.go")
    public void category_insert_ok(@RequestParam("category_no") int num, @RequestParam("category_name") String Category, @RequestParam("category_detail") String detail, CategoryDTO dto, HttpServletResponse response) throws IOException {
        dto.setCategory_no(num);
        dto.setCategory(Category);
        dto.setCategory_content(detail);

        int result = this.dao.category_insert(dto);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (result > 0) {
            out.println("<script>");
            out.println("alert('등록 되었습니다.')");
            out.println("location.href='category_list.go'");
            out.println("</script>");
        }else{
            out.println("<script>");
            out.println("alert('등록이 실패하였습니다.')");
            out.println("history.back()");
            out.println("</script>");
        }
    }

    @RequestMapping("category_modify.go")
    public String category_modify(@RequestParam("category_no") int num, Model model, CategoryDTO dto) {
        dto = this.dao.category_one(num);
        model.addAttribute("Category_DTO", dto);
        return "admin-modify-category";
    }
    
    //아직 수정안됨
    @RequestMapping("category_modify_ok.go")
    public void category_modify_ok(@RequestParam("category_no") int no, @RequestParam("category_name") String Category, @RequestParam("category_detail") String detail, CategoryDTO dto, HttpServletResponse response) throws IOException {
        dto.setCategory_no(no);
        dto.setCategory(Category);
        dto.setCategory_content(detail);

        int result = this.dao.category_modify(dto);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (result > 0) {
            out.println("<script>");
            out.println("alert('수정 되었습니다.')");
            out.println("location.href='category_list.go'");
            out.println("</script>");
        }else{
            out.println("<script>");
            out.println("alert('수정이 실패하였습니다.')");
            out.println("history.back()");
            out.println("</script>");
        }

    }

    @RequestMapping("category_delete.go")
    public void category_delete(@RequestParam("category_no") int num, HttpServletResponse response) throws IOException {
        int result = this.dao.category_delete(num);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (result > 0) {
            out.println("<script>");
            out.println("alert('삭제 되었습니다.')");
            out.println("location.href='category_list.go'");
            out.println("</script>");
        }else{
            out.println("<script>");
            out.println("alert('삭제가 실패하였습니다.')");
            out.println("history.back()");
            out.println("</script>");
        }
    }

}
