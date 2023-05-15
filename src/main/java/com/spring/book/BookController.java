package com.spring.book;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class BookController {

    @RequestMapping("book_list.go")
    public String book_list(Model model) {
        
    }
}
