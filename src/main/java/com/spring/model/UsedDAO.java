package com.spring.model;

import org.springframework.stereotype.Controller;

import java.util.List;

public interface UsedDAO {

    public List<UsedDTO> usedList();

    public int usedInsert(UsedDTO dto);

    public UsedDTO usedBookPage(int no);

}
