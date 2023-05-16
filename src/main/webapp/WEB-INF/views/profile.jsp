<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   </head>
   <body class="sidebar-main-active right-column-fixed">
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->


      <%@ include file="header.jsp" %>

         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row profile-content">
                  <div class="col-12 col-md-12 col-lg-4">
                     <div class="iq-card">
                        <div class="iq-card-body profile-page">
                           <div class="profile-header">
                              <div class="cover-container text-center">
                                 <!--프로필 이미지 수정 예정 -->
                                 <img src="${path}/resources/images/user/1.jpg" alt="profile-bg" class="rounded-circle img-fluid">
                                 <div class="profile-detail mt-3">
                                    <h3><%= session.getAttribute("UserId")%></h3>
                                    <p class="text-primary"><%=session.getAttribute("UserJob")%></p>
                                    <p><%=session.getAttribute("UserIntro")%></p>
                                 </div>
                                 <div class="iq-social d-inline-block align-items-center">
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
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Personal Details</h4>
                           </div>
                        </div> 
                        <div class="iq-card-body">
                           <ul class="list-inline p-0 mb-0">
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>Nicename</h6>
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserNick")%></p>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>Birthday</h6>                                       
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserBirth")%></p>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>Address</h6>                                       
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserAddr")%></p>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>Phone</h6>                                       
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserPhone")%></p>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>Email</h6>                                       
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserEmail")%></p>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>관심분야 1</h6>
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserCate1")%></p>
                                    </div>
                                 </div>
                              </li>                              
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>관심분야 2</h6>
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserCate2")%></p>
                                    </div>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0"> 무엇을 채울지 아직 미정</h4>
                           </div>
                        </div> 
                        <div class="iq-card-body">
                           <ul class="list-inline p-0 mb-0">
                              <li>
                                 <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h6>Biography</h6>
                                    <div class="iq-progress-bar-linear d-inline-block mt-1 w-50">
                                       <div class="iq-progress-bar iq-bg-primary">
                                          <span class="bg-primary" data-percent="70"></span>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h6>Horror</h6>
                                    <div class="iq-progress-bar-linear d-inline-block mt-1 w-50">
                                       <div class="iq-progress-bar iq-bg-danger">
                                          <span class="bg-danger" data-percent="50"></span>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h6>Comic Book</h6>
                                    <div class="iq-progress-bar-linear d-inline-block mt-1 w-50">
                                       <div class="iq-progress-bar iq-bg-info">
                                          <span class="bg-info" data-percent="65"></span>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li>
                                 <div class="d-flex align-items-center justify-content-between">
                                    <h6>Adventure</h6>
                                    <div class="iq-progress-bar-linear d-inline-block mt-1 w-50">
                                       <div class="iq-progress-bar iq-bg-success">
                                          <span class="bg-success" data-percent="85"></span>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-md-12 col-lg-8">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                              <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                                 <div class="iq-header-title">
                                    <h4 class="card-title mb-0">찜 목록(수정 예정)</h4>
                                 </div>
                              </div> 
                              <div class="iq-card-body">
                                 <ul class="list-inline p-0 mb-0">
                                    <li class="d-flex mb-4 align-items-center">
                                       <div class="profile-icon bg-secondary"><span><i class="ri-file-3-fill"></i></span></div>
                                       <div class="media-support-info ml-3">
                                          <h6>Documentation</h6>
                                          <p class="mb-0">48kb</p>
                                       </div>
                                       <div class="iq-card-toolbar">
                                          <div class="dropdown">
                                             <span class="font-size-24" id="dropdownMenuButton01" data-toggle="dropdown" aria-expanded="false">
                                             <i class="ri-more-line"></i>
                                             </span>
                                             <div class="dropdown-menu dropdown-menu-right p-0" style="">
                                                <a class="dropdown-item" href="#"><i class="ri-user-unfollow-line mr-2"></i>Share</a>
                                                <a class="dropdown-item" href="#"><i class="ri-close-circle-line mr-2"></i>Delete</a>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                       <div class="profile-icon bg-secondary"><span><i class="ri-image-fill"></i></span></div>
                                       <div class="media-support-info ml-3">
                                          <h6>Images</h6>
                                          <p class="mb-0">204kb</p>
                                       </div>
                                       <div class="iq-card-toolbar">
                                          <div class="dropdown">
                                             <span class="font-size-24" id="dropdownMenuButton02" data-toggle="dropdown" aria-expanded="false">
                                             <i class="ri-more-line"></i>
                                             </span>
                                             <div class="dropdown-menu dropdown-menu-right p-0" style="">
                                                <a class="dropdown-item" href="#"><i class="ri-user-unfollow-line mr-2"></i>Share</a>
                                                <a class="dropdown-item" href="#"><i class="ri-close-circle-line mr-2"></i>Delete</a>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                       <div class="profile-icon bg-secondary"><span><i class="ri-video-fill"></i></span></div>
                                       <div class="media-support-info ml-3">
                                          <h6>Videos</h6>
                                          <p class="mb-0">509kb</p>
                                       </div>
                                       <div class="iq-card-toolbar">
                                          <div class="dropdown">
                                             <span class="font-size-24" id="dropdownMenuButton03" data-toggle="dropdown" aria-expanded="false">
                                             <i class="ri-more-line"></i>
                                             </span>
                                             <div class="dropdown-menu dropdown-menu-right p-0" style="">
                                                <a class="dropdown-item" href="#"><i class="ri-user-unfollow-line mr-2"></i>Share</a>
                                                <a class="dropdown-item" href="#"><i class="ri-close-circle-line mr-2"></i>Delete</a>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                       <div class="profile-icon bg-secondary"><span><i class="ri-file-3-fill"></i></span></div>
                                       <div class="media-support-info ml-3">
                                          <h6>Resources</h6>
                                          <p class="mb-0">48kb</p>
                                       </div>
                                       <div class="iq-card-toolbar">
                                          <div class="dropdown">
                                             <span class="font-size-24" id="dropdownMenuButton04" data-toggle="dropdown" aria-expanded="false">
                                             <i class="ri-more-line"></i>
                                             </span>
                                             <div class="dropdown-menu dropdown-menu-right p-0" style="">
                                                <a class="dropdown-item" href="#"><i class="ri-user-unfollow-line mr-2"></i>Share</a>
                                                <a class="dropdown-item" href="#"><i class="ri-close-circle-line mr-2"></i>Delete</a>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    <li class="d-flex align-items-center">
                                       <div class="profile-icon bg-secondary"><span><i class="ri-refresh-line"></i></span></div>
                                       <div class="media-support-info ml-3">
                                          <h6>Celine Dion</h6>
                                          <p class="mb-0">204kb</p>
                                       </div>
                                       <div class="iq-card-toolbar">
                                          <div class="dropdown">
                                             <span class="font-size-24" id="dropdownMenuButton05" data-toggle="dropdown" aria-expanded="false">
                                             <i class="ri-more-line"></i>
                                             </span>
                                             <div class="dropdown-menu dropdown-menu-right p-0" style="">
                                                <a class="dropdown-item" href="#"><i class="ri-user-unfollow-line mr-2"></i>Share</a>
                                                <a class="dropdown-item" href="#"><i class="ri-close-circle-line mr-2"></i>Delete</a>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                              <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                                 <div class="iq-header-title">
                                    <h4 class="card-title mb-0">구매한 도서 분야 (수정예정)</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <ul class="list-inline p-0 mb-0">
                                    <li>
                                       <div class="iq-details mb-2">
                                          <span class="title">Adventure</span>
                                          <div class="percentage float-right text-primary">95 <span>%</span></div>
                                          <div class="iq-progress-bar-linear d-inline-block w-100">
                                             <div class="iq-progress-bar">
                                                <span class="bg-primary" data-percent="95"></span>
                                             </div>
                                          </div>
                                       </div>                                       
                                    </li>
                                    <li>
                                       <div class="iq-details mb-2">
                                          <span class="title">Horror</span>
                                          <div class="percentage float-right text-warning">72 <span>%</span></div>
                                          <div class="iq-progress-bar-linear d-inline-block w-100">
                                             <div class="iq-progress-bar">
                                                <span class="bg-warning" data-percent="72"></span>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    <li>
                                      <div class="iq-details mb-2">
                                          <span class="title">Comic Book</span>
                                          <div class="percentage float-right text-info">75 <span>%</span></div>
                                          <div class="iq-progress-bar-linear d-inline-block w-100">
                                             <div class="iq-progress-bar">
                                                <span class="bg-info" data-percent="75"></span>
                                             </div>
                                          </div>
                                       </div> 
                                    </li>
                                    <li>
                                       <div class="iq-details mb-2">
                                          <span class="title">Biography</span>
                                          <div class="percentage float-right text-danger">70 <span>%</span></div>
                                          <div class="iq-progress-bar-linear d-inline-block w-100">
                                             <div class="iq-progress-bar">
                                                <span class="bg-danger" data-percent="70"></span>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    <li>
                                       <div class="iq-details">
                                          <span class="title">Mystery</span>
                                          <div class="percentage float-right text-success">80 <span>%</span></div>
                                          <div class="iq-progress-bar-linear d-inline-block w-100">
                                             <div class="iq-progress-bar">
                                                <span class="bg-success" data-percent="80"></span>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">회원님을 위한 추천 도서 (수정예정)</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <div class="dropdown">
                                 <span class="dropdown-toggle text-primary" id="dropdownMenuButton05" data-toggle="dropdown">
                                 <i class="ri-more-fill"></i>
                                 </span>
                                 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton05">
                                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="iq-card-body">
                          <ul class="perfomer-lists m-0 p-0">
                              <li class="d-flex mb-4 align-items-center">
                                 <div class="user-img img-fluid"><img class="img-fluid avatar-50 rounded-circle" src="${path}/resources/images/user/06.jpg" alt=""></div>
                                 <div class="media-support-info ml-3">
                                    <h5>Reading on the World</h5>
                                    <p class="mb-0">Lorem Ipsum is simply dummy test</p>
                                 </div>
                                 <div class="iq-card-header-toolbar d-flex align-items-center">
                                    <span class="text-dark"><b>+$82</b></span>
                                 </div>
                              </li>
                              <li class="d-flex mb-4 align-items-center">
                                 <div class="user-img img-fluid"><img class="img-fluid avatar-50 rounded-circle" src="${path}/resources/images/user/07.jpg" alt=""></div>
                                 <div class="media-support-info ml-3">
                                    <h5>Little Black Book</h5>
                                    <p class="mb-0">Lorem Ipsum is simply dummy test</p>
                                 </div>
                                 <div class="iq-card-header-toolbar d-flex align-items-center">
                                    <span class="text-dark"><b>+$90</b></span>
                                 </div>
                              </li>
                              <li class="d-flex align-items-center">
                                 <div class="user-img img-fluid"><img class="img-fluid avatar-50 rounded-circle" src="${path}/resources/images/user/08.jpg" alt=""></div>
                                 <div class="media-support-info ml-3">
                                    <h5>See the More Story</h5>
                                    <p class="mb-0">Lorem Ipsum is simply dummy test</p>
                                 </div>
                                 <div class="iq-card-header-toolbar d-flex align-items-cener">
                                    <span class="text-dark"><b>+$85</b></span>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Top Products</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <div class="dropdown">
                                 <span class="dropdown-toggle text-primary" id="dropdownMenuButton05" data-toggle="dropdown">
                                 <i class="ri-more-fill"></i>
                                 </span>
                                 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton05">
                                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="iq-card-body">
                          <ul class="perfomer-lists m-0 p-0">
                              <li class="row mb-3 align-items-center justify-content-between">
                                 <div class="col-md-8">
                                    <h5>Find The Wave Book</h5>
                                    <p class="mb-0">General Book</p>
                                 </div>
                                 <div class="col-md-4 text-right">
                                    <div class="iq-card-header-toolbar d-flex align-items-center">
                                       <span class="text-primary mr-3"><b>+$92</b></span>
                                       <div class="iq-progress-bar-linear d-inline-block mt-1 w-100">
                                          <div class="iq-progress-bar iq-bg-primary">
                                             <span class="bg-primary" data-percent="92"></span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li class="row align-items-center justify-content-between">
                                 <div class="col-md-8">
                                    <h5>A man with those Faces</h5>
                                    <p class="mb-0">Biography Book</p>
                                 </div>
                                 <div class="col-md-4 text-right">
                                    <div class="iq-card-header-toolbar d-flex align-items-center">
                                       <span class="text-danger mr-3"><b>+$85</b></span>
                                       <div class="iq-progress-bar-linear d-inline-block mt-1 w-100">
                                          <div class="iq-progress-bar iq-bg-primary">
                                             <span class="bg-danger" data-percent="85"></span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>                       
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
      <!-- Style Customizer -->
      <script src="${path}/resources/js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="${path}/resources/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="${path}/resources/js/custom.js"></script>
      <%@ include file="footer.jsp"%>