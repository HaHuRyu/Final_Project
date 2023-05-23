package com.spring.book;

import com.spring.model.*;
import com.spring.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BookController {

    private final BookService bookService;
    private final BookDAO dao;
    private final UserDAO userDAO;
    private final OrderDAO orderDAO;

    @Autowired
    public BookController(BookService bookService, BookDAO dao, UserDAO userDAO, OrderDAO orderDAO) {
        this.bookService = bookService;
        this.dao = dao;
        this.userDAO = userDAO;
        this.orderDAO = orderDAO;
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
    public String book_content(@RequestParam("book_no") int num, Model model) {
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
    public String book_insert_ok() {

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
        } else {
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
    public String category_insert() {
        return "admin-add-category";
    }

    @RequestMapping("category_insert_ok.go")
    public void category_insert_ok(@RequestParam("category_no") int num, @RequestParam("category_name") String Category, @RequestParam("category_detail") String detail, CategoryDTO dto, HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        dto.setCategory_no(num);
        dto.setCategory(Category);
        dto.setCategory_content(detail);

        int service_result = bookService.category_insert_chk(dto.getCategory_no(), dto.getCategory());

        if (service_result == 1) {
            out.println("<script>");
            out.println("alert('카테고리 No.가 중복입니다')");
            out.println("history.back()");
            out.println("</script>");
        } else if (service_result == 2) {
            out.println("<script>");
            out.println("alert('카테고리 이름이 중복입니다')");
            out.println("history.back()");
            out.println("</script>");
        } else {

            int result = this.dao.category_insert(dto);

            if (result > 0) {
                out.println("<script>");
                out.println("alert('등록 되었습니다.')");
                out.println("location.href='category_list.go'");
                out.println("</script>");
            } else {
                out.println("<script>");
                out.println("alert('등록이 실패하였습니다.')");
                out.println("history.back()");
                out.println("</script>");
            }
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
    public void category_modify_ok(@RequestParam("ex_no") int ex_no, @RequestParam("ex_name") String ex_name ,@RequestParam("category_no") int no, @RequestParam("category_name") String Category, @RequestParam("category_detail") String detail, CategoryDTO dto, HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        Map<String, Object> category_map = new HashMap<>();
        category_map.put("ex_no", ex_no);
        category_map.put("category_no", no);
        category_map.put("category_name", Category);
        category_map.put("category_content", detail);

        int service_result = bookService.category_modify_chk(ex_no, no, ex_name, Category);

        if (service_result == 1) {
            out.println("<script>");
            out.println("alert('카테고리 No.가 중복입니다')");
            out.println("history.back()");
            out.println("</script>");
        } else if (service_result == 2) {
            out.println("<script>");
            out.println("alert('카테고리 이름이 중복입니다')");
            out.println("history.back()");
            out.println("</script>");
        } else {

            int result = this.dao.category_modify(category_map);


            if (result > 0) {
                out.println("<script>");
                out.println("alert('수정 되었습니다.')");
                out.println("location.href='category_list.go'");
                out.println("</script>");
            } else {
                out.println("<script>");
                out.println("alert('수정이 실패하였습니다.')");
                out.println("history.back()");
                out.println("</script>");
            }

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
        } else {
            out.println("<script>");
            out.println("alert('삭제가 실패하였습니다.')");
            out.println("history.back()");
            out.println("</script>");
        }
    }

    @RequestMapping("admin_dashboard.go")
    public String Admin_dashboard(Model model){

        int book_count = this.dao.book_count();
        int user_count = this.userDAO.allCount();
        int order_count = this.orderDAO.allCount();
        int order_sale = this.orderDAO.totalSales();

        Map<String, Map<String, Object>> daily_salesMap = this.orderDAO.dailysales();
        Map<String, Object> daily_sales = new HashMap<>();

        for (Map.Entry<String, Map<String, Object>> entry : daily_salesMap.entrySet()) {
            String key = entry.getKey();
            Map<String, Object> valueMap = entry.getValue();

            String day = (String) valueMap.get("dayName");
            BigDecimal countBigDecimal = (BigDecimal) valueMap.get("sale_count");
            Long count = (countBigDecimal != null) ? countBigDecimal.longValue() : null;
            daily_sales.put(day, count);

            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
        }

        List<OrderListDTO> allList = this.orderDAO.allList();

        model.addAttribute("book_count",book_count)
                .addAttribute("user_count", user_count)
                .addAttribute("order_count", order_count)
                .addAttribute("order_sale", order_sale)
                .addAttribute("daily_sales",daily_sales)
                .addAttribute("allList", allList);

        return "admin-dashboard";
    }

}

