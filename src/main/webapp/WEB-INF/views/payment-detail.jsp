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
            <div class="container-fluid checkout-content">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title">OrderList</h4>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <ul class="list-inline p-0 m-0">
                              <c:forEach var="book" items="${bookDTOList}">
                                 <li class="checkout-product">
                                 <div class="row align-items-center">
                                    <div class="col-sm-3 col-lg-2">
                                       <div class="row align-items-center">
                                          <div class="col-sm-3">
                                          </div>
                                          <div class="col-sm-9">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="${path}/resources/images/browse-books/${book.book_image}" alt=""></a>
                                             </span>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-3 col-lg-4">
                                       <div class="checkout-product-details">
                                          <h5>${book.book_title}</h5>
                                          <p class="text-success">In stock</p>
                                          <div class="price">
                                             <h5>&#8361;<fmt:formatNumber value="${book.book_price}" pattern="#,###" /></h5>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-6 col-lg-6">
                                       <div class="row">
                                          <div class="col-sm-8">
                                             <div class="row align-items-center mt-2">
                                                <div class="col-sm-7 col-lg-6">
                                                   <p> ${book.book_basketAmount}</p>
                                                   <!--
                                                   <button type="button" class="fa fa-minus qty-btn" id="btn-minus"></button>
                                                   <input type="text" id="quantity" value="0">
                                                   <button type="button" class="fa fa-plus qty-btn" id="btn-plus"></button>
                                                   -->
                                                </div>
                                                <div class="col-sm-5 col-lg-6">
                                                   <span class="product-price">&#8361;<fmt:formatNumber value="${book.book_price}" pattern="#,###" /></span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-4">
                                             <p> ${book.book_date}</p>
                                          </div>
                                       </div>
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
   </body>
</html>