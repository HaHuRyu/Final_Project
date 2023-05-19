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
public class KakaoApiController {

    private final String key = "258d58f60b33a7aad3db9df0b77c5674";
    private final String url = "https://dapi.kakao.com/v3/search/book";


    /**
     * 검색용 API
     */
    @RequestMapping("KakaoApi.go")
    @GetMapping("/search")
    public Map Search(@RequestParam String query) {

        RestTemplate restTemplate = new RestTemplate();

        // JacksonHttpMessageConverter 등록
        MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
        converter.setSupportedMediaTypes(Collections.singletonList(MediaType.ALL));
        restTemplate.getMessageConverters().add(converter);

        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        httpHeaders.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

        httpHeaders.set("Authorization", "KakaoAK " + key);

        HttpEntity<String> httpEntity = new HttpEntity<>(httpHeaders);

        URI targetUrl = UriComponentsBuilder
                .fromUriString(url)
                .queryParam("query", query)
                .build()
                .encode(StandardCharsets.UTF_8)
                .toUri();

        ResponseEntity<Map> result = restTemplate.exchange(targetUrl, HttpMethod.GET, httpEntity, Map.class);


        return result.getBody();
    }
}
