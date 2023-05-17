package com.spring.service;

import com.spring.model.BasketDAO;
import com.spring.model.BasketDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class BasketServiceImpl implements BasketService {

    @Autowired
    private BasketDAO basketDAO;
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<BasketDTO> basketList(int userNo) {
        return this.basketDAO.findByuserNo(userNo);
    }

    @Override
    public void updateQuantity(BasketDTO basket) {
        this.basketDAO.updateQuantity(basket);
    }
}
