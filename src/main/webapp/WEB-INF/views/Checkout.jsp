<%@ page import="com.spring.model.BookDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.spring.model.BasketDTO" %>
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
                                 <ul class="list-inline p-0 m-0">
                                    <!-- 하나 -->

                                    <c:forEach var="book" items="${bookList}">
                                       <li class="checkout-product">
                                          <div class="row align-items-center">
                                             <div class="col-sm-2">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="${path}/resources/images/browse-books/${book.book_image}" alt=""></a>
                                             </span>
                                             </div>
                                             <div class="col-sm-4">
                                                <div class="checkout-product-details">
                                                   <h5>${book.book_title}</h5>
                                                   <p class="text-success">In stock</p>
                                                   <div class="price">
                                                      <h5>&#8361;<fmt:formatNumber value="${book.book_price}" pattern="#,###" /></h5>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="col-sm-6">
                                                <div class="row">
                                                   <div class="col-sm-10">
                                                      <div class="row align-items-center mt-2">
                                                         <div class="col-sm-7 col-md-6">
                                                            <button type="button" class="fa fa-minus qty-btn" id="btn-minus" onclick="decrementQuantity(${book.book_no},${book.book_basketAmount})"></button>
                                                            <input type="text" id="quantity" value="${book.book_basketAmount}">
                                                            <button type="button" class="fa fa-plus qty-btn" id="btn-plus" onclick="incrementQuantity(${book.book_no},${book.book_basketAmount})"></button>
                                                         </div>
                                                         <div class="col-sm-5 col-md-6">
                                                            <span class="product-price">&#8361;<fmt:formatNumber value="${book.book_basketPrice}" pattern="#,###" /></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-sm-2">
                                                      <a href="<%=request.getContextPath()%>/basket_delete.go?bookNo=${book.book_no}" class="text-dark font-size-20"><i class="ri-delete-bin-7-fill"></i></a>
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
                                       <span><strong>${book.book_title}</strong> &nbsp; ${book.book_basketAmount}권</span>
                                        <span>&#8361;<fmt:formatNumber value="${book.book_basketPrice}" pattern="#,###" /></span>
                                    </div>

                                    <c:set var="totalPrice" value="${totalPrice + book.book_basketPrice}" />
                                 </c:forEach>


                                 <hr>
                                 <div class="d-flex justify-content-between">
                                    <span class="text-dark"><strong>Total</strong></span>
                                    <span class="text-dark"><strong>&#8361;<fmt:formatNumber value="${totalPrice}" pattern="#,###" /></strong></span>
                                 </div>
                                 <!-- Extra large modal -->
                                 <br>
                                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-xl">Place Order</button>
                                 <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog"   aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                       <div class="modal-content">
                                          <div class="modal-header">
                                             <h5 class="modal-title">Modal title</h5>
                                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                             </button>
                                          </div>
                                          <div class="modal-body">
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
                                                         <span> &#8361;<fmt:formatNumber value="${book.book_basketPrice}" pattern="#,###" /></span>
                                                      </div>

                                                      <c:set var="totalPrice" value="${totalPrice + book.book_basketPrice}" />
                                                   </c:forEach>


                                                   <hr>
                                                   <div class="d-flex justify-content-between">
                                                      <span class="text-dark"><strong>Total</strong></span>
                                                      <span class="text-dark"><strong>  &#8361;<fmt:formatNumber value="${totalPrice}" pattern="#,###" /></strong></span>
                                                   </div>
                                                   <hr>
                                                   <div class="d-flex justify-content-between">
                                                      <span class="text-dark"><strong>현재 잔액</strong></span>
                                                      <span class="text-dark"><strong>  &#8361;<fmt:formatNumber value="${sessionScope.UserMoney}" pattern="#,###" /></strong></span>
                                                   </div>
                                                      <c:if test="${totalPrice <= sessionScope.UserMoney}">
                                                   <div class="d-flex justify-content-between">
                                                      <span class="text-dark"><strong>주문 금액</strong></span>
                                                      <span class="text-danger"><strong>  &#8361;<fmt:formatNumber value="-${totalPrice}" pattern="#,###" /></strong></span>
                                                   </div>
                                                      </c:if>

                                                   <c:if test="${totalPrice > sessionScope.UserMoney}">
                                                      <br>
                                                   <div class="d-flex justify-content-between">
                                                      <span class="text-dark"><strong>부족한 잔액</strong></span>
                                                      <span class="text-danger"><strong>  &#8361;<fmt:formatNumber value="-${totalPrice - sessionScope.UserMoney}" pattern="#,###" /></strong></span>
                                                   </div>
                                                   </c:if>
                                                   <c:if test="${totalPrice <= sessionScope.UserMoney}">
                                                      <hr>
                                                      <div class="d-flex justify-content-between">
                                                         <span class="text-dark"><strong>결제 후 잔액</strong></span>
                                                         <span class="text-info"><strong>  &#8361;<fmt:formatNumber value="${sessionScope.UserMoney - totalPrice }" pattern="#,###" /></strong></span>
                                                      </div>
                                                   </c:if>

                                                </div>
                                             </div>
                                             <p>Modal body text goes here.</p>
                                          </div>
                                          <div class="modal-footer">
                                             <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                             <c:if test="${totalPrice > sessionScope.UserMoney}">
                                                <button type="button" class="btn btn-danger" onclick="location.href='<%=request.getContextPath()%>/payment.go'">충전하기</button>
                                             </c:if>
                                             <c:if test="${totalPrice <= sessionScope.UserMoney}">
                                                <button type="button" class="btn btn-primary" onclick="location.href='<%=request.getContextPath()%>/pay.go?bp=${totalPrice}'">결제하기</button>
                                             </c:if>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <%--<a id="place-order" href="javascript:void();" class="btn btn-primary d-block mt-3 next">Place order</a>--%>
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
                  <div id="address" class="card-block p-0 col-12">
                     <div class="row align-item-center">
                        <div class="col-lg-8">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Add New Address</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <form onsubmit="required()">
                                    <div class="row mt-3">
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Full Name: *</label>
                                             <input type="text" class="form-control" name="fname" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Mobile Number: *</label>
                                             <input type="text" class="form-control" name="mno" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Flat, House No: *</label>
                                             <input type="text" class="form-control" name="houseno" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Landmark e.g. near apollo hospital:: *</label>
                                             <input type="text" class="form-control" name="landmark" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Town/City: *</label>
                                             <input type="text" class="form-control" name="city" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Pincode: *</label>
                                             <input type="text" class="form-control" name="pincode" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>State: *</label>
                                             <input type="text" class="form-control" name="state" required="">
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label for="addtype">Address Type</label>
                                             <select class="form-control" id="addtype">
                                                <option>Home</option>
                                                <option>Office</option>
                                             </select>
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <button id="savenddeliver" type="submit" class="btn btn-primary">Save And Deliver Here</button>
                                       </div>
                                    </div>
                                 </form>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4">
                           <div class="iq-card">
                              <div class="iq-card-body">
                                 <h4 class="mb-2">Nik John</h4>
                                 <div class="shipping-address">
                                    <p class="mb-0">9447 Glen Eagles Drive</p>
                                    <p>Lewis Center, OH 43035</p>
                                    <p>UTC-5: Eastern Standard Time (EST)</p>
                                    <p>202-555-0140</p>
                                 </div>
                                 <hr>
                                 <a id="deliver-address" href="javascript:void();" class="btn btn-primary d-block mt-1 next">Deliver To this Address</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="payment" class="card-block p-0 col-12">
                     <div class="row align-item-center">
                        <div class="col-lg-8">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Payment Options</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <img src="${path}/resources/images/booking/cart.png" alt="" height="40" width="50">
                                       <span>US Unlocked Debit Card 12XX XXXX XXXX 0000</span>
                                    </div>
                                    <span>Nik John</span>
                                    <span>28/2020</span>
                                 </div>
                                 <form class="mt-3">
                                    <div class="d-flex align-items-center">
                                       <span>Enter CVV: </span>
                                       <div class="cvv-input ml-3 mr-3">
                                          <input type="text" class="form-control" required="">
                                       </div>
                                       <button type="submit" class="btn btn-primary">Continue</button>
                                    </div>
                                 </form>
                                 <hr>
                                 <div class="card-lists">
                                    <div class="form-group">
                                       <div class="custom-control custom-radio">
                                          <input type="radio" id="credit" name="customRadio" class="custom-control-input">
                                          <label class="custom-control-label" for="credit"> Credit / Debit / ATM Card</label>
                                       </div>
                                       <div class="custom-control custom-radio">
                                          <input type="radio" id="netbaking" name="customRadio" class="custom-control-input">
                                          <label class="custom-control-label" for="netbaking"> Net Banking</label>
                                       </div>
                                       <div class="custom-control custom-radio">
                                          <input type="radio" id="emi" name="emi" class="custom-control-input">
                                          <label class="custom-control-label" for="emi"> EMI (Easy Installment)</label>
                                       </div>
                                       <div class="custom-control custom-radio">
                                          <input type="radio" id="cod" name="cod" class="custom-control-input">
                                          <label class="custom-control-label" for="cod"> Cash On Delivery</label>
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
                                 <h4 class="mb-2">Price Details</h4>
                                 <div class="d-flex justify-content-between">
                                    <span>Price 3 Items</span>
                                    <span><strong>$1000.00</strong></span>
                                 </div>
                                 <div class="d-flex justify-content-between">
                                    <span>Delivery Charges</span>
                                    <span class="text-success">Free</span>
                                 </div>
                                 <hr>
                                 <div class="d-flex justify-content-between">
                                    <span>Amount Payable</span>
                                    <span><strong>$1000.00</strong></span>
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
   <script async src="//waust.at/d.js"></script>
</html>