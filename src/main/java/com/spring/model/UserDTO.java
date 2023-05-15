package com.spring.model;

import lombok.*;


public class UserDTO {
    private int user_no;
    private String user_id;
    private String user_pwd;
    private String user_name;
    private String user_nickname;
    private String user_email;
    private String user_phone;
    private String user_birth;
    private String user_approve;
    private int user_money;
    private String category_no;
    private String category_no2;

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_nickname() {
        return user_nickname;
    }

    public void setUser_nickname(String user_nickname) {
        this.user_nickname = user_nickname;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_birth() {
        return user_birth;
    }

    public void setUser_birth(String user_birth) {
        this.user_birth = user_birth;
    }

    public String getUser_approve() {
        return user_approve;
    }

    public void setUser_approve(String user_approve) {
        this.user_approve = user_approve;
    }

    public int getUser_money() {
        return user_money;
    }

    public void setUser_money(int user_money) {
        this.user_money = user_money;
    }

    public String getCategory_no() {
        return category_no;
    }

    public void setCategory_no(String category_no) {
        this.category_no = category_no;
    }

    public String getCategory_no2() {
        return category_no2;
    }

    public void setCategory_no2(String category_no2) {
        this.category_no2 = category_no2;
    }
}
