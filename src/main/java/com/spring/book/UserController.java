package com.spring.book;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.model.UserDAO;
import com.spring.model.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;


@Controller
public class UserController {

    @Autowired
    public UserDAO userDAO;

    @Autowired
    private Upload upload;

    @RequestMapping("home.go")
    public String home() {
        return "home";
    }

    @RequestMapping("login.go")
    public String login() {
        return "sign-in_test";
    }

    @RequestMapping("login_ok.go")
    public void login_ok(@RequestParam("user_id") String id, @RequestParam("user_pwd") String pwd, HttpServletResponse response, HttpServletRequest request) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (id.equals("abc") && pwd.equals("123")) {
            UserDTO dto = userDAO.findByUserId("admin");
            System.out.println(dto.getUser_id());
            System.out.println(dto.getUser_nickname());

            HttpSession session = request.getSession();
            session.setAttribute("UserId", id);

            out.println("<script>");
            out.println("alert('로그인 완료')");
            out.println("location.href='home.go'");
            out.println("</script>");
        } else {
            out.println("<script>");
            out.println("alert('로그인 실패')");
            out.println("history.back()");
            out.println("</script>");
        }
    }

    @RequestMapping("signup.go")
    public String insert() {
        return "sign-up";
    }


    @RequestMapping("insert.ok.go")
    public void insert(HttpServletResponse response,
                       MultipartHttpServletRequest mRequest, HttpServletRequest request) throws IOException {
        System.out.println("Start");

        UserDTO user = new UserDTO();


        String username = mRequest.getParameter("user_name");
        int userno = Integer.parseInt(mRequest.getParameter("user_number"));
        String email = mRequest.getParameter("user_email");
        String userid = mRequest.getParameter("user_id");
        String userpwd = mRequest.getParameter("user_pwd");
        String nickname = mRequest.getParameter("user_nickname");
        String phone = mRequest.getParameter("user_phone");
        String job = mRequest.getParameter("user_job");
        String addr = mRequest.getParameter("user_addr");
        String intro = mRequest.getParameter("user_intro");
        String cate1 = mRequest.getParameter("category1");
        String cate2 = mRequest.getParameter("category2");
        int money = Integer.parseInt(mRequest.getParameter("user_money"));
        String birth = mRequest.getParameter("user_birth");
        String approve = mRequest.getParameter("user_approve");

        /*
        String username = request.getParameter("user_name");
        int userno = Integer.parseInt(request.getParameter("user_number"));
        String email = request.getParameter("user_email");
        String userid = request.getParameter("user_id");
        String userpwd = request.getParameter("user_pwd");
        String nickname = request.getParameter("user_nickname");
        String phone = request.getParameter("user_phone");
        String job = request.getParameter("user_job");
        String addr = request.getParameter("user_addr");
        String intro = request.getParameter("user_intro");
        String cate1 = request.getParameter("category1");
        String cate2 = request.getParameter("category2");
        int money = Integer.parseInt(request.getParameter("user_money"));
        String birth = request.getParameter("user_birth");
        String approve = request.getParameter("user_approve");
        */

        if (this.upload.fileUpload(mRequest)) {
            user.setUser_no(userno);
            user.setUser_name(username);
            user.setUser_email(email);
            user.setUser_id(userid);
            user.setUser_pwd(userpwd);
            user.setUser_nickname(nickname);
            user.setUser_phone(phone);
            user.setUser_job(job);
            user.setUser_addr(addr);
            user.setUser_intro(intro);
            user.setCategory_no(cate1);
            user.setCategory_no2(cate2);
            user.setUser_money(money);
            user.setUser_birth(birth);
            user.setUser_img(this.upload.getImg());
            user.setUser_approve(approve);
        } else {
            user.setUser_no(userno);
            user.setUser_name(username);
            user.setUser_email(email);
            user.setUser_id(userid);
            user.setUser_pwd(userpwd);
            user.setUser_nickname(nickname);
            user.setUser_phone(phone);
            user.setUser_job(job);
            user.setUser_addr(addr);
            user.setUser_intro(intro);
            user.setCategory_no(cate1);
            user.setCategory_no2(cate2);
            user.setUser_money(money);
            user.setUser_birth(birth);
            user.setUser_approve(approve);
        }

        System.out.println("user.getUser_id() = " + user.getUser_id());
        System.out.println("user.getUser_birth() = " + user.getUser_birth());
        System.out.println("user.getUser_money() = " + user.getUser_money());
        System.out.println("user.getUser_pwd() = " + user.getUser_pwd());
        System.out.println("user.getUser_img() = " + user.getUser_img());




        int check = this.userDAO.save(user);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (check > 0) {
            out.println("<script>");
            out.println("alert('회원가입 성공')");
            out.println("location.href='home.go'");
            out.println("</script>");
        } else {
            out.println("<script>");
            out.println("alert('회원가입 실패')");
            out.println("history.back()");
            out.println("</script>");
        }
    }

    @RequestMapping("user_modify.go")
    public String modify(){
        return "user_modify";
    }



}


