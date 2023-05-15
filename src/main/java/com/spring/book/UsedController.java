package com.spring.book;

import com.spring.model.UsedDAO;
import com.spring.model.UsedDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

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

}
