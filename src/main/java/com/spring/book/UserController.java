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
import org.springframework.stereotype.Repository;
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



		UserDTO dto = userDAO.findByUserId(id);
		if(dto == null) {
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}else{
			String dbId = dto.getUser_id();
			String dbPwd = dto.getUser_pwd();


			if(dbId.equals(id)) {

				if(dbPwd.equals(pwd)){
					HttpSession session = request.getSession();

					if(dto.getCategory_no().equals("0")){
						session.setAttribute("UserCate1", "소설");
					}else if (dto.getCategory_no().equals("100")) {
						session.setAttribute("UserCate1", "요리");
					}else if(dto.getCategory_no().equals("200")){
						session.setAttribute("UserCate1", "경제");
					}else if (dto.getCategory_no().equals("300")) {
						session.setAttribute("UserCate1", "정치/사회");
					}else if (dto.getCategory_no().equals("400")) {
						session.setAttribute("UserCate1", "컴퓨터/IT");
					}else if (dto.getCategory_no().equals("500")) {
						session.setAttribute("UserCate1", "잡지");
					}else if (dto.getCategory_no().equals("600")) {
						session.setAttribute("UserCate1", "참고서");
					}else if (dto.getCategory_no().equals("700")) {
						session.setAttribute("UserCate1", "여행");
					}else if (dto.getCategory_no().equals("800")) {
						session.setAttribute("UserCate1", "만화");
					}

					if(dto.getCategory_no2().equals("0")){
						session.setAttribute("UserCate2", "소설");
					}else if (dto.getCategory_no2().equals("100")) {
						session.setAttribute("UserCate2", "요리");
					}else if(dto.getCategory_no2().equals("200")){
						session.setAttribute("UserCate2", "경제");
					}else if (dto.getCategory_no2().equals("300")) {
						session.setAttribute("UserCate2", "정치/사회");
					}else if (dto.getCategory_no2().equals("400")) {
						session.setAttribute("UserCate2", "컴퓨터/IT");
					}else if (dto.getCategory_no2().equals("500")) {
						session.setAttribute("UserCate2", "잡지");
					}else if (dto.getCategory_no2().equals("600")) {
						session.setAttribute("UserCate2", "참고서");
					}else if (dto.getCategory_no2().equals("700")) {
						session.setAttribute("UserCate2", "여행");
					}else if (dto.getCategory_no2().equals("800")) {
						session.setAttribute("UserCate2", "만화");
					}

					session.setAttribute("UserNo", dto.getUser_no());
					session.setAttribute("UserId", id);
					session.setAttribute("UserMoney", dto.getUser_money());
					session.setAttribute("UserName", dto.getUser_name());
					session.setAttribute("UserNick", dto.getUser_nickname());
					session.setAttribute("UserAppr", dto.getUser_approve());
					session.setAttribute("UserEmail", dto.getUser_email());
					session.setAttribute("UserPhone", dto.getUser_phone());
					session.setAttribute("UserAddr", dto.getUser_addr());
					session.setAttribute("UserBirth", dto.getUser_birth());
					session.setAttribute("UserJob", dto.getUser_job());
					session.setAttribute("UserIntro", dto.getUser_intro());
					session.setAttribute("UserImg", dto.getUser_img());



					out.println("<script>");
					out.println("alert('로그인 성공');");
					out.println("location.href='home.go';");
					out.println("</script>");
					out.close();
				}else{
					out.println("<script>");
					out.println("alert('비밀번호가 틀립니다.');");
					out.println("history.back();");
					out.println("</script>");
					out.close();
				}

			}else{
				out.println("<script>");
				out.println("alert('아이디가 존재하지 않습니다.');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
		}



	}

	@RequestMapping("logout.go")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}

	@RequestMapping("profile.go")
	public String profile(HttpSession session, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();


		if(session.getAttribute("UserId") == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location.href='login.go';");
			out.println("</script>");
			out.close();
			return null;
		}else{
			userDAO.findByUserId((String)session.getAttribute("UserId"));
			model.addAttribute("dto", userDAO.findByUserId((String)session.getAttribute("UserId")));
			return "profile";
		}


	}
}