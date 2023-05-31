package com.spring.service;

import com.spring.model.UserDTO;

import javax.servlet.http.HttpServletResponse;

public interface UserService {
    
    // 이메일 발송
    void sendEmail(UserDTO dto, String Temp) throws Exception;

    // 아이디 찾기
    void findId(HttpServletResponse response, UserDTO dto) throws Exception;

    // 비밀번호 찾기
    void findPwd(HttpServletResponse response, UserDTO dto) throws Exception;


}
