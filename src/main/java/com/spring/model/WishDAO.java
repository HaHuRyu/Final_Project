package com.spring.model;

import java.util.List;

public interface WishDAO {
    public List<WishDTO> findByuserNo(int user_no);
    public void save(WishDTO wishDTO);

    public void updateQuantity(WishDTO wish);

    public void delete(WishDTO WishDTO);

    public void insert(WishDTO WishDTO);

    public WishDTO findByBookNo(WishDTO WishDTO);

    public void updateSequence(WishDTO WishDTO);
}
