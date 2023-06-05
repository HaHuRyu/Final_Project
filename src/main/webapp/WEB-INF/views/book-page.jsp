<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Booksto - Responsive Bootstrap 4 Admin Dashboard Template</title>
      <!-- Favicon -->
      <link rel="shortcut icon" href="${path}/resources/images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="${path}/resources/css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="${path}/resources/css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="${path}/resources/css/responsive.css">
      <link rel="stylesheet" href="${path}/resources/css/font.css">
   </head>
      <body>
      <%@ include file="header.jsp" %>

      <!-- TOP Nav Bar END --> <!-- 여기 까지 모든 jsp 파일이 동일해야함 -->
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
                        <h5 class="mb-0">Book Page</h5>
                        <nav aria-label="breadcrumb">
                           <ul class="breadcrumb">
                              <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Book Page</li>
                           </ul>
                        </nav>
                     </div>
                     <div class="iq-search-bar">
                        <form action="#" class="searchbox">
                           <input type="text" class="text search-input" placeholder="Search Here...">
                           <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                        </form>
                     </div>
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
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
                              <i class="ri-notification-2-fill"></i>
                              <span class="bg-primary dots"></span>
                              </a>
                              <div class="iq-sub-dropdown">
                                 <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0">
                                       <div class="bg-primary p-3">
                                          <h5 class="mb-0 text-white">All Notifications<small class="badge  badge-light float-right pt-1">4</small></h5>
                                       </div>
                                       <a href="#" class="iq-sub-card" >
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/01.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Emma Watson Barry</h6>
                                                <small class="float-right font-size-12">Just Now</small>
                                                <p class="mb-0">95 MB</p>
                                             </div>
                                          </div>
                                       </a>
                                       <a href="#" class="iq-sub-card" >
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/02.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">New customer is join</h6>
                                                <small class="float-right font-size-12">5 days ago</small>
                                                <p class="mb-0">Cyst Barry</p>
                                             </div>
                                          </div>
                                       </a>
                                       <a href="#" class="iq-sub-card" >
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/03.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Two customer is left</h6>
                                                <small class="float-right font-size-12">2 days ago</small>
                                                <p class="mb-0">Cyst Barry</p>
                                             </div>
                                          </div>
                                       </a>
                                       <a href="#" class="iq-sub-card" >
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/04.jpg" alt="">
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
                              <i class="fa fa-envelope" aria-hidden="true"></i>
                              <span class="bg-primary count-mail"></span>
                              </a>
                              <div class="iq-sub-dropdown">
                                 <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                       <div class="bg-primary p-3">
                                          <h5 class="mb-0 text-white">All Messages<small class="badge  badge-light float-right pt-1">5</small></h5>
                                       </div>
                                       <a href="#" class="iq-sub-card">
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/01.jpg" alt="">
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
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/02.jpg" alt="">
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
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/03.jpg" alt="">
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
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/04.jpg" alt="">
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
                                                <img class="avatar-40 rounded" src="${path}/resources/images/user/05.jpg" alt="">
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
                                          <h5 class="mb-0 text-white">All Carts<small class="badge  badge-light float-right pt-1">4</small></h5>
                                       </div>
                                       <a href="#" class="iq-sub-card">
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="rounded" src="${path}/resources/images/cart/01.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Night People book</h6>
                                                <p class="mb-0">$32</p>
                                             </div>
                                             <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                          </div>
                                       </a>
                                       <a href="#" class="iq-sub-card">
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="rounded" src="${path}/resources/images/cart/02.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">The Sin Eater Book</h6>
                                                <p class="mb-0">$40</p>
                                             </div>
                                             <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                          </div>
                                       </a>
                                       <a href="#" class="iq-sub-card">
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="rounded" src="${path}/resources/images/cart/03.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">the Orange Tree</h6>
                                                <p class="mb-0">$30</p>
                                             </div>
                                             <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                          </div>
                                       </a>
                                       <a href="#" class="iq-sub-card">
                                          <div class="media align-items-center">
                                             <div class="">
                                                <img class="rounded" src="${path}/resources/images/cart/04.jpg" alt="">
                                             </div>
                                             <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Harsh Reality book</h6>
                                                <p class="mb-0">$25</p>
                                             </div>
                                             <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                          </div>
                                       </a>
                                       <div class="d-flex align-items-center text-center p-3">
                                          <a class="btn btn-primary mr-2 iq-sign-btn" href="#" role="button">View Cart</a>
                                          <a class="btn btn-primary iq-sign-btn" href="#" role="button">Shop now</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="line-height pt-3">
                              <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                                 <img src="${path}/resources/images/user/1.jpg" class="img-fluid rounded-circle mr-3" alt="user">
                                 <div class="caption">
                                    <h6 class="mb-1 line-height">Barry Tech</h6>
                                    <p class="mb-0 text-primary">$20.32</p>
                                 </div>
                              </a>
                              <div class="iq-sub-dropdown iq-user-dropdown">
                                 <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                       <div class="bg-primary p-3">
                                          <h5 class="mb-0 text-white line-height">Hello Barry Tech</h5>
                                          <span class="text-white font-size-12">Available</span>
                                       </div>
                                       <a href="profile.jsp" class="iq-sub-card iq-bg-primary-hover">
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
                                          <a class="bg-primary iq-sign-btn" href="sign-in.jsp" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </li>
                        </ul>
                     </div>
                  </nav>
               </div>
            </div>
            <!-- TOP Nav Bar END -->
            <!-- Page Content  -->
            <div id="content-page" class="content-page">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-sm-12">
                        <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                           <div class="iq-card-header d-flex justify-content-between align-items-center">
                              <h4 class="card-title mb-0">Books Description</h4>
                           </div>
                           <div class="iq-card-body pb-0">
                              <div class="description-contens align-items-top row">
                                 <div class="col-md-6">
                                    <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                       <div class="iq-card-body p-0">
                                          <div class="row align-items-center">
                                             <div class="col-9">
                                                <ul id="description-slider" class="list-inline p-0 m-0  d-flex align-items-center">
                                                   <li>
                                                      <a href="javascript:void(0);">
                                                      <img src="${path}/resources/images/browse-books/${Book_cont.book_image}" class="img-fluid w-100 rounded" alt="">
                                                      </a>
                                                   </li>
                                                </ul>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-md-6">
                                    <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                       <div class="iq-card-body p-0">
                                          <h3 class="mb-3">${Book_cont.book_title}</h3>
                                          <div class="price d-flex align-items-center font-weight-500 mb-2">
                                             <span class="font-size-24 text-dark">&#8361;<fmt:formatNumber value="${Book_cont.book_price}" pattern="#,###" /></span>
                                          </div>
                                          <div class="mb-3 d-block">
                                             <span class="font-size-20 text-warning">
                                             <i class="fa fa-star mr-1"></i>
                                             <i class="fa fa-star mr-1"></i>
                                             <i class="fa fa-star mr-1"></i>
                                             <i class="fa fa-star mr-1"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                          <span class="text-dark mb-4 pb-4 iq-border-bottom d-block">${Book_cont.book_intro}</span>
                                          <div class="text-primary mb-4">Author: <span class="text-body">${Book_cont.book_author}</span></div>
                                          <div class="mb-4 d-flex align-items-center">
                                             <a href="<%=request.getContextPath()%>/basket_insert.go?bookNo=${Book_cont.book_no}" class="btn btn-primary view-more mr-2">Add To Cart</a>
                                             <a href="book-pdf.jsp" class="btn btn-primary view-more mr-2">Read Sample</a>
                                          </div>
                                          <div class="mb-3">
                                             <a href="<%=request.getContextPath()%>/wish_add.go?bookNo=${Book_cont.book_no}" class="text-body text-center"><span class="avatar-30 rounded-circle bg-primary d-inline-block mr-2"><i class="ri-heart-fill"></i></span><span>Add to Wishlist</span></a>
                                          </div>
                                          <div class="iq-social d-flex align-items-center">
                                             <h5 class="mr-2">Share:</h5>
                                             <ul class="list-inline d-flex p-0 mb-0 align-items-center">
                                                <li>
                                                   <a href="#" class="avatar-40 rounded-circle bg-primary mr-2 facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                </li>
                                                <li>
                                                   <a href="#" class="avatar-40 rounded-circle bg-primary mr-2 twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                </li>
                                                <li>
                                                   <a href="#" class="avatar-40 rounded-circle bg-primary mr-2 youtube"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                                                </li>
                                                <li >
                                                   <a href="#" class="avatar-40 rounded-circle bg-primary pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                                                </li>
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-12">
                        <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                           <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                              <div class="iq-header-title">
                                 <h4 class="card-title mb-0">Similar Books</h4>
                              </div>
                              <div class="iq-card-header-toolbar d-flex align-items-center">
                                 <a href="category.jsp" class="btn btn-sm btn-primary view-more">View More</a>
                              </div>
                           </div>
                           <div class="iq-card-body single-similar-contens">
                              <ul id="single-similar-slider" class="list-inline p-0 mb-0 row">
                                <c:forEach var="book" items="${BookList}" begin="0" end="10">
                                 <li class="col-md-3">
                                    <div class="row align-items-center">
                                       <div class="col-5">
                                          <div class="position-relative image-overlap-shadow">
                                             <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${path}/resources/images/browse-books/${book.book_image}" alt=""></a>
                                             <div class="view-book">
                                                <a href="<%=request.getContextPath()%>/book_content.go?book_no=${book.book_no}" class="btn btn-sm btn-white">View Book</a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="col-7 pl-0">
                                          <h6 class="mb-2">${book.book_title}</h6>
                                          <p class="text-body">Author : ${book.book_author}</p>
                                       </div>
                                    </div>
                                 </li>
                                </c:forEach>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- Wrapper END -->
         <!-- Footer -->
         <footer class="iq-footer">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-6">
                     <ul class="list-inline mb-0">
                        <li class="list-inline-item"><a href="privacy-policy.jsp">Privacy Policy</a></li>
                        <li class="list-inline-item"><a href="terms-of-service.jsp">Terms of Use</a></li>
                     </ul>
                  </div>
                  <div class="col-lg-6 text-right">
                     Copyright 2020 <a href="#">Booksto</a> All Rights Reserved.
                  </div>
               </div>
            </div>
         </footer>
         <!-- Footer END -->
         <!-- color-customizer -->
         <div class="iq-colorbox color-fix">
            <div class="buy-button"> <a class="color-full" href="#"><i class="fa fa-spinner fa-spin"></i></a> </div>
            <div id="right-sidebar-scrollbar" class="iq-colorbox-inner">
               <div class="clearfix color-picker">
                  <h3 class="iq-font-black">Booksto Awesome Color</h3>
                  <p>This color combo available inside whole template. You can change on your wish, Even you can create your own with limitless possibilities! </p>
                  <ul class="iq-colorselect clearfix">
                     <li class="color-1 iq-colormark" data-style="color-1"></li>
                     <li class="color-2" data-style="iq-color-2"></li>
                     <li class="color-3" data-style="iq-color-3"></li>
                     <li class="color-4" data-style="iq-color-4"></li>
                     <li class="color-5" data-style="iq-color-5"></li>
                     <li class="color-6" data-style="iq-color-6"></li>
                     <li class="color-7" data-style="iq-color-7"></li>
                     <li class="color-8" data-style="iq-color-8"></li>
                     <li class="color-9" data-style="iq-color-9"></li>
                     <li class="color-10" data-style="iq-color-10"></li>
                     <li class="color-11" data-style="iq-color-11"></li>
                     <li class="color-12" data-style="iq-color-12"></li>
                     <li class="color-13" data-style="iq-color-13"></li>
                     <li class="color-14" data-style="iq-color-14"></li>
                     <li class="color-15" data-style="iq-color-15"></li>
                     <li class="color-16" data-style="iq-color-16"></li>
                     <li class="color-17" data-style="iq-color-17"></li>
                     <li class="color-18" data-style="iq-color-18"></li>
                     <li class="color-19" data-style="iq-color-19"></li>
                     <li class="color-20" data-style="iq-color-20"></li>
                  </ul>
                  <a target="_blank" class="btn btn-primary d-block mt-3" href="">Purchase Now</a>
               </div>
            </div>
         </div>
         <!-- color-customizer END -->
         <!-- Optional JavaScript -->
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <script src="${path}/resources/js/jquery.min.js"></script>
         <script src="${path}/resources/js/popper.min.js"></script>
         <script src="${path}/resources/js/bootstrap.min.js"></script>
         <!-- Appear JavaScript -->
         <script src="${path}/resources/js/jquery.appear.js"></script>
         <!-- Countdown JavaScript -->
         <script src="${path}/resources/js/countdown.min.js"></script>
         <!-- Counterup JavaScript -->
         <script src="${path}/resources/js/waypoints.min.js"></script>
         <script src="${path}/resources/js/jquery.counterup.min.js"></script>
         <!-- Wow JavaScript -->
         <script src="${path}/resources/js/wow.min.js"></script>
         <!-- Apexcharts JavaScript -->
         <script src="${path}/resources/js/apexcharts.js"></script>
         <!-- Slick JavaScript -->
         <script src="${path}/resources/js/slick.min.js"></script>
         <!-- Select2 JavaScript -->
         <script src="${path}/resources/js/select2.min.js"></script>
         <!-- Owl Carousel JavaScript -->
         <script src="${path}/resources/js/owl.carousel.min.js"></script>
         <!-- Magnific Popup JavaScript -->
         <script src="${path}/resources/js/jquery.magnific-popup.min.js"></script>
         <!-- Smooth Scrollbar JavaScript -->
         <script src="${path}/resources/js/smooth-scrollbar.js"></script>
         <!-- lottie JavaScript -->
         <script src="${path}/resources/js/lottie.js"></script>
         <!-- am core JavaScript -->
         <script src="${path}/resources/js/core.js"></script>
         <!-- am charts JavaScript -->
         <script src="${path}/resources/js/charts.js"></script>
         <!-- am animated JavaScript -->
         <script src="${path}/resources/js/animated.js"></script>
         <!-- am kelly JavaScript -->
         <script src="${path}/resources/js/kelly.js"></script>
         <!-- am maps JavaScript -->
         <script src="${path}/resources/js/maps.js"></script>
         <!-- am worldLow JavaScript -->
         <script src="${path}/resources/js/worldLow.js"></script>
         <!-- Raphael-min JavaScript -->
         <script src="${path}/resources/js/raphael-min.js"></script>
         <!-- Morris JavaScript -->
         <script src="${path}/resources/js/morris.js"></script>
         <!-- Morris min JavaScript -->
         <script src="${path}/resources/js/morris.min.js"></script>
         <!-- Flatpicker Js -->
         <script src="${path}/resources/js/flatpickr.js"></script>
         <!-- Style Customizer -->
         <script src="${path}/resources/js/style-customizer.js"></script>
         <!-- Chart Custom JavaScript -->
         <script src="${path}/resources/js/chart-custom.js"></script>
         <!-- Custom JavaScript -->
         <script src="${path}/resources/js/custom.js"></script>
   </body>
</html>