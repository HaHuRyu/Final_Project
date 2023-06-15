package com.spring.service;

import com.spring.model.UserDAO;
import com.spring.model.UserDTO;
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


@Service
@Component
public class UserServiceImpl implements UserService{

    @Value("${hostSMTPid}")
    private String hostSMTPid;

    @Value("${hostSMTPpwd}")
    private String hostSMTPpwd;

    private final UserDAO userDAO;

    @Autowired
    public UserServiceImpl(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    public void sendEmail(UserDTO dto, String Temp) throws Exception {

        // Mail Server 설정
        String charSet = "utf-8";
        String hostSMTP = "smtp.gmail.com"; //네이버 이용시 smtp.naver.com


        // 보내는 사람 EMail, 제목, 내용
        String fromEmail = "ReadPlus@book.book";
        String fromName = "ReadPlus";
        String subject = "";
        String msg = "";

        if(Temp.equals("findPwd")) {
            subject = "[ReadPlus] 임시 비밀번호 안내";
            msg += "<h1>임시 비밀번호 안내</h1><br><br>";
            msg += "<p>안녕하세요,</p><br>";
            msg += String.format("<p>임시 비밀번호 : <b>%s</b></p>", dto.getUser_pwd()) + "<br>";
            msg += "<p>위 임시 비밀번호를 사용하여 로그인하신 후, 마이 페이지에서 새로운 비밀번호를 설정해주시기 바랍니다.</p><br>";
            msg += "<p>감사합니다.</p><br>";
            msg += "<p>[ReadPlus]</p>";

        } else if(Temp.equals("findId")) {
            subject = "[ReadPlus] 아이디 찾기 안내";
            msg += "<h1>임시 비밀번호 안내</h1><br><br>";
            msg += "<p>안녕하세요,</p><br>";
            msg += String.format("<p>아이디 : <b>%s</b></p>", dto.getUser_id()) + "<br>";
            msg += "<p>위 임시 비밀번호를 사용하여 로그인하신 후, 마이 페이지에서 새로운 비밀번호를 설정해주시기 바랍니다.</p><br>";
            msg += "<p>감사합니다.</p><br>";
            msg += "<p>[ReadPlus]</p>";
        }

        // 받는 사람 E-Mail 주소
        String mail = dto.getUser_email();

        try {
            HtmlEmail email = new HtmlEmail();
            email.setHostName(hostSMTP);
            email.setSmtpPort(465);
            email.setAuthenticator(new DefaultAuthenticator(hostSMTPid, hostSMTPpwd)); // 발신자 이메일 주소와 비밀번호 입력
            email.setSSLOnConnect(true);
            email.setCharset(charSet);

            email.setFrom(fromEmail, fromName);
            email.addTo(mail);
            email.setSubject(subject);
            email.setHtmlMsg(msg);

            email.send();


        } catch (Exception e) {

            System.out.println("메일발송 실패 : " + e);
        }
    }

    @Override
    public void findId(HttpServletResponse response, UserDTO dto) throws Exception {
        
        response.setContentType("text/html;charset=utf-8");

        PrintWriter out = response.getWriter();

        UserDTO foundDTO = userDAO.findByName_Email(dto);

        // 가입된 이름과 이메일이 일치하지 않으면
        if (foundDTO == null) {
            out.print("등록되지 않은 아이디 혹은 이메일 입니다.");
            out.close();

        } else {

            // 아이디 확인 메일 발송
            sendEmail(foundDTO, "findId");

            out.print("이메일로 회원님의 아이디를 발송하였습니다.");

            out.close();
        }
    }

    @Override
    public void findPwd(HttpServletResponse response, UserDTO dto) throws Exception {


        response.setContentType("text/html; charset=utf-8");

        UserDTO dto1 = userDAO.findByUserId(dto.getUser_id());

        PrintWriter out = response.getWriter();

        // 가입된 아이디가 없으면
        if (userDAO.idCheck(dto.getUser_id()) == null) {
            out.print("등록되지 않은 아이디입니다.");
            out.close();
        }

        // 가입된 이메일이 아니면
        else if (!dto.getUser_email().equals(dto1.getUser_email())) {
            out.print("등록되지 않은 이메일입니다.");
            out.close();

        } else {
            // 임시 비밀번호 생성
            StringBuilder pw = new StringBuilder();
            for (int i = 0; i < 12; i++) {
                pw.append((char) ((Math.random() * 26) + 97));
            }

            dto.setUser_pwd(pw.toString());

            // 비밀번호 변경
            userDAO.updatePwd(dto);

            // 비밀번호 변경 메일 발송
            sendEmail(dto, "findPwd");

            out.print("이메일로 임시 비밀번호를 발송하였습니다.");

            out.close();
        }
    }
}
