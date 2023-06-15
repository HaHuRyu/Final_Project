package com.spring.model;

import java.util.List;
import java.util.Map;

public interface BasketDAO {


    public List<BasketDTO> findByuserNo(int user_no);
    public void save(BasketDTO basket);
    public void deleteByuserNoandBookNo(BasketDTO basket);

    public void updateQuantity(BasketDTO basket);

    public void delete(BasketDTO basketDTO);

    public void insert(BasketDTO basketDTO);

    public BasketDTO findByBookNo(BasketDTO basketDTO);

    public void updateSequence(BasketDTO basketDTO);

    public int countBasket(int user_no);

    void deleteByUserNo(int userNo);
}
