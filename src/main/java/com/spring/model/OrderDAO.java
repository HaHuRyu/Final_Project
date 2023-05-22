package com.spring.model;

import java.util.List;

public interface OrderDAO {
    void save(OrderDTO orderDTO);

    int allCount();

    int totalSales();

    List<OrderDTO> getList(int userNo);
}
