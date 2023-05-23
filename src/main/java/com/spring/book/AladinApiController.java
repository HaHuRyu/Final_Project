package com.spring.book;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.http.*;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Map;


@RestController
public class AladinApiController {

    @RequestMapping("aladinApi.go")
    @GetMapping("/aladinSearch")
    public Map Search(@RequestParam String isbn) {


        RestTemplate restTemplate = new RestTemplate();

        // JacksonHttpMessageConverter 등록
        MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
        converter.setSupportedMediaTypes(Collections.singletonList(MediaType.ALL));
        restTemplate.getMessageConverters().add(converter);

        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        httpHeaders.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");


        HttpEntity<String> httpEntity = new HttpEntity<>(httpHeaders);

        URI targetUrl = UriComponentsBuilder
                .fromUriString("https://www.aladin.co.kr/ttb/api/ItemLookUp.aspx")
                .queryParam("ttbkey", "ttbdlwjdgml45671143001")
                .queryParam("itemIdType", "ISBN")
                .queryParam("ItemId", isbn)
                .queryParam("output", "js")
                .queryParam("Version", "20131101")
                .queryParam("OptResult", "ebookList,usedList,reviewList")
                .build()
                .toUri();

        ResponseEntity<Map> result = restTemplate.exchange(targetUrl, HttpMethod.GET, httpEntity, Map.class);


        return result.getBody();
    }


    /**
     * 알라딘 이미지 크롤링
     */
    @RequestMapping("aladincrawling.go")
    @GetMapping("aladincrawling")
    public String Crawling(@RequestParam String link) {

        String linkValue = "";

        Document doc = null;
        try {
            doc = Jsoup.connect(link).get();

            Elements element = doc.select("#CoverMainImage");

            String elementHtml = element.toString(); // element를 문자열로 변환
            int srcStartIndex = elementHtml.indexOf("src=\"") + 5; // src 속성 시작 위치
            int srcEndIndex = elementHtml.indexOf("\"", srcStartIndex); // src 속성 종료 위치
            String srcValue = elementHtml.substring(srcStartIndex, srcEndIndex); // src 속성값 추출

            System.out.println("srcValue >>> " + srcValue);

            linkValue = srcValue;

        } catch (IOException e) {
            System.out.println("크롤링 실패 : " + e);
        }


        return linkValue;
    }

}
