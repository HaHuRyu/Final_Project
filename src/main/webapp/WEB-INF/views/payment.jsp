<%@ page import="com.spring.model.BookDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.spring.model.BasketDTO" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
<%@ include file="header.jsp" %>

<!-- TOP Nav Bar END --> <!-- 여기 까지 모든 jsp 파일이 동일해야함 -->

  <!-- Page Content  -->
  <div id="content-page" class="content-page">
    <div class="container-fluid checkout-content">
      <div class="row">
        <div id="cart" class="card-block show p-0 col-12">
          <div class="row align-item-center">
            <div class="col-lg-8">
              <div class="iq-card">
                <div class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
                  <div class="iq-header-title">
                    <h4 class="card-title">Shopping Cart</h4>
                  </div>
                </div>
                <div class="iq-card-body">
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="d-flex justify-content-between align-items-center">
                      <img src="${path}/resources/images/booking/cart.png" alt="" height="40" width="50">
                      <span>US Unlocked Debit Card 12XX XXXX XXXX 0000</span>
                    </div>
                    <span>${sessionScope.UserId}</span>
                    <span>${sessionScope.UserName}</span>
                  </div>
                  <form class="mt-3" method="post" action="<%=request.getContextPath() %>/charge.go">
                    <div class="d-flex align-items-center">
                      <span>충전 금액 </span>&nbsp;&nbsp;&nbsp;&nbsp;
                      <select class="form-control" id="selectuserrole" name="charge" style="width: 200px">
                        <option value="5000">5000</option>
                        <option value="10000">10000</option>
                        <option value="15000">15000</option>
                        <option value="20000">20000</option>
                        <option value="25000">25000</option>
                        <option value="30000">30000</option>
                        <option value="35000">35000</option>
                        <option value="40000">40000</option>
                        <option value="45000">45000</option>
                        <option value="50000">50000</option>
                      </select><label for="selectuserrole">&nbsp;&nbsp;&nbsp;&nbsp;</label>
                      <button type="submit" class="btn btn-primary">충전</button>
                    </div>
                  </form>
                  <hr>
                  <div class="card-lists">
                    <div class="form-group">
                      <div class="custom-control custom-radio">
                        <input type="radio" id="credit" name="customRadio" class="custom-control-input">
                        <label class="custom-control-label" for="credit"> 신용 / 체크 카드</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="netbaking" name="customRadio" class="custom-control-input">
                        <label class="custom-control-label" for="netbaking">무통장입금</label>
                      </div>
                    </div>
                  </div>
                  <hr>
                  <div class="add-card">
                    <a href="#"><span><i class="ri-add-box-line mr-2 font-size-18"></i>Add Gift Card</span></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="iq-card">
                <div class="iq-card-body">
                  <p>Options</p>
                  <div class="d-flex justify-content-between">
                    <span>Coupons</span>
                    <span><a href="#"><strong>미보유</strong></a></span>
                  </div>
                  <hr>
                  <p><b>Price Details</b></p>
                  <c:set var="totalPrice" value="0" />
                  <c:forEach var="book" items="${bookList}">
                    <div class="d-flex justify-content-between mb-1">
                      <span>${book.book_title} &nbsp; ${book.book_basketAmount}권</span>
                      <span>${book.book_basketPrice}원</span>
                    </div>

                    <c:set var="totalPrice" value="${totalPrice + book.book_basketPrice}" />
                  </c:forEach>


                  <hr>
                  <div class="d-flex justify-content-between">
                    <span class="text-dark"><strong>Total</strong></span>
                    <span class="text-dark"><strong>${totalPrice}원</strong></span>
                  </div>
                  <a id="place-order" class="btn btn-primary d-block mt-3 next">Place order</a>
                </div>
              </div>
              <div class="iq-card ">
                <div class="card-body iq-card-body p-0 iq-checkout-policy">
                  <ul class="p-0 m-0">
                    <li class="d-flex align-items-center">
                      <div class="iq-checkout-icon">
                        <i class="ri-checkbox-line"></i>
                      </div>
                      <h6>Security policy (Safe and Secure Payment.)</h6>
                    </li>
                    <li class="d-flex align-items-center">
                      <div class="iq-checkout-icon">
                        <i class="ri-truck-line"></i>
                      </div>
                      <h6>Delivery policy (Home Delivery.)</h6>
                    </li>
                    <li class="d-flex align-items-center">
                      <div class="iq-checkout-icon">
                        <i class="ri-arrow-go-back-line"></i>
                      </div>
                      <h6>Return policy (Easy Retyrn.)</h6>
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
<script>
  function incrementQuantity(bookNo, quantity) {
    const su = 'plus'
    updateQuantityOnServer(bookNo, quantity, su);
  }

  function decrementQuantity(bookNo, quantity) {
    const su = 'minus'
    updateQuantityOnServer(bookNo, quantity, su);
  }


  function updateQuantityOnServer(bookNo, quantity, su) {
    location.href="updateQuantity.go?bookNo="+bookNo+"&quantity="+quantity+"&su="+su+"";
  }
</script>
</body>
</html>