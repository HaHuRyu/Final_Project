package com.spring.book;


import java.io.IOException;
import java.io.PrintWriter;

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


@Controller
public class  UserController {

	@Autowired
	public UserDAO userDAO;

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

}
