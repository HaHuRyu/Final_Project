<%@ page import="com.spring.model.UserDAO" %>
<%@ page import="com.spring.model.UserDTO" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.spring.model.UserDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: ll001
  Date: 2023-05-15
  Time: 오전 11:21
  To change this template use File | Settings | File Templates.
--%>
<div class="wrapper">
    <!-- Sidebar  -->
    <div class="iq-sidebar">
        <div class="iq-sidebar-logo d-flex justify-content-between">
            <a href="<%=request.getContextPath()%>/" class="header-logo">
                <img src="${path}/resources/images/logo.png" class="img-fluid rounded-normal" alt="">
                <div class="logo-title">
                    <span class="text-primary text-uppercase">파이널</span>
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
                    <li class="active active-menu">
                        <a href="#dashboard" class="iq-waves-effect" data-toggle="collapse" aria-expanded="true"><span
                                class="ripple rippleEffect"></span><i
                                class="las la-home iq-arrow-left"></i><span>Shop</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="dashboard" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                            <li class="active"><a href="home.jsp"><i class="las la-house-damage"></i>Home Page</a></li>
                            <li><a href="category.jsp"><i class="ri-function-line"></i>Category Page</a></li>
                            <li><a href="book-page.jsp"><i class="ri-book-line"></i>Book Page</a></li>
                            <li><a href="book-pdf.jsp"><i class="ri-file-pdf-line"></i>Book PDF</a></li>
                            <li><a href="<%=request.getContextPath()%>/basket.go"><i class="ri-checkbox-multiple-blank-line"></i>Checkout</a></li>
                            <li><a href="<%=request.getContextPath()%>/wish.go"><i class="ri-heart-line"></i>wishlist</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#admin" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span
                                class="ripple rippleEffect"></span><i class="ri-admin-line"></i><span>Admin</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="admin" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li><a href="admin-dashboard.jsp"><i class="ri-dashboard-line"></i>Dashboard</a></li>
                            <li><a href="admin-category.jsp"><i class="ri-list-check-2"></i>Category Lists</a></li>
                            <li><a href="admin-author.jsp"><i class="ri-file-user-line"></i>Author</a></li>
                            <li><a href="<%=request.getContextPath()%>/book_list.go"><i class="ri-book-2-line"></i>Books</a></li>
                            <li><a href="user-list.jsp"><i class="las la-th-list"></i>User List</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#userinfo" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span
                                class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>User</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="userinfo" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle" style="">
                            <li><a href="<%=request.getContextPath()%>/profile.go"><i class="las la-id-card-alt"></i>User Profile</a></li>
                            <li><a href="<%=request.getContextPath() %>/user_modify.go"><i class="las la-edit"></i>User Edit</a></li>
                            <li><a href="add-user.jsp"><i class="las la-plus-circle"></i>User Add</a></li>
                        </ul>
                    </li>
                    <!-- 게시판 -->
                    <li>
                        <a href="#board" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span
                                class="ripple rippleEffect"></span><i class="ri-admin-line"></i><span>Board</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="board" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li><a href="#"><i class="ri-dashboard-line"></i>중고거래 게시판</a></li>
                            <li><a href="#"><i class="ri-list-check-2"></i>Qna 게시판</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#ui-elements" class="iq-waves-effect collapsed" data-toggle="collapse"
                           aria-expanded="false"><i
                                class="lab la-elementor iq-arrow-left"></i><span>UI Elements</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="ui-elements" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li class="elements">
                                <a href="#sub-menu" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-play-circle-line"></i><span>UI Kit</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="sub-menu" class="iq-submenu collapse" data-parent="#ui-elements">
                                    <li><a href="ui-colors.jsp"><i class="las la-palette"></i>colors</a></li>
                                    <li><a href="ui-typography.jsp"><i class="las la-keyboard"></i>Typography</a></li>
                                    <li><a href="ui-alerts.jsp"><i class="las la-tag"></i>Alerts</a></li>
                                    <li><a href="ui-badges.jsp"><i class="lab la-atlassian"></i>Badges</a></li>
                                    <li><a href="ui-breadcrumb.jsp"><i class="las la-bars"></i>Breadcrumb</a></li>
                                    <li><a href="ui-buttons.jsp"><i class="las la-tablet"></i>Buttons</a></li>
                                    <li><a href="ui-cards.jsp"><i class="las la-credit-card"></i>Cards</a></li>
                                    <li><a href="ui-carousel.jsp"><i class="las la-film"></i>Carousel</a></li>
                                    <li><a href="ui-embed-video.jsp"><i class="las la-video"></i>Video</a></li>
                                    <li><a href="ui-grid.jsp"><i class="las la-border-all"></i>Grid</a></li>
                                    <li><a href="ui-images.jsp"><i class="las la-images"></i>Images</a></li>
                                    <li><a href="ui-list-group.jsp"><i class="las la-list"></i>list Group</a></li>
                                    <li><a href="ui-media-object.jsp"><i class="las la-ad"></i>Media</a></li>
                                    <li><a href="ui-modal.jsp"><i class="las la-columns"></i>Modal</a></li>
                                    <li><a href="ui-notifications.jsp"><i class="las la-bell"></i>Notifications</a></li>
                                    <li><a href="ui-pagination.jsp"><i class="las la-ellipsis-h"></i>Pagination</a></li>
                                    <li><a href="ui-popovers.jsp"><i class="las la-eraser"></i>Popovers</a></li>
                                    <li><a href="ui-progressbars.jsp"><i class="las la-hdd"></i>Progressbars</a></li>
                                    <li><a href="ui-tabs.jsp"><i class="las la-database"></i>Tabs</a></li>
                                    <li><a href="ui-tooltips.jsp"><i class="las la-magnet"></i>Tooltips</a></li>
                                </ul>
                            </li>
                            <li class="form">
                                <a href="#forms" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="lab la-wpforms"></i><span>Forms</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="forms" class="iq-submenu collapse" data-parent="#ui-elements">
                                    <li><a href="form-layout.jsp"><i class="las la-book"></i>Form Elements</a></li>
                                    <li><a href="form-validation.jsp"><i class="las la-edit"></i>Form Validation</a>
                                    </li>
                                    <li><a href="form-switch.jsp"><i class="las la-toggle-off"></i>Form Switch</a></li>
                                    <li><a href="form-chechbox.jsp"><i class="las la-check-square"></i>Form Checkbox</a>
                                    </li>
                                    <li><a href="form-radio.jsp"><i class="ri-radio-button-line"></i>Form Radio</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#wizard-form" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-archive-drawer-line"></i><span>Forms Wizard</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="wizard-form" class="iq-submenu collapse" data-parent="#ui-elements">
                                    <li><a href="form-wizard.jsp"><i class="ri-clockwise-line"></i>Simple Wizard</a>
                                    </li>
                                    <li><a href="form-wizard-validate.jsp"><i class="ri-clockwise-2-line"></i>Validate
                                        Wizard</a></li>
                                    <li><a href="form-wizard-vertical.jsp"><i class="ri-anticlockwise-line"></i>Vertical
                                        Wizard</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#tables" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-table-line"></i><span>Table</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="tables" class="iq-submenu collapse" data-parent="#ui-elements">
                                    <li><a href="tables-basic.jsp"><i class="ri-table-line"></i>Basic Tables</a></li>
                                    <li><a href="data-table.jsp"><i class="ri-database-line"></i>Data Table</a></li>
                                    <li><a href="table-editable.jsp"><i class="ri-refund-line"></i>Editable Table</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#charts" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-pie-chart-box-line"></i><span>Charts</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="charts" class="iq-submenu collapse" data-parent="#ui-elements">
                                    <li><a href="chart-morris.jsp"><i class="ri-file-chart-line"></i>Morris Chart</a>
                                    </li>
                                    <li><a href="chart-high.jsp"><i class="ri-bar-chart-line"></i>High Charts</a></li>
                                    <li><a href="chart-am.jsp"><i class="ri-folder-chart-line"></i>Am Charts</a></li>
                                    <li><a href="chart-apex.jsp"><i class="ri-folder-chart-2-line"></i>Apex Chart</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#icons" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-list-check"></i><span>Icons</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="icons" class="iq-submenu collapse" data-parent="#ui-elements">
                                    <li><a href="icon-dripicons.jsp"><i class="ri-stack-line"></i>Dripicons</a></li>
                                    <li><a href="icon-fontawesome-5.jsp"><i class="ri-facebook-fill"></i>Font Awesome 5</a>
                                    </li>
                                    <li><a href="icon-lineawesome.jsp"><i class="ri-keynote-line"></i>line Awesome</a>
                                    </li>
                                    <li><a href="icon-remixicon.jsp"><i class="ri-remixicon-line"></i>Remixicon</a></li>
                                    <li><a href="icon-unicons.jsp"><i class="ri-underline"></i>unicons</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#pages" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i
                                class="las la-file-alt iq-arrow-left"></i><span>Pages</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="pages" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li>
                                <a href="#authentication" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-pages-line"></i><span>Authentication</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="authentication" class="iq-submenu collapse" data-parent="#pages">
                                    <li><a href="sign-in.jsp"><i class="las la-sign-in-alt"></i>Login</a></li>
                                    <li><a href="#"><i class="ri-login-circle-line"></i>Register</a></li>
                                    <li><a href="pages-recoverpw.jsp"><i class="ri-record-mail-line"></i>Recover
                                        Password</a></li>
                                    <li><a href="pages-confirm-mail.jsp"><i class="ri-file-code-line"></i>Confirm
                                        Mail</a></li>
                                    <li><a href="pages-lock-screen.jsp"><i class="ri-lock-line"></i>Lock Screen</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#extra-pages" class="iq-waves-effect collapsed" data-toggle="collapse"
                                   aria-expanded="false"><i class="ri-pantone-line"></i><span>Extra Pages</span><i
                                        class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="extra-pages" class="iq-submenu collapse" data-parent="#pages">
                                    <li><a href="pages-timeline.jsp"><i class="ri-map-pin-time-line"></i>Timeline</a>
                                    </li>
                                    <li><a href="pages-invoice.jsp"><i class="ri-question-answer-line"></i>Invoice</a>
                                    </li>
                                    <li><a href="blank-page.jsp"><i class="ri-invision-line"></i>Blank Page</a></li>
                                    <li><a href="pages-error.jsp"><i class="ri-error-warning-line"></i>Error 404</a>
                                    </li>
                                    <li><a href="pages-error-500.jsp"><i class="ri-error-warning-line"></i>Error 500</a>
                                    </li>
                                    <li><a href="pages-pricing.jsp"><i class="ri-price-tag-line"></i>Pricing</a></li>
                                    <li><a href="pages-maintenance.jsp"><i class="ri-archive-line"></i>Maintenance</a>
                                    </li>
                                    <li><a href="pages-comingsoon.jsp"><i class="ri-mastercard-line"></i>Coming Soon</a>
                                    </li>
                                    <li><a href="pages-faq.jsp"><i class="ri-compasses-line"></i>Faq</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#menu-level" class="iq-waves-effect collapsed" data-toggle="collapse"
                           aria-expanded="false"><i
                                class="ri-record-circle-line iq-arrow-left"></i><span>Menu Level</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="menu-level" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li><a href="#"><i class="ri-record-circle-line"></i>Menu 1</a></li>
                            <li>
                                <a href="#"><i class="ri-record-circle-line"></i>Menu 2</a>
                                <ul>
                                    <li class="menu-level">
                                        <a href="#sub-menus" class="iq-waves-effect collapsed" data-toggle="collapse"
                                           aria-expanded="false"><i
                                                class="ri-play-circle-line"></i><span>Sub-menu</span><i
                                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                        <ul id="sub-menus" class="iq-submenu iq-submenu-data collapse">
                                            <li><a href="#"><i class="ri-record-circle-line"></i>Sub-menu 1</a></li>
                                            <li><a href="#"><i class="ri-record-circle-line"></i>Sub-menu 2</a></li>
                                            <li><a href="#"><i class="ri-record-circle-line"></i>Sub-menu 3</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#"><i class="ri-record-circle-line"></i>Menu 3</a></li>
                            <li><a href="#"><i class="ri-record-circle-line"></i>Menu 4</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="sidebar-bottom" class="p-3 position-relative">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <div class="sidebarbottom-content">
                            <div class="image"><img src="${path}/resources/images/page-img/side-bkg.png" alt=""></div>
                            <button type="submit" class="btn w-100 btn-primary mt-4 view-more">Become Membership
                            </button>
                        </div>
                    </div>
                </div>
            </div>
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
                    <form action="#" class="searchbox">
                        <input type="text" class="text search-input" placeholder="Search Here...">
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
                            <form action="#" class="search-box p-0">
                                <input type="text" class="text search-input" placeholder="Type here to search...">
                                <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                            </form>
                        </li>
                        <li class="nav-item nav-icon">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-notification-2-line"></i>
                                <span class="bg-primary dots"></span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">All Notifications<small
                                                    class="badge  badge-light float-right pt-1">4</small></h5>
                                        </div>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/01.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Emma Watson Barry</h6>
                                                    <small class="float-right font-size-12">Just Now</small>
                                                    <p class="mb-0">95 MB</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/02.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">New customer is join</h6>
                                                    <small class="float-right font-size-12">5 days ago</small>
                                                    <p class="mb-0">Cyst Barry</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/03.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Two customer is left</h6>
                                                    <small class="float-right font-size-12">2 days ago</small>
                                                    <p class="mb-0">Cyst Barry</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/04.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">New Mail from Fenny</h6>
                                                    <small class="float-right font-size-12">3 days ago</small>
                                                    <p class="mb-0">Cyst Barry</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item nav-icon dropdown">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-mail-line"></i>
                                <span class="bg-primary dots"></span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">All Messages<small
                                                    class="badge  badge-light float-right pt-1">5</small></h5>
                                        </div>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/01.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Barry Emma Watson</h6>
                                                    <small class="float-left font-size-12">13 Jun</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/02.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Lorem Ipsum Watson</h6>
                                                    <small class="float-left font-size-12">20 Apr</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/03.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Why do we use it?</h6>
                                                    <small class="float-left font-size-12">30 Jun</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/04.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Variations Passages</h6>
                                                    <small class="float-left font-size-12">12 Sep</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded"
                                                         src="${path}/resources/images/user/05.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Lorem Ipsum generators</h6>
                                                    <small class="float-left font-size-12">5 Dec</small>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item nav-icon dropdown">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-shopping-cart-2-line"></i>
                                <span class="badge badge-danger count-cart rounded-circle">4</span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 toggle-cart-info">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">장바구니<small
                                                    class="badge  badge-light float-right pt-1">4</small></h5>
                                        </div>
                                        <c:forEach var="BookDTO" items="${sessionScope.BookList}">
                                            <a href="#" class="iq-sub-card">
                                                <div class="media align-items-center">
                                                    <div class="">
                                                        <img class="rounded" src="${path}/resources/images/browse-books/${BookDTO.book_image}"
                                                             alt="">
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">${BookDTO.book_title}</h6>
                                                        <p class="mb-0">${BookDTO.book_price}원</p>
                                                    </div>

                                                    <div class="float-right font-size-24 text-danger">
                                                        <i class="ri-close-fill" onclick="location.href='basket_header_delete.go?bookNo=${BookDTO.book_no}'"></i>
                                                    </div>
                                                </div>
                                            </a>

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
                                    <h6 class="mb-1 line-height">Sing in</h6>
                                    <p class="mb-0 text-primary"></p>
                                </div>
                            </a>
                        </li>
                        <% } else { %>
                        <!-- 로그인 상태  -->
                        <li class="line-height pt-3">
                            <a href="#"
                               class="search-toggle iq-waves-effect d-flex align-items-center">
                                <!-- 이미지 수정 예정 -->
                                <img src="${path}/resources/images/user/1.jpg" class="img-fluid rounded-circle mr-3"
                                     alt="user">
                                <div class="caption">
                                    <h6 class="mb-1 line-height"><%=session.getAttribute("UserName")%></h6>
                                    <p class="mb-0 text-primary"><%=session.getAttribute("UserMoney")%>원</p>
                                </div>
                            </a>

                            <div class="iq-sub-dropdown iq-user-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white line-height">Hello Barry Tech</h5>
                                            <span class="text-white font-size-12">Available</span>
                                        </div>
                                        <a href="<%=request.getContextPath()%>/profile.go" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-file-user-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">My Profile</h6>
                                                    <p class="mb-0 font-size-12">View personal profile details.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="profile-edit.jsp" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-profile-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Edit Profile</h6>
                                                    <p class="mb-0 font-size-12">Modify your personal details.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="account-setting.jsp" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-account-box-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Account settings</h6>
                                                    <p class="mb-0 font-size-12">Manage your account parameters.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="privacy-setting.jsp" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-lock-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Privacy Settings</h6>
                                                    <p class="mb-0 font-size-12">Control your privacy parameters.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="d-inline-block w-100 text-center p-3">
                                            <a class="bg-primary iq-sign-btn" href="<%=request.getContextPath()%>/logout.go" role="button">Sign
                                                out<i class="ri-login-box-line ml-2"></i></a>
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
