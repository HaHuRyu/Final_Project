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
      <link rel="stylesheet" href="${path}/resources/css/font.css">
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
                                 <img src="${path}/resources/images/user_profile_image/${sessionScope.UserImg}" alt="profile-bg" class="rounded-circle img-fluid">
                                 <div class="profile-detail mt-3">
                                    <h3><%= session.getAttribute("UserName")%></h3>
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
                                       <p class="mb-0">${sessionScope.UserBirth.substring(0,10)}</p>
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
                                       <p class="mb-0"><%=session.getAttribute("UserCate1Name")%></p>
                                    </div>
                                 </div>
                              </li>                              
                              <li>
                                 <div class="row align-items-center justify-content-between mb-3">
                                    <div class="col-sm-6">
                                       <h6>관심분야 2</h6>
                                    </div>
                                    <div class="col-sm-6">
                                       <p class="mb-0"><%=session.getAttribute("UserCate2Name")%></p>
                                    </div>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0"> Money</h4>
                           </div>
                        </div> 
                        <div class="iq-card-body">
                                    <h6>내 잔액 :</h6>
                                    <div class="iq-progress-bar-linear d-inline-block mt-1 w-50">
                                          <span>    ${sessionScope.UserMoney}</span>
                                       <div><input type="button" class="btn btn-primary mr-2" value="충전" onclick="location.href='payment.go'" ></div>
                                    </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-md-12 col-lg-8">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                              <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                                 <div class="iq-header-title">
                                    <h4 class="card-title mb-0">찜 목록</h4>
                                 </div>
                              </div> 
                              <div class="iq-card-body">
                                 <ul class="list-inline p-0 mb-0">
                                    <c:forEach items="${wlist}" var="wdto">

                                    <li class="d-flex mb-4 align-items-center">
                                       <div class="user-img img-fluid"><img class="img-fluid avatar-50 rounded-circle" src="${path}/resources/images/browse-books/${wdto.book_image}" alt=""></div>
                                       <!--<div class="profile-icon bg-secondary"><span><i class="ri-file-3-fill"></i></span></div>-->
                                       <div class="media-support-info ml-3">
                                          <h6>${wdto.book_title}</h6>
                                          <p class="mb-0">${wdto.book_author}</p>
                                       </div>
                                       <div class="iq-card-toolbar">
                                       </div>
                                    </li>
                                    </c:forEach>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                              <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                 <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                                    <div class="iq-header-title">
                                       <h4 class="card-title mb-0">구매내역</h4>
                                    </div>
                                 </div>
                                 <div class="iq-card-body">
                                    <ul class="list-inline p-0 mb-0">
                                       <c:forEach items="${olist}" var="wdto" begin="0" end="4">

                                          <li class="d-flex mb-4 align-items-center">
                                             <div class="user-img img-fluid"><img class="img-fluid avatar-50 rounded-circle" src="${path}/resources/images/browse-books/${wdto.book_image}" alt=""></div>
                                             <!--<div class="profile-icon bg-secondary"><span><i class="ri-file-3-fill"></i></span></div>-->
                                             <div class="media-support-info ml-3">
                                                <h6>${wdto.book_title}</h6>
                                                <p class="mb-0">${wdto.book_author}</p>
                                             </div>
                                             <div class="iq-card-toolbar">
                                             </div>
                                          </li>
                                       </c:forEach>
                                    </ul>
                                 </div>
                              </div>
                        </div>
                     </div>
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between align-items-center mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">추천 작가</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">

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
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Wrapper END -->
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
      <!-- Style Customizer -->
      <script src="${path}/resources/js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="${path}/resources/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="${path}/resources/js/custom.js"></script>
      <%@ include file="footer.jsp"%>