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
<c:set value="${user}" var="dto" />
<!-- loader END -->

<%@ include file="header.jsp" %>
 

  <!-- 회원정보 수정  -->
  <div id="content-page" class="content-page">
    <div class="container-fluid">
      <div class="row">
        </div>
        <div class="col-lg-12">
          <div class="iq-edit-list-data">
            <div class="tab-content">
              <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                <div class="iq-card">
                  <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                      <h4 class="card-title">회원정보 수정</h4>
                    </div>
                  </div>
                  <div class="iq-card-body">
                    <form method="post" enctype="multipart/form-data" action="<%=request.getContextPath() %>/modify.ok.go">
                      <div class="form-group row align-items-center">
                        <div class="col-md-12">
                        </div>
                      </div>
                      <div class=" row align-items-center">
                        <div class="form-group col-sm-6">
                          <label for="user_name">이름:</label>
                          <input class="form-control" name="name" id="user_name" value="${dto.user_name}" readonly>
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_email">이메일:</label>
                          <input class="form-control" id="user_email" name="email" value="${dto.user_email}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_id">아이디:</label>
                          <input class="form-control" id="user_id" name="id" value="${dto.user_id}">
                        </div>
                         <div class="form-group col-sm-6">
                          <label for="user_password">비밀번호:</label>
                          <input class="form-control" id="user_password" name="pwd" value="${dto.user_pwd}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_nickname">닉네임:</label>
                          <input class="form-control" id="user_nickname" name="nickname" value="${dto.user_nickname}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_phone">전화번호:</label>
                          <input class="form-control" id="user_phone" name="phone" value="${dto.user_phone}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_job">직업:</label>
                          <input class="form-control" id="user_job" name="job" value="${dto.user_job}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_addr">주소:</label>
                          <input class="form-control" id="user_addr" name="addr" value="${dto.user_addr}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_intro">소개글:</label>
                          <textarea class="form-control" id="user_intro" name="intro" >${dto.user_intro}</textarea>
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="img">프로필:</label>
                          <input type="file" class="btn btn-outline-success" id="img" name="image">
                        </div>
                        <div class="form-group col-sm-6">
                          <label>관심분야1</label>
                          <select name="cate1" class="form-control" id="exampleFormControlSelect4">
                            <option value="0">소설</option>
                            <option value="100">요리</option>
                            <option value="200">경제</option>
                            <option value="300">정치/사회</option>
                            <option value="400">자기개발</option>
                            <option value="500">컴퓨터/IT</option>
                            <option value="600">잡지</option>
                            <option value="700">참고서</option>
                            <option value="800">여행</option>
                            <option value="900">만화</option>
                          </select>
                        </div>
                        <div class="form-group col-sm-6">
                          <label>관심분야2</label>
                          <select name="cate2" class="form-control" id="exampleFormControlSelect5">
                            <option value="0">소설</option>
                            <option value="100">요리</option>
                            <option value="200">경제</option>
                            <option value="300">정치/사회</option>
                            <option value="400">자기개발</option>
                            <option value="500">컴퓨터/IT</option>
                            <option value="600">잡지</option>
                            <option value="700">참고서</option>
                            <option value="800">여행</option>
                            <option value="900">만화</option>
                          </select>
                          <script>
                            // 중복 선택 방지
                            const cate1 = document.querySelector("[name='cate1']");
                            const cate2 = document.querySelector("[name='cate2']");
                            cate1.addEventListener('change', function() {
                              const selectedValue = this.value;
                              const options = document.querySelectorAll('#exampleFormControlSelect5 option');
                              options.forEach(function(option) {
                                option.disabled = (option.value === selectedValue);
                              });
                            });
                            cate2.addEventListener('change', function() {
                              const selectedValue = this.value;
                              const options = document.querySelectorAll('#exampleFormControlSelect4 option');
                              options.forEach(function(option) {
                                option.disabled = (option.value === selectedValue);
                              });
                            });
                          </script>
                        </div>
                        <input type="hidden" name="money" value="0">
                        <input type="hidden" name="approve" value="0">
                        <input type="hidden" name="number" value="${dto.user_no}">
                        <input type="hidden" name="birth" value="${dto.user_birth}">
                      <button type="submit" class="btn btn-primary mr-2">정보수정</button>
                      <button type="reset" class="btn btn-primary mr-2">다시작성</button>
                        <input type="button" value="회원탈퇴" class="btn iq-bg-danger"
                               onclick="if(confirm('정말로 탈퇴하시겠습니까?')) {
                                       location.href='user.delete.go?user_no=${dto.user_no}'
                                       }else { return; }">
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="chang-pwd" role="tabpanel">
                <div class="iq-card">
                  <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                      <h4 class="card-title">Change Password</h4>
                    </div>
                  </div>
                  <div class="iq-card-body">
                    <form>
                      <div class="form-group">
                        <label for="cpass">Current Password:</label>
                        <a href="javascripe:void();" class="float-right">Forgot Password</a>
                        <input type="Password" class="form-control" id="cpass" value="">
                      </div>
                      <div class="form-group">
                        <label for="npass">New Password:</label>
                        <input type="Password" class="form-control" id="npass" value="">
                      </div>
                      <div class="form-group">
                        <label for="vpass">Verify Password:</label>
                        <input type="Password" class="form-control" id="vpass" value="">
                      </div>
                      <button type="submit" class="btn btn-primary mr-2">Submit</button>
                      <button type="reset" class="btn iq-bg-danger">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="emailandsms" role="tabpanel">
                <div class="iq-card">
                  <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                      <h4 class="card-title">Email and SMS</h4>
                    </div>
                  </div>
                  <div class="iq-card-body">
                    <form>
                      <div class="form-group row align-items-center">
                        <label class="col-8 col-md-3" for="emailnotification">Email Notification:</label>
                        <div class="col-4 col-md-9 custom-control custom-switch">
                          <input type="checkbox" class="custom-control-input" id="emailnotification" checked="">
                          <label class="custom-control-label" for="emailnotification"></label>
                        </div>
                      </div>
                      <div class="form-group row align-items-center">
                        <label class="col-8 col-md-3" for="smsnotification">SMS Notification:</label>
                        <div class="col-4 col-md-9 custom-control custom-switch">
                          <input type="checkbox" class="custom-control-input" id="smsnotification" checked="">
                          <label class="custom-control-label" for="smsnotification"></label>
                        </div>
                      </div>
                      <div class="form-group row align-items-center">
                        <label class="col-md-3" for="npass">When To Email</label>
                        <div class="col-md-9">
                          <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="email01">
                            <label class="custom-control-label" for="email01">You have new notifications.</label>
                          </div>
                          <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="email02">
                            <label class="custom-control-label" for="email02">You're sent a direct message</label>
                          </div>
                          <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="email03" checked="">
                            <label class="custom-control-label" for="email03">Someone adds you as a connection</label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group row align-items-center">
                        <label class="col-md-3" for="npass">When To Escalate Emails</label>
                        <div class="col-md-9">
                          <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="email04">
                            <label class="custom-control-label" for="email04"> Upon new order.</label>
                          </div>
                          <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="email05">
                            <label class="custom-control-label" for="email05"> New membership approval</label>
                          </div>
                          <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="email06" checked="">
                            <label class="custom-control-label" for="email06"> Member registration</label>
                          </div>
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary mr-2">Submit</button>
                      <button type="reset" class="btn iq-bg-danger">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="manage-contact" role="tabpanel">
                <div class="iq-card">
                  <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                      <h4 class="card-title">Manage Contact</h4>
                    </div>
                  </div>
                  <div class="iq-card-body">
                    <form>
                      <div class="form-group">
                        <label for="cno">Contact Number:</label>
                        <input type="text" class="form-control" id="cno" value="001 2536 123 458">
                      </div>
                      <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" class="form-control" id="email" value="Barryjone@demo.com">
                      </div>
                      <div class="form-group">
                        <label for="url">Url:</label>
                        <input type="text" class="form-control" id="url" value="https://getbootstrap.com">
                      </div>
                      <button type="submit" class="btn btn-primary mr-2">Submit</button>
                      <button type="reset" class="btn iq-bg-danger">Cancel</button>
                    </form>
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
</body>
</html>