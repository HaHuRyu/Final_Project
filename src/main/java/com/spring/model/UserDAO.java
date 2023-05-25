package com.spring.model;


import java.util.List;
import java.util.Map;

public interface UserDAO {

    public List<UserDTO> findAll();

    public int allCount();

    public int save(UserDTO user);

    public UserDTO findByUsername(String username);

    public UserDTO findByUserId(String userid);
    public UserDTO findByEmail(String email);

    public UserDTO findByConfirmationToken(String confirmationToken);

    public int update(UserDTO user);

    public int delete(int user);

    public void sequence(int no);





    public void deleteByUsername(String username);

    public void deleteByEmail(String email);

    public void deleteByConfirmationToken(String confirmationToken);

    public void deleteAll();

    public boolean existsByUsername(String username);

    public boolean existsByEmail(String email);

    public boolean existsByConfirmationToken(String confirmationToken);

    public long count();


    public void minusPayment(Map<String,Integer> map);

    int plusPayment(Map<String, Integer> map);

    UserDTO findByUserNo(int user_no);
}
