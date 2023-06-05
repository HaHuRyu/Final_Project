<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html>
<html>


   <head>
      <!-- Required meta tags -->
      <meta charset="UTF-8">
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
         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
                        <div class="newrealease-contens">
                           <h4 class="card-title mb-0">베스트 셀러</h4>
                           <ul id="newrealease-slider" class="list-inline p-0 m-0 d-flex align-items-center">
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-1.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-2.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-3.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-4.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-5.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-6.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-7.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-8.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>
                              </li>
                              <li class="item">
                                 <a href="javascript:void(0);">
                                    <img src="${path}/resources/images/browse-books/000-9.jpg" class="img-fluid w-100 rounded" alt="">
                                 </a>                              
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               <c:if test="${not empty catelist1}">
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 similar-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">${sessionScope.UserName}님을 위한 ${categoryDTO1.category} 분야를 모아봤어요!</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <a href="category.jsp" class="btn btn-sm btn-primary view-more">View More</a>
                           </div>
                        </div>
                        <div class="iq-card-body similar-contens">
                           <ul id="similar-slider" class="list-inline p-0 mb-0 row">
                              <c:forEach var="book" items="${catelist1}" begin="0" end="6">
                                    <li class="col-md-3">
                                       <div class="d-flex align-items-center">
                                          <div class="col-5 p-0 position-relative image-overlap-shadow">
                                             <a href="#"><img class="img-fluid rounded w-100" src="${path}/resources/images/browse-books/${book.book_image}" alt=""></a>
                                             <div class="view-book">
                                                <a href="${path}/book_content.go?book_no=${book.book_no}" class="btn btn-sm btn-white">View Book</a>
                                             </div>
                                          </div>
                                          <div class="col-7">
                                             <div class="mb-2">
                                                <h6 class="mb-1">${book.book_title}</h6>
                                                <p class="font-size-13 line-height mb-1">${book.book_author}</p>
                                                <div class="d-block">
                                                   <span class="font-size-13 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="price d-flex align-items-center">

                                                <h6><b><fmt:formatNumber value="${book.book_price}" pattern="#,###" />&#8361;</b></h6>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                              </c:forEach>
                           </ul>
                        </div>
                     </div>
                  </div>
               </c:if>

               <c:if test="${not empty catelist1}">
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 trendy-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">${sessionScope.UserName}님을 위한 ${categoryDTO2.category} 분야를 모아봤어요!</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <a href="category.jsp" class="btn btn-sm btn-primary view-more">View More</a>
                           </div>
                        </div>
                        <div class="iq-card-body trendy-contens">
                           <ul id="trendy-slider" class="list-inline p-0 mb-0 row">
                              <c:forEach var="book" items="${catelist2}" begin="0" end="6">
                              <li class="col-md-3">
                                 <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                       <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${path}/resources/images/browse-books/${book.book_image}" alt=""></a>
                                       <div class="view-book">
                                          <a href="${path}/book_content.go?book_no=${book.book_no}" class="btn btn-sm btn-white">View Book</a>
                                       </div>
                                    </div>
                                    <div class="col-7">
                                       <div class="mb-2">
                                          <h6 class="mb-1">${book.book_title}</h6>
                                          <p class="font-size-13 line-height mb-1">${book.book_author}</p>
                                          <div class="d-block">
                                             <span class="font-size-13 text-warning">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                       </div>
                                       <div class="price d-flex align-items-center">
                                          <h6><b><fmt:formatNumber value="${book.book_price}" pattern="#,###" />&#8361;</b></h6>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              </c:forEach>
                           </ul>
                        </div>
                     </div>
                  </div>
               </c:if>
                  <div class="col-lg-6">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title">주간 베스트책</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton2" data-toggle="dropdown">
                                 This Week<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                              </div>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <div class="row align-items-center">
                              <div class="col-sm-5 pr-0">
                                 <a href="${path}/book_content.go?book_no=${bookDTO.book_no}"><img class="img-fluid rounded w-100" src="${path}/resources/images/browse-books/${bookDTO.book_image}" alt=""></a>
                              </div>
                              <div class="col-sm-7 mt-3 mt-sm-0">
                                 <h4 class="mb-2">${bookDTO.book_title}</h4>
                                 <p class="mb-2">Author: ${bookDTO.book_author}</p>
                                 <div class="mb-2 d-block">
                                    <span class="font-size-12 text-warning">
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                    </span>
                                 </div>
                                 <span class="text-dark mb-3 d-block">${bookDTO.book_intro}</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title">Featured Writer</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton3" data-toggle="dropdown">
                                 This Week<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                                 <div class="dropdown-menu dropdown-menu-right shadow-none" aria-labelledby="dropdownMenuButton3">
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
                           <ul class="list-inline row mb-0 align-items-center iq-scrollable-block">
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/01.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Brandon Guidelines</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/02.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Hugh Millie-Yate</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">432</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/03.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Nathaneal Down</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">5471</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/04.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Thomas R. Toe</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">8764</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/05.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Druid Wensleydale</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">8987</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/06.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Natalya Undgrowth</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/07.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Desmond Eagle</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">4324</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/08.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Lurch Schpellchek</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">012</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/09.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Natalya Undgrowth</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/10.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Natalya Undgrowth</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/11.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Natalya Undgrowth</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="${path}/resources/images/user/01.jpg" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Natalya Undgrowth</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
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
         <script src="${path}/resources/js/ajax.js"></script>
         <%@ include file="footer.jsp"%>
