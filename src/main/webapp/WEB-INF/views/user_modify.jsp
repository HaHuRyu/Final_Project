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
  <link rel="stylesheet" href="${path}/resources/css/font.css">

</head>
<body class="sidebar-main-active right-column-fixed">
<c:set value="${user}" var="dto" />
<!-- loader Start -->
<div id="loading">
  <div id="loading-center">
  </div>
</div>
<!-- loader END -->
<!-- Wrapper Start -->
  <%@ include file="header.jsp"%>
  <!-- Sidebar  -->

  <!-- TOP Nav Bar END -->

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
                          <input class="form-control" name="name" id="user_name" value="${user.user_name}" readonly>
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_email">이메일:</label>
                          <input class="form-control" id="user_email" name="email" value="${user.user_email}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_id">아이디:</label>
                          <input class="form-control" id="user_id" name="id" value="${user.user_id}">
                        </div>
                         <div class="form-group col-sm-6">
                          <label for="user_password">비밀번호:</label>
                          <input class="form-control" id="user_password" name="password" value="${user.user_pwd}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_nickname">닉네임:</label>
                          <input class="form-control" id="user_nickname" name="nickname" value="${user.user_nickname}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_phone">전화번호:</label>
                          <input class="form-control" id="user_phone" name="phone" value="${user.user_phone}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_job">직업:</label>
                          <input class="form-control" id="user_job" name="job" value="${user.user_job}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_addr">주소:</label>
                          <input class="form-control" id="user_addr" name="addr" value="${user.user_addr}">
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="user_intro">소개글:</label>
                          <textarea class="form-control" id="user_intro" name="intro" >${user.user_intro}</textarea>
                        </div>
                        <div class="form-group col-sm-6">
                          <label for="img">프로필:</label>
                          <div class="custom-file">
                            <input type="file" class="custom-file-input" id="img" name="image">
                            <label class="custom-file-label btn btn-outline-success" for="img">Choose file</label>
                          </div>
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
                        <input type="hidden" name="number" value="${user.user_no}">
                        <input type="hidden" name="birth" value="${user.user_birth}">
                      <button type="submit" class="btn btn-primary mr-2">정보수정</button>
                      <button type="reset" class="btn btn-primary mr-2">다시작성</button>
                        <input type="button" value="회원탈퇴" class="btn iq-bg-danger"
                               onclick="if(confirm('정말로 탈퇴하시겠습니까?')) {
                                       location.href='user.delete.go?user_no=${user.user_no}'
                                       }else { return; }">
                      </div>
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