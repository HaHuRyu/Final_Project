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
   <link rel="stylesheet" href="${path}/resources/css/dataTables.bootstrap4.min.css">
   <!-- Typography CSS -->
   <link rel="stylesheet" href="${path}/resources/css/typography.css">
   <!-- Style CSS -->
   <link rel="stylesheet" href="${path}/resources/css/style.css">
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="${path}/resources/css/responsive.css">
</head>
<body>
<c:if test="${sessionScope.UserNo != null}">
<%@include file="header.jsp"%>
<!-- TOP Nav Bar END -->
<!-- Page Content  -->
<div id="content-page" class="content-page">
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-12">
            <div class="iq-card">
               <div class="iq-card-header d-flex justify-content-between">
                  <div class="iq-header-title">
                     <h4 class="card-title">Add Books</h4>
                  </div>
               </div>
               <div class="iq-card-body">
                  <form method="post" action="book_add.go">
                     <div class="form-group">
                        <input type="hidden" name="user_no" value="${sessionScope.UserNo}">
                        <label>책 제목:</label>
                        <input type="text" class="form-control" name="seller_title" id="book_title" onclick="openModal()" autocomplete="off" readonly>
                     </div>

                     <div class="form-group">
                        <label>책 저자:</label>
                        <input type="text" class="form-control" id="author" name="seller_author" readonly>
                     </div>
                     <div class="form-group">
                        <label>책 이미지:</label>
                        <div class="custom-file">
                           <input type="text" class="form-control" id="img" name="seller_file" readonly>
                        </div>
                     </div>

                     <div class="form-group">
                        <label>새상품 원가:</label>
                        <input type="text" class="form-control" id="cost" name="book_cost" readonly>
                     </div>

                     <div class="form-group">
                        <label>판매자 중고가: </label>
                        <input type="text" class="form-control" id="price" name="seller_price">
                     </div>

                     <div class="form-group">
                        <label>책 소개글:</label>
                        <textarea class="form-control" rows="4" id="cont" name="seller_cont" readonly></textarea>
                     </div>
                     <button type="submit" class="btn btn-primary">등록</button>
                     <button type="reset" class="btn btn-danger">다시 작성</button>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>

<!-- modal -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" id="myModal"  aria-hidden="true">
   <div class="modal-dialog modal-lg">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title">책 제목을 입력해주세요.</h5>
         </div>
         <div class="modal-body">
            <div>
               <input type="text" class="form-control" id="search-textbox" name="title" style="width: 85%; display: inline-block;" onkeyup="$('#apititle').empty();" onkeydown="handleKeyDown(event)">
               <button type="button" class="btn btn-primary" onclick="delayedGetList()" style=" width:14%; height: 45px;  display: inline-block;">검색</button>
            </div>
            <br>

            <div id="apititle">

            </div>
         </div>
      </div>
   </div>
</div>
<!-- Wrapper END -->
<!-- Footer -->
<%@include file="footer.jsp"%>
<!-- Footer END -->
<!-- color-customizer -->
<!-- color-customizer END -->
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/seller-add.js"></script>
<script src="${path}/resources/js/jquery.min.js"></script>
<script src="${path}/resources/js/popper.min.js"></script>
<script src="${path}/resources/js/bootstrap.min.js"></script>
<script src="${path}/resources/js/jquery.dataTables.min.js"></script>
<script src="${path}/resources/js/dataTables.bootstrap4.min.js"></script>
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
   function openModal() {
      $('#myModal').modal('show');
   }

   function openValue(element) {
      var rowData = $(element).find("td");

      var aimg = rowData.eq(0).data("img");
      var aptitle = rowData.eq(1).data("title");
      var aauthor = rowData.eq(2).data("author");
      var aprice = rowData.eq(3).data("price");
      var acont = rowData.eq(4).data("content");


      $("#book_title").val(aptitle);
      $("#author").val(aauthor);
      $("#img").val(aimg);
      $("#cost").val(aprice);
      $("#cont").val(acont);
   }
   function handleKeyDown(event) {
      if (event.code === 'Enter' || event.keyCode === 13) {
         // 전달해야하는 파라미터가 있다면, 변수에 할당해줌.
         const searchQuery = document.getElementById('search-textbox').value;

         // 버튼 클릭 이벤트를 호출함.
         delayedGetList();
      }
   }
</script>
</body>
</c:if>

<c:if test="${sessionScope.UserNo == null}">
   <script>
      alert("로그인 후 이용해 주세요.");
      history.back();
   </script>
</c:if>
</html>