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
<div class="wrapper">
    <div id="content-page" class="content-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="iq-card-transparent mb-0">
                        <div class="d-block text-center">
                            <h2 class="mb-3">Search by Book Name</h2>
                            <div class="w-100 iq-search-filter">

                                <form method="post" action="used_board_search.go">
                                    <ul class="list-inline p-0 m-0 row justify-content-center search-menu-options">
                                        <li class="search-menu-opt">
                                            <div class="iq-dropdown">
                                                <div class="form-group mb-0">
                                                    <select class="form-control form-search-control bg-white border-0" id="exampleFormControlSelect1" name="field">
                                                        <option value="title">책 제목</option>
                                                        <option value="author">저자</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="search-menu-opt">
                                            <div class="iq-search-bar search-book d-flex align-items-center">
                                                <div class="searchbox">
                                                    <input name="keyword" type="text" class="text search-input" placeholder="키워드를 입력하세요">
                                                </div>
                                                <input type="submit" onclick="location.href='used_board_search.go'" class="btn btn-primary search-data ml-2" value="검색"/>
                                            </div>


                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div align="right">
                        <c:if test="${sessionScope.UserNo != null}">
                            <input align="right" type="button" onclick="location.href='seller_add.go'" class="btn btn-primary search-data ml-2" value="글 등록"/>
                        </c:if>
                    </div>
                    <br>

                    <div class="iq-card">
                        <div class="iq-card-body">
                            <div class="row">
                                <c:set var="list" value="${List}"/>
                                <c:forEach items="#{list}" var="dto" varStatus="loop">
                                    <div class="col-sm-6 col-md-4 col-lg-3">
                                        <div class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
                                            <div class="iq-card-body p-0">
                                                <div class="d-flex align-items-center" <%--style="height: 186.51px;"--%>>
                                                    <a href="book_page.go?seller_no=${dto.seller_no}"><img class="img-fluid rounded w-100"
                                                                                                           src="${dto.seller_file}"
                                                                                                           alt="">
                                                    </a>
                                                    <div class="col-6">
                                                        <div class="mb-2">
                                                            <h6 class="mb-1">${dto.seller_title}</h6>
                                                            <p class="font-size-13 line-height mb-1">${dto.seller_author}</p>
                                                            <div class="d-block">
                                                      <span class="font-size-13 text-warning">
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                      </span>
                                                            </div>
                                                        </div>
                                                        <div class="price d-flex align-items-center">
                                                            <span class="pr-1 old-price">${dto.book_cost}</span>
                                                            <br>
                                                            <h6><b>${dto.seller_price}원</b></h6>
                                                        </div>
                                                        <div class="iq-product-action">
                                                            <a href="javascript:void();"><i
                                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                            <a href="javascript:void();" class="ml-2"><i
                                                                    class="ri-heart-fill text-danger"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>
                    </div>
                </div>

                <c:set var="paging" value="${Paging }" />
                <%-- 페이징 처리 출력 부분 --%>
                <div class="col-lg-12" align="center">
                    <nav aria-label="Search results pages">
                        <ul class="pagination">
                            <c:if test="${paging.page > paging.block }">
                                <li class="page-item"><a class="page-link" href="user_gall.go?page=1">처음으로</a></li>
                            </c:if>

                            <c:forEach begin="${paging.startBlock }"
                                       end="${paging.endBlock }" var="i">

                                <c:if test="${i == paging.page - 1}">
                                    <li class="page-item"><a class="page-link" href="user_gall.go?page=${i }">${i }</a></li>
                                </c:if>

                                <c:if test="${i == paging.page }">
                                    <li class="page-item"><a class="page-link" href="user_gall.go?page=${i }">${i }</a></li>
                                </c:if>

                                <c:if test="${i == paging.page + 1 }">
                                    <li class="page-item"><a class="page-link" href="user_gall.go?page=${i }">${i }</a></li>
                                </c:if>
                            </c:forEach>


                            <c:if test="${paging.endBlock < paging.allPage }">
                                <li class="page-item"><a class="page-link" href="user_gall.go?page=${paging.allPage }">마지막으로</a></li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Wrapper END -->
<%@include file="footer.jsp"%>

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