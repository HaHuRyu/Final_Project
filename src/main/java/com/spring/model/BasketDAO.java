package com.spring.model;

import java.util.List;
import java.util.Map;

public interface BasketDAO {


    public List<BasketDTO> findByuserNo(int user_no);
    public void save(BasketDTO basket);
    public void deleteByuserNoandBookNo(BasketDTO basket);

    public void updateQuantity(BasketDTO basket);
}
