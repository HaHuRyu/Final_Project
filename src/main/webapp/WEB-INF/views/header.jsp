<%@ page import="com.spring.model.UserDAO" %>
<%@ page import="com.spring.model.UserDTO" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.spring.model.UserDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<div class="wrapper">
    <!-- Sidebar  -->

    <!-- 상단 a태그에 aria-expanded="true" 설정, li 태그에 class="active active-menu" 추가, 내부 li에 class="active" 추가-->
    <div class="iq-sidebar">
        <div class="iq-sidebar-logo d-flex justify-content-between">
            <a href="<%=request.getContextPath()%>/" class="header-logo">
                <img src="${path}/resources/images/logo.png" class="img-fluid rounded-normal" alt="">
                <div class="logo-title">
                    <span class="text-primary text-uppercase">ReadPlus</span>
                </div>
            </a>
            <div class="iq-menu-bt-sidebar">
                <div class="iq-menu-bt align-self-center">
                    <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="sidebar-scrollbar">
            <nav class="iq-sidebar-menu">
                <ul id="iq-sidebar-toggle" class="iq-menu">
                    <li><a href="home.go"><i class="las la-house-damage"></i>홈페이지</a></li>
                    <li>

                        <a href="#category" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span
                                class="ripple rippleEffect"></span><i class="ri-function-line"></i><span>카테고리</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="category" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <%--<c:forEach items="${sessionScope.categoryy}" var="dto">
                            <li><a href="search.go?query=${dto.category}"><i class="ri-arrow-right-s-fill"></i>${dto.category}</a></li>
                            </c:forEach>--%>
                            <c:forEach items="${Cate_List}" var="dto">
                            <li><a href="search.go?query=${dto.category}"><i class="ri-arrow-right-s-fill"></i>${dto.category}</a></li>
                            </c:forEach>
                        </ul>

                    </li>
                    <c:if test="${sessionScope.UserId.equals('admin')}">
                    <li>
                        <a href="#admin" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span
                                class="ripple rippleEffect"></span><i class="ri-admin-line"></i><span>관리자</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="admin" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li><a href="admin_dashboard.go"><i class="ri-dashboard-line"></i>대시보드</a></li>
                            <li><a href="category_list.go"><i class="ri-list-check-2"></i>카테고리 목록</a></li>
                            <li><a href="book_list.go"><i class="ri-book-2-line"></i>도서 목록</a></li>
                            <li><a href="user_list.go"><i class="las la-th-list"></i>회원 관리</a></li>
                        </ul>
                    </li>
                    </c:if>
                    <li>
                        <a href="#userinfo" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span
                                class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>내 정보 관리</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="userinfo" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle" style="">
                            <li><a href="<%=request.getContextPath()%>/profile.go"><i class="las la-id-card-alt"></i>프로필</a></li>
                            <li><a href="<%=request.getContextPath() %>/user_modify.go"><i class="las la-edit"></i>회원정보 관리</a></li>
                            <li><a href="<%=request.getContextPath()%>/order.go"><i class="ri-heart-line"></i>주문 내역</a></li>
                            <li><a href="<%=request.getContextPath()%>/basket.go"><i class="ri-checkbox-multiple-blank-line"></i>장바구니</a></li>
                            <li><a href="<%=request.getContextPath()%>/wish.go"><i class="ri-heart-line"></i>위시리스트</a></li>
                        </ul>
                    </li>
                    <!-- 게시판 -->
                    <li><a href="user_gall.go"><i class="ri-dashboard-line"></i>중고거래 게시판</a></li>

                </ul>
            </nav>
        </div>
    </div>
    <!-- TOP Nav Bar -->
    <div class="iq-top-navbar">
        <div class="iq-navbar-custom">
            <nav class="navbar navbar-expand-lg navbar-light p-0">
                <div class="iq-menu-bt d-flex align-items-center">
                    <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                    </div>
                    <div class="iq-navbar-logo d-flex justify-content-between">
                        <a href="home.jsp" class="header-logo">
                            <img src="${path}/resources/images/logo.png" class="img-fluid rounded-normal" alt="">
                            <div class="logo-title">
                                <span class="text-primary text-uppercase">Booksto</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="navbar-breadcrumb">
                    <h5 class="mb-0"></h5>
                    <nav aria-label="breadcrumb">
                    </nav>
                </div>
                <div class="iq-search-bar">
                    <form action="<%=request.getContextPath()%>/search.go" class="searchbox">
                        <input type="text" class="text search-input" placeholder="검색어를 입력해주세요." name="query">
                        <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                    </form>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-label="Toggle navigation">
                    <i class="ri-menu-3-line"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-list">
                        <li class="nav-item nav-icon search-content">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-search-line"></i>
                            </a>
                            <form action="<%=request.getContextPath()%>/search.go" class="search-box p-0">
                                <input type="text" class="text search-input" placeholder="Type here to search..." name="query">
                                <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                            </form>
                        </li>


                        <!-- 채팅부분 -->
                        <li class="nav-item nav-icon dropdown">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-mail-line"></i>
                                <span class="bg-primary dots"></span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">모든 메세지<small
                                                    class="badge  badge-light float-right pt-1">${sessionScope.chatList.size()}</small></h5>
                                        </div>

                                    <c:forEach var="chat" items="${sessionScope.chatList}">
                                        <a href="javascript:void(0);" onclick="openNewWindow()" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user_profile_image/${chat.other_img}"  onerror="this.src='${path}/resources/images/user_profile_image/profile.png'">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">${chat.other_nickName}</h6>
                                                    <small class="float-left font-size-12">${chat.last_chat}</small>
                                                </div>
                                            </div>
                                        </a>

                                        <script>
                                            function openNewWindow() {
                                                var url = "<%=request.getContextPath()%>/chat.go?receiveNo=${chat.other_user}";
                                                var windowName = "채팅창";
                                                var windowFeatures = "width=500,height=708,toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no";
                                                window.open(url, windowName, windowFeatures);
                                            }
                                        </script>
                                    </c:forEach>

                                    </div>
                                </div>
                            </div>
                        </li>

                        <!-- 채팅부분 end -->
                        <li class="nav-item nav-icon dropdown">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-shopping-cart-2-line"></i>
                                <span class="badge badge-danger count-cart rounded-circle">${sessionScope.countBasket}</span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 toggle-cart-info">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">장바구니<small
                                                    class="badge  badge-light float-right pt-1">${sessionScope.countBasket}</small></h5>
                                        </div>
                                        <c:forEach var="BookDTO" items="${sessionScope.BookList}" varStatus="status">
                                            <c:if test="${status.index < 4}">
                                            <a href="#" class="iq-sub-card">
                                                <div class="media align-items-center">
                                                    <div class="">
                                                        <img class="rounded" src="${path}/resources/images/browse-books/${BookDTO.book_image}"
                                                             alt="">
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">${BookDTO.book_title}</h6>
                                                        <p class="mb-0">&#8361;<fmt:formatNumber value="${BookDTO.book_price}" pattern="#,###" /></p>
                                                    </div>

                                                    <div class="float-right font-size-24 text-danger">
                                                        <i class="ri-close-fill" onclick="location.href='basket_header_delete.go?bookNo=${BookDTO.book_no}'"></i>
                                                    </div>
                                                </div>
                                            </a>
                                            </c:if>
                                        </c:forEach>

                                        <div class="d-flex align-items-center text-center p-3">
                                            <a class="btn btn-primary mr-2 iq-sign-btn" href="<%=request.getContextPath()%>/basket.go" role="button">View Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <% if (session.getAttribute("UserId") == null) { %>
                        <li class="line-height pt-3" onclick="location.href='<%=request.getContextPath()%>/login.go'">
                            <a class="search-toggle iq-waves-effect d-flex align-items-center">
                                <!--  비로그인 상태  -->

                                <div class="caption">
                                    <br>
                                    <h6 class="mb-1 line-height">로그인</h6>
                                    <p class="mb-0 text-primary"></p>
                                </div>
                            </a>
                        </li>
                        <% } else { %>
                        <!-- 로그인 상태  -->
                        <li class="line-height pt-3">
                            <a href="#"
                               class="search-toggle iq-waves-effect d-flex align-items-center">

                                <img src="${path}/resources/images/user_profile_image/${sessionScope.UserImg}" onerror="this.src='${path}/resources/images/user_profile_image/profile.png'"  class="img-fluid rounded-circle mr-3"
                                      alt="">
                                <div class="caption">
                                    <h6 class="mb-1 line-height"><%=session.getAttribute("UserName")%></h6>
                                    <p class="mb-0 text-primary">&#8361;<fmt:formatNumber value="${sessionScope.UserMoney}" pattern="#,###" /></p>

                                </div>
                            </a>

                            <div class="iq-sub-dropdown iq-user-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white line-height">${sessionScope.UserName} 님</h5>
                                        </div>
                                        <a href="<%=request.getContextPath()%>/profile.go" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-file-user-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">내 프로필</h6>
                                                    <p class="mb-0 font-size-12">나의 프로필 확인하기.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="<%=request.getContextPath() %>/user_modify.go" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-profile-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">내 정보 관리</h6>
                                                    <p class="mb-0 font-size-12">내 정보 수정하기.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="d-inline-block w-100 text-center p-3">
                                            <a class="bg-primary iq-sign-btn" href="<%=request.getContextPath()%>/logout.go" role="button">로그아웃<i class="ri-login-box-line ml-2"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </li>
                        <% } %>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
