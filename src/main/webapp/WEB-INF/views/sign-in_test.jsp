<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
   <head>
      <!-- Required meta tags 이 주석은 바뀜-->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Booksto - Responsive Bootstrap 4 Admin Dashboard Template</title>
      <!-- Favicon -->
      <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/responsive.css">
   </head>
   <body>
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
        <!-- Sign in Start -->
	        <section class="sign-in-page">
	            <div class="container p-0">
	                <div class="row no-gutters height-self-center">
	                  <div class="col-sm-12 align-self-center page-content rounded">
	                    <div class="row m-0">
	                      <div class="col-sm-12 sign-in-page-data">
	                          <div class="sign-in-from bg-primary rounded">
	                              <h3 class="mb-0 text-center text-white">로그인</h3>
	                              <p class="text-center text-white">아이디와 비밀번호를 입력해주세요.</p>
	                              <form class="mt-4 form-text" action="<%=request.getContextPath()%>/login_ok.go" method="post">
	                                  <div class="form-group">
	                                      <%--@declare id="exampleinputemail1"--%><label for="exampleInputEmail1">아이디</label>
	                                      <input type="text" class="form-control mb-0" name="user_id" placeholder="ID">
	                                  </div>
	                                  <div class="form-group">
	                                      <%--@declare id="exampleinputpassword1"--%><label for="exampleInputPassword1">비밀번호</label>
	                                      <a href="find_pwd.go" class="float-right text-dark">비밀번호를 잊으셨나요?</a>
	                                      <input type="password" class="form-control mb-0" name="user_pwd" placeholder="Password">
	                                  </div>
	 
	                                  <div class="sign-info text-center">
	                                      <button type="submit" class="btn btn-white d-block w-100 mb-2">회원가입</button>
	                                      <span class="text-dark dark-color d-inline-block line-height-2">회원이 아니신가요? <a href="<%=request.getContextPath() %>/signup.go" class="text-white">가입하기</a></span>
	                                  </div>
	                              </form>
	                          </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	            </div>
	        </section>
        <!-- Sign in END -->
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
      <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
      <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
      <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/waypoints.min.js"></script>
      <script src="<%=request.getContextPath()%>/resources/js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/wow.min.js"></script>
      <!-- Apexcharts JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/apexcharts.js"></script>
      <!-- lottie JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/lottie.js"></script>
      <!-- Slick JavaScript --> 
      <script src="<%=request.getContextPath()%>/resources/js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/smooth-scrollbar.js"></script>
      <!-- Style Customizer -->
      <script src="<%=request.getContextPath()%>/resources/js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>
   </body>
</html>
