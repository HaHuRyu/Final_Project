package com.spring.book;



import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.HashMap;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.spring.model.*;
import com.spring.service.BasketService;

import com.spring.model.UserDAO;

import com.spring.model.UserDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Controller
public class UserController {



    @Autowired
    BasketService basketService;

    @Autowired
    public UserDAO userDAO;

    @Autowired
    public BookDAO bookDAO;

    @Autowired
    private Upload upload;

    @Autowired
    private BasketDAO basketDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private ChatDAO chatDAO;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model,HttpSession session) {

        if(session.getAttribute("UserCate1") != null){
            int cate1 = Integer.parseInt(session.getAttribute("UserCate1").toString());
            int cate2 = Integer.parseInt(session.getAttribute("UserCate2").toString());

            List<BookDTO> list = bookDAO.booklist_cate(cate1);
            List<BookDTO> list2 = bookDAO.booklist_cate(cate2);
            CategoryDTO categoryDTO1 = bookDAO.category_one(cate1);
            CategoryDTO categoryDTO2 = bookDAO.category_one(cate2);

            model.addAttribute("catelist1", list).addAttribute("catelist2",list2);
            model.addAttribute("categoryDTO1",categoryDTO1).addAttribute("categoryDTO2",categoryDTO2);
        }

        BookDTO bookDTO = bookDAO.book_cont(199);
        model.addAttribute("bookDTO",bookDTO);

        return "home";
    }

    @RequestMapping("home.go")
    public String home(HttpSession session, Model model) {

        if(session.getAttribute("UserCate1") != null){
            int cate1 = Integer.parseInt(session.getAttribute("UserCate1").toString());
            int cate2 = Integer.parseInt(session.getAttribute("UserCate2").toString());

            List<BookDTO> list = bookDAO.booklist_cate(cate1);
            List<BookDTO> list2 = bookDAO.booklist_cate(cate2);
            CategoryDTO categoryDTO1 = bookDAO.category_one(cate1);
            CategoryDTO categoryDTO2 = bookDAO.category_one(cate2);

            model.addAttribute("catelist1", list).addAttribute("catelist2",list2);
            model.addAttribute("categoryDTO1",categoryDTO1).addAttribute("categoryDTO2",categoryDTO2);
        }

        BookDTO bookDTO = bookDAO.book_cont(199);
        model.addAttribute("bookDTO",bookDTO);

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
        if (dto == null) {
            out.println("<script>");
            out.println("alert('아이디가 존재하지 않습니다.');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
        } else {
            String dbId = dto.getUser_id();
            String dbPwd = dto.getUser_pwd();


            if (dbId.equals(id)) {

                if (dbPwd.equals(pwd)) {
                    HttpSession session = request.getSession();

                    List<CategoryDTO> clist = bookDAO.category_list();

                    int category1 = Integer.parseInt(dto.getCategory_no());
                    int category2 = Integer.parseInt(dto.getCategory_no2());

                    for(CategoryDTO cdto : clist) {
                        if(cdto.getCategory_no() == category1) {
                            session.setAttribute("UserCate1", cdto.getCategory_no());
                        }
                        if(cdto.getCategory_no() == category2) {
                            session.setAttribute("UserCate2", cdto.getCategory_no());
                        }
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


                    session.setAttribute("BasketList", basketService.basketList(dto.getUser_no()));
                    session.setAttribute("BookList", basketService.bookList(dto.getUser_no()));
                    session.setAttribute("countBasket", basketDAO.countBasket(dto.getUser_no()));

                    // 채팅 세션 등록
                    List<ChatListDTO> chatList = chatDAO.getChatList(dto.getUser_no());

                    for(ChatListDTO chatListDTO : chatList) {
                        chatListDTO.setOther_nickName(userDAO.findByUserNo(chatListDTO.getOther_user()).getUser_nickname());
                        chatListDTO.setOther_img(userDAO.findByUserNo(chatListDTO.getOther_user()).getUser_img());
                    }
                    session.setAttribute("chatList", chatList);



                    out.println("<script>");
                    out.println("alert('로그인 성공');");
                    out.println("location.href='home.go';");
                    out.println("</script>");
                    out.close();
                } else {
                    out.println("<script>");
                    out.println("alert('비밀번호가 틀립니다.');");
                    out.println("history.back();");
                    out.println("</script>");
                    out.close();
                }

            } else {
                out.println("<script>");
                out.println("alert('아이디가 존재하지 않습니다.');");
                out.println("history.back();");
                out.println("</script>");
                out.close();
            }


        }


    }

    @RequestMapping("signup.go")
    public String insert(Model model) {
        List<CategoryDTO> list = bookDAO.category_list();
        System.out.println(list.get(0).getCategory_no());
        System.out.println(list.get(0).getCategory_content());
        System.out.println(list.get(1).getCategory_no());
        System.out.println(list.get(1).getCategory_content());
        model.addAttribute("category", list);
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
    public String modify(HttpSession session,HttpServletResponse response , Model model) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        String userId;
        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
        } else {
            userId = (String) session.getAttribute("UserId");
            UserDTO userDTO = userDAO.findByUserId(userId);
            model.addAttribute("user",userDTO );
        }


        return "user_modify";
    }

    @RequestMapping("modify.ok.go")
    public void modifyOk(HttpServletResponse response,
                         MultipartHttpServletRequest Request, HttpServletRequest request) throws IOException{

        System.out.println("Start");

        UserDTO modi = new UserDTO();


        String name = Request.getParameter("name");
        int usernumber = Integer.parseInt(Request.getParameter("number"));
        String useremail = Request.getParameter("email");
        String id = Request.getParameter("id");
        String pwd = Request.getParameter("password");
        String usernickname = Request.getParameter("nickname");
        String userphone = Request.getParameter("phone");
        String userjob = Request.getParameter("job");
        String useraddr = Request.getParameter("addr");
        String userintro = Request.getParameter("intro");
        String usercate1 = Request.getParameter("cate1");
        String usercate2 = Request.getParameter("cate2");
        int usermoney = Integer.parseInt(Request.getParameter("money"));
        String userbirth = Request.getParameter("birth");
        String userapprove = Request.getParameter("approve");

        if (this.upload.fileUpload(Request)) {
            modi.setUser_no(usernumber);
            modi.setUser_name(name);
            modi.setUser_email(useremail);
            modi.setUser_id(id);
            modi.setUser_pwd(pwd);
            modi.setUser_nickname(usernickname);
            modi.setUser_phone(userphone);
            modi.setUser_job(userjob);
            modi.setUser_addr(useraddr);
            modi.setUser_intro(userintro);
            modi.setCategory_no(usercate1);
            modi.setCategory_no2(usercate2);
            modi.setUser_money(usermoney);
            modi.setUser_birth(userbirth);
            modi.setUser_img(this.upload.getImg());
            modi.setUser_approve(userapprove);
        } else {
            modi.setUser_no(usernumber);
            modi.setUser_name(name);
            modi.setUser_email(useremail);
            modi.setUser_id(id);
            modi.setUser_pwd(pwd);
            modi.setUser_nickname(usernickname);
            modi.setUser_phone(userphone);
            modi.setUser_job(userphone);
            modi.setUser_addr(useraddr);
            modi.setUser_intro(userintro);
            modi.setCategory_no(usercate1);
            modi.setCategory_no2(usercate2);
            modi.setUser_money(usermoney);
            modi.setUser_birth(userbirth);
            modi.setUser_approve(userapprove);
        }

        int check = this.userDAO.update(modi);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (check > 0) {
            out.println("<script>");
            out.println("alert('정보수정 성공')");
            out.println("location.href='home.go'");
            out.println("</script>");
        } else {
            out.println("<script>");
            out.println("alert('정보수정 실패')");
            out.println("history.back()");
            out.println("</script>");
        }

    }

    @RequestMapping("user.delete.go")
    public void delete(@RequestParam("user_no")int user_no, HttpServletResponse response)throws IOException {

        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();

        int check = this.userDAO.delete(user_no);

        if (check > 0) {

            this.userDAO.sequence(user_no);

            out.println("<script>");
            out.println("alert('회원탈퇴 성공')");
            out.println("location.href='home.go'");
            out.println("</script>");
        } else {
            out.println("<script>");
            out.println("alert('회원탈퇴 실패')");
            out.println("history.back()");
            out.println("</script>");
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


        if (session.getAttribute("UserId") == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location.href='login.go';");
            out.println("</script>");
            out.close();
            return null;
        } else {
            userDAO.findByUserId((String) session.getAttribute("UserId"));
            model.addAttribute("dto", userDAO.findByUserId((String) session.getAttribute("UserId")));
            return "profile";
        }


    }


    @RequestMapping("pay.go")
    public String pay(HttpSession session, Model model, HttpServletRequest request) throws IOException {


        List<BasketDTO> basketDTOList = (List<BasketDTO>) session.getAttribute("BasketList");
        List<BookDTO> bookDTOList = (List<BookDTO>) session.getAttribute("BookList");

        int count = Integer.parseInt(session.getAttribute("countBasket").toString());
        int last_set = orderDAO.get_order_set() + 1;
        System.out.println("last_set : " + last_set);

        for(int i = 0; i < count; i++){
            OrderDTO orderDTO = new OrderDTO();
            orderDTO.setOrder_amount(bookDTOList.get(i).getBook_basketAmount());
            orderDTO.setBook_no(bookDTOList.get(i).getBook_no());
            orderDTO.setUser_no(Integer.parseInt(session.getAttribute("UserNo").toString()));
            orderDTO.setOrder_price(bookDTOList.get(i).getBook_price());
            orderDTO.setOrder_set(last_set);
            orderDAO.save(orderDTO);
        }

        Date currentDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(currentDate);
        for (int i = 0; i < bookDTOList.size(); i++){
            BookDTO bookDTO = bookDTOList.get(i);
            bookDTO.setBook_date(formattedDate);
            bookDTOList.set(i, bookDTO);
        }



        Map<String ,Integer> map = new HashMap<>();
        map.put("user_no", Integer.parseInt(session.getAttribute("UserNo").toString()));
        map.put("bp", Integer.parseInt(request.getParameter("bp")));

        userDAO.minusPayment(map);
        basketDAO.deleteByUserNo(Integer.parseInt(session.getAttribute("UserNo").toString()));

        model.addAttribute("bookdto", bookDTOList).addAttribute("basketdto", basketDTOList);


        session.setAttribute("UserMoney",userDAO.findByUserId((String) session.getAttribute("UserId")).getUser_money());
        session.setAttribute("BasketList", basketService.basketList(Integer.parseInt(session.getAttribute("UserNo").toString())));
        session.setAttribute("BookList", basketService.bookList(Integer.parseInt(session.getAttribute("UserNo").toString())));
        session.setAttribute("countBasket", basketDAO.countBasket(Integer.parseInt(session.getAttribute("UserNo").toString())));



        return "pages-invoice";
    }

    @RequestMapping("payment.go")
        public String payment(HttpSession session){

        return "payment";
        }


    @RequestMapping("charge.go")
    public void charge(UserDTO dto ,HttpServletResponse response, HttpServletRequest request,HttpSession session) throws IOException {

        int money = Integer.parseInt(request.getParameter("charge"));
        int userno = Integer.parseInt(session.getAttribute("UserNo").toString());

        Map<String, Integer> map = new HashMap<>();
        map.put("user_no", userno);
        map.put("money", money);

        int check = this.userDAO.plusPayment(map);

            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();

            if (check > 0) {
                session.setAttribute("UserMoney",userDAO.findByUserId((String)session.getAttribute("UserId")).getUser_money());
                out.println("<script>");
                out.println("alert('충전 성공')");
                out.println("location.href='home.go'");
                out.println("</script>");
            } else {
                out.println("<script>");
                out.println("alert('충전 실패')");
                out.println("history.back()");
                out.println("</script>");
            }

        }




}

