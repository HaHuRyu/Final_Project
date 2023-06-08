package com.spring.book;

import com.spring.model.BookDAO;
import com.spring.model.CategoryDTO;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import java.util.List;

@Aspect
@Component
public class Aop {

    private final BookDAO bookDAO;

    @Autowired
    public Aop(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @Around("execution(* com.spring.book.*Controller.*(..))")
    public Object addDbDataAttribute(ProceedingJoinPoint joinPoint) throws Throwable {

        // DB 데이터 가져오기
        List<CategoryDTO> cate_List = bookDAO.category_list();

        Object[] args = joinPoint.getArgs();
        for (Object arg : args) {
            if (arg instanceof Model) {
                Model model = (Model) arg;
                model.addAttribute("Cate_List", cate_List);
                break;
            }
        }

        // 메소드 실행
        Object result = joinPoint.proceed();

        return result;
    }
}


