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
<body>
<%@include file="header.jsp"%>
<!-- TOP Nav Bar END -->
<!-- Page Content  -->
<c:set var="dto" value="${Dto}"/>
<c:set var="sellNo" value="${No}"/>
<div id="content-page" class="content-page">
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
               <div class="iq-card-header d-flex justify-content-between align-items-center">
                  <h4 class="card-title mb-0">책 구메페이지</h4>
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
                                             <img src="${dto.seller_file}" class="img-fluid w-100 rounded" alt="">
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
                              <h3 class="mb-3">${dto.seller_title}</h3>
                              <div class="price d-flex align-items-center font-weight-500 mb-2">
                                 <span class="font-size-20 pr-2 old-price">${dto.book_cost}</span>
                                 <span class="font-size-24 text-dark">${dto.seller_price}</span>
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
                              <span class="text-dark mb-4 pb-4 iq-border-bottom d-block">${dto.seller_cont}</span>
                              <div class="text-primary mb-4">저자 <span class="text-body">${dto.seller_author}</span></div>
                              <div class="mb-4 d-flex align-items-center">
                                 <c:if test="${dto.user_no != sessionScope.UserNo}">
                                    <a href="javascript:void(0);" onclick="openNewWindow()" class="btn btn-primary view-more mr-2">판매자와 채팅</a>
                                 </c:if>
                                 <c:if test="${dto.user_no == sessionScope.UserNo}">
                                    <a href="#" class="btn btn-primary view-more mr-2">수정하기</a>
                                 </c:if>

                                 <c:if test="${dto.user_no != sessionScope.UserNo}">
                                    <form method="post" action="used_book_pay.go">
                                       <input type="hidden" name="sellno" value="${sellNo}">
                                       <input type="hidden" name="sellprice" value="${dto.seller_price}">
                                          <%-- <input class="btn btn-primary view-more mr-2" type="submit" value="바로구매">--%>
                                    </form>
                                 </c:if>
                              </div>

                              <script>
                                 function openNewWindow() {
                                    <c:if test="${sessionScope.UserNo != null}">
                                    var url = "<%=request.getContextPath()%>/chat.go?receiveNo=${dto.user_no}";
                                    var windowName = "채팅창";
                                    var windowFeatures = "width=500,height=708,toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no";
                                    window.open(url, windowName, windowFeatures);
                                    </c:if>

                                    <c:if test="${sessionScope.UserNo == null}">
                                    alert("로그인 후 이용해 주세요.");
                                    </c:if>
                                 }
                              </script>


                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- Wrapper END -->
<%@include file="footer.jsp"%>

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