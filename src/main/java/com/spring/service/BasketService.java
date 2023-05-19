package com.spring.service;

import com.spring.model.BasketDTO;
import com.spring.model.BookDTO;

import java.util.List;
import java.util.Map;

public interface BasketService {
    List<BasketDTO> basketList(int userNo);


    void updateQuantity(BasketDTO basket);
}
