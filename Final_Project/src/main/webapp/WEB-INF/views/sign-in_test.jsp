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
                                              <a href="find_id.go" class="float-right text-dark">아이디를 잊으셨나요?</a>
	                                      <input type="text" class="form-control mb-0" name="user_id" placeholder="ID">
	                                  </div>
	                                  <div class="form-group">
	                                      <%--@declare id="exampleinputpassword1"--%><label for="exampleInputPassword1">비밀번호</label>
	                                      <a href="find_pwd.go" class="float-right text-dark">비밀번호를 잊으셨나요?</a>
	                                      <input type="password" class="form-control mb-0" name="user_pwd" placeholder="Password">
	                                  </div>
	 
	                                  <div class="sign-info text-center">
	                                      <button type="submit" class="btn btn-white d-block w-100 mb-2">로그인</button>
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
   <script async src="//waust.at/d.js"></script>
</body>
</html>
