package com.spring.model;

import java.util.List;

public interface OrderDAO {
    void save(OrderDTO orderDTO);

    List<OrderDTO> getList(int userNo);

    int get_order_set();
}
