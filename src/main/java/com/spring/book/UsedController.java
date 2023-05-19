package com.spring.book;

import com.spring.model.UsedDAO;
import com.spring.model.UsedDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

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



}
