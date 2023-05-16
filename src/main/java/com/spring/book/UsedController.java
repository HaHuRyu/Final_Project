package com.spring.book;

import com.spring.model.UsedDAO;
import com.spring.model.UsedDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
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

    private String key = "258d58f60b33a7aad3db9df0b77c5674";
    private String url = "https://dapi.kakao.com/v3/search/book";

    @RequestMapping(value = "/kakao", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> callApi(@RequestParam String query){
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders httpHeaders = new HttpHeaders();

        httpHeaders.set("Authorization", "KakaoAK " + key);
        HttpEntity<String> httpEntity = new HttpEntity<String>(httpHeaders);
        String encodedQuery;
        try {
            encodedQuery = "query=" + URLEncoder.encode(query, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            // 인코딩 오류 처리
            encodedQuery = "query=" + query;
        }
        System.out.println("encode >>> " + encodedQuery);
        String targetUrl = url + "?" + encodedQuery;


        ResponseEntity<Map> result = restTemplate.exchange(targetUrl, HttpMethod.GET, httpEntity, Map.class);
        return result.getBody();
    }


    /*@RequestMapping("used_board_search.go")
    public String usedSearch();*/

}
