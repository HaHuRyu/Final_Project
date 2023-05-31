package com.spring.model;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;

public interface UsedDAO {

    public List<UsedDTO> usedList(PageDTO dto);

    public int usedInsert(UsedDTO dto);

    public UsedDTO usedBookPage(int no);

    public int usedBookPay(Map<String, Integer> map);

    public void usedinputPay(Map map);

    public void sellorder(Map map);

    public void usedDelete(int no);

    public int getUsedCount();

}
