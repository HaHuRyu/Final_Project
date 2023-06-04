package com.spring.model;

import org.springframework.stereotype.Controller;

import java.util.List;

public interface UsedDAO {

    public List<UsedDTO> usedList();

    public int usedInsert(UsedDTO dto);

    public UsedDTO usedBookPage(int no);

<<<<<<< HEAD
    public int usedBookPay(Map<String, Integer> map);

    public void usedinputPay(Map map);

    public void sellorder(Map map);

    public void usedDelete(int no);
    public int getUsedCount();

    public int getSearchUsedCount(Map map);

    public List<UsedDTO> searchUsedList(PageDTO dto);

=======
>>>>>>> parent of a3a120a (Merge remote-tracking branch 'origin/LJH_Back' into GM_bak)
}
