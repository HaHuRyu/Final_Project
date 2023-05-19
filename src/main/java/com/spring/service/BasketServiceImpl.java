package com.spring.service;

import com.spring.model.BasketDAO;
import com.spring.model.BasketDTO;
import com.spring.model.BookDAO;
import com.spring.model.BookDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Service
public class BasketServiceImpl implements BasketService {

    @Autowired
    private BasketDAO basketDAO;

    @Autowired
    private BookDAO bookDAO;


    @Override
    public List<BasketDTO> basketList(int userNo) {


        List<BasketDTO> list = basketDAO.findByuserNo(userNo);
        List<BookDTO> blist = new <BookDTO>ArrayList();



        return list;
    }

    @Override
    public List<BookDTO> bookList(int userNo) {

        List<BasketDTO> list = basketDAO.findByuserNo(userNo);
        List<BookDTO> blist = new <BookDTO>ArrayList();

        if (list.size() != 0) {
            for (BasketDTO basketDTO : list) {
                BookDTO book = bookDAO.book_cont(basketDTO.getBook_no());
                blist.add(book);
                book.setBook_basketPrice(book.getBook_price() * basketDTO.getBook_amount());
                book.setBook_basketAmount(basketDTO.getBook_amount());
            }
        }
        return blist;
    }

    @Override
    public void updateQuantity(BasketDTO basket) {

    }


}
