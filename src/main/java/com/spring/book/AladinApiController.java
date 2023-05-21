package com.spring.book;

import org.springframework.http.*;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

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

}
