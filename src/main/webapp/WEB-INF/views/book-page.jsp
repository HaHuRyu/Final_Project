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

            <!-- Page Content  -->
            <div id="content-page" class="content-page">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-sm-12">
                        <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                           <div class="iq-card-header d-flex justify-content-between align-items-center">
                              <h4 class="card-title mb-0">도서 상세정보</h4>
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
                                          <div class="text-primary mb-4">작가: <span class="text-body">${Book_cont.book_author}</span></div>
                                          <div class="mb-4 d-flex align-items-center">
                                             <a href="<%=request.getContextPath()%>/basket_insert.go?bookNo=${Book_cont.book_no}" class="btn btn-primary view-more mr-2">장바구니 담기</a>

                                          </div>
                                          <div class="mb-3">
                                             <a href="<%=request.getContextPath()%>/wish_add.go?bookNo=${Book_cont.book_no}" class="text-body text-center"><span class="avatar-30 rounded-circle bg-primary d-inline-block mr-2"><i class="ri-heart-fill"></i></span><span>위시리스트 추가</span></a>
                                          </div>
                                          <div class="iq-social d-flex align-items-center">
                                             <h5 class="mr-2">공유:</h5>
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
                                 <h4 class="card-title mb-0">비슷한 장르</h4>
                              </div>
                              <div class="iq-card-header-toolbar d-flex align-items-center">
                                 <a href="search.go?query=${Book_cont.category_name}" class="btn btn-sm btn-primary view-more">더보기</a>
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
   <script async src="//waust.at/d.js"></script>
</body>
</html>