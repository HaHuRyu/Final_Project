package com.spring.model;

import java.util.List;

public interface BasketDAO {


    public List<BasketDTO> findByuserNo(int user_no);
    public void save(BasketDTO basket);
    public void deleteByuserNoandBookNo(BasketDTO basket);
}
