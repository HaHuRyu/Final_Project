<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Booksto - Responsive Bootstrap 4 Admin Dashboard Template</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/images/favicon.ico"/>
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
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-body">
                        <div class="d-flex align-items-center">
                            <div class="rounded-circle iq-card-icon bg-primary"><i class="ri-user-line"></i></div>
                            <div class="text-left ml-3">
                                <h2 class="mb-0"><span class="counter">${user_count}</span></h2>
                                <h5 class="">총 회원 수</h5>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-body">
                        <div class="d-flex align-items-center">
                            <div class="rounded-circle iq-card-icon bg-danger"><i class="ri-book-line"></i></div>
                            <div class="text-left ml-3">
                                <h2 class="mb-0"><span class="counter">${book_count}</span></h2>
                                <h5 class="">총 도서 수</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-body">
                        <div class="d-flex align-items-center">
                            <div class="rounded-circle iq-card-icon bg-warning"><i class="ri-shopping-cart-2-line"></i>
                            </div>
                            <div class="text-left ml-3">
                                <h2 class="mb-0"><span class="counter"> <fmt:formatNumber value="${order_sale}"
                                                                                          pattern="#,###"/></span>원</h2>
                                <h5 class="">이번달 판매액</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-body">
                        <div class="d-flex align-items-center">
                            <div class="rounded-circle iq-card-icon bg-info"><i class="ri-radar-line"></i></div>
                            <div class="text-left ml-3">
                                <h2 class="mb-0"><span class="counter">${order_count}</span></h2>
                                <h5 class="">이번달 주문수</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <div class="iq-header-title">
                            <h4 class="card-title mb-0">하루당 매출</h4>
                        </div>
                    </div>
                    <div class="iq-card-body">
                        <div id="iq-sale-chart"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <div class="iq-header-title">
                            <h4 class="card-title mb-0">한달 매출 요약</h4>
                        </div>
                    </div>
                    <div class="iq-card-body">
                        <ul class="list-inline p-0 mb-0">
                            <li>
                                <div class="iq-details mb-2">
                                    <span class="title">총 매출</span>
                                    <div class="percentage float-right text-primary"><fmt:formatNumber
                                            value="${percentSale}" maxFractionDigits="1" type="number"/> <span>%</span>
                                    </div>
                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                        <div class="iq-progress-bar iq-bg-primary">
                                            <span class="bg-primary"
                                                  data-percent="<fmt:formatNumber value="${percentSale}" maxFractionDigits="1" type="number"/>"></span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="iq-details mb-2">
                                    <span class="title">순수익</span>
                                    <div class="percentage float-right text-warning"><fmt:formatNumber
                                            value="${percentSale * 0.7}" maxFractionDigits="1" type="number"/>
                                        <span>%</span></div>
                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                        <div class="iq-progress-bar iq-bg-warning">
                                            <span class="bg-warning"
                                                  data-percent="<fmt:formatNumber value="${percentSale * 0.7}" maxFractionDigits="1" type="number"/>"></span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="iq-details mb-2">
                                    <span class="title">경비</span>
                                    <div class="percentage float-right text-info"><fmt:formatNumber
                                            value="${percentSale * 0.3}" maxFractionDigits="1" type="number"/>
                                        <span>%</span></div>
                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                        <div class="iq-progress-bar iq-bg-info">
                                            <span class="bg-info"
                                                  data-percent="<fmt:formatNumber value="${percentSale * 0.3}" maxFractionDigits="1" type="number"/>"></span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-body">
                        <h4 class="text-uppercase text-black mb-0">현재 접속 인원</h4>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="pb-5 pt-4 text-black"><span id="counter"><script
                                    id="_wau57m">var _wau = _wau || [];
                            _wau.push(["dynamic", "wwa5mh17lj", "57m", "a4c2f4ffffff", "big"]);</script></span></div>
                            <div class="text-left">
                                <p class="m-0 text-uppercase font-size-12"></p>
                                <div class="mb-1 text-black"><span class="text-danger"></span></div>
                                <p class="m-0 text-uppercase font-size-12"></p>
                                <div class="mb-1 text-black"><span class="text-success"></span></div>
                                <p class="m-0 text-uppercase font-size-12"></p>
                                <div class="text-black"><span class="text-danger"></span></div>
                            </div>
                        </div>
                        <div id="wave-chart-7"></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                            <h4 class="card-title">주문 내역</h4>
                        </div>
                        <div class="iq-card-header-toolbar d-flex align-items-center">
                            <div class="dropdown">
                                 <span class="dropdown-toggle text-primary" id="dropdownMenuButton5"
                                       data-toggle="dropdown">
                                 <i class="ri-more-fill"></i>
                                 </span>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton5">
                                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                                    <a class="dropdown-item" href="#"><i
                                            class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="iq-card-body">
                        <div class="table-responsive">
                            <table class="table mb-0 table-borderless">
                                <thead>
                                <tr>
                                    <th scope="col">주문자명</th>
                                    <th scope="col">주문날짜</th>
                                    <th scope="col">주문번호</th>
                                    <th scope="col">주문금액</th>
                                    <th scope="col">상태</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="orderListDTO" items="${allList}">
                                    <tr>
                                        <td>${orderListDTO.user_name}</td>
                                        <td>${fn:substring(orderListDTO.order_date, 0, 10)}</td>
                                        <td>${orderListDTO.order_set}</td>
                                        <td><fmt:formatNumber value="${orderListDTO.total_order_price}"
                                                              groupingUsed="true"/>원
                                        </td>
                                        <td>
                                            <div class="badge badge-pill badge-success">결제완료</div>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
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

    if (jQuery('#iq-sale-chart').length) {
        var options = {
            series: [{
                name: '총매출',
                data: [
                    ${daily_sales.get('Monday') == null ? 0 : daily_sales.get('Monday')},
                    ${daily_sales.get('Tuesday') == null ? 0 : daily_sales.get('Tuesday')},
                    ${daily_sales.get('Wendsday') == null ? 0 : daily_sales.get('Wendsday')},
                    ${daily_sales.get('Thursday') == null ? 0 : daily_sales.get('Thursday')},
                    ${daily_sales.get('Friday') == null ? 0 : daily_sales.get('Friday')},
                    ${daily_sales.get('Saturday') == null ? 0 : daily_sales.get('Saturday')},
                    ${daily_sales.get('Sunday') == null ? 0 : daily_sales.get('Sunday')}
                ]
            }],
            chart: {
                type: 'bar'
            },
            colors: ['#0dd6b8'],

            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '60%',
                    endingShape: 'rounded',
                    groupPadding: 0.1 // 값을 높일수록 간격이 증가합니다 기본값은 0.2입니다.
                }
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                show: false,
                width: 1,
                colors: ['transparent']
            },
            xaxis: {
                type: "category", //유형을 카테고리로 설정
                categories: ['월', '화', '수', '목', '금', '토', '일'],
                tickPlacement: 'on', // 틱 레이블이 틱 사이에 표시되도록 구성
            },
            yaxis: {
                title: {
                    text: ''
                },
                labels: {
                    offsetX: -20,
                    offsetY: 0
                },
            },
            grid: {
                padding: {
                    left: -5,
                    right: 0
                }
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                y: {
                    formatter: function (val) {
                        return "&#8361;" + val + ""
                    }
                }
            }
        };

        var chart = new ApexCharts(document.querySelector("#iq-sale-chart"), options);
        chart.render();
    }
</script>

<script async src="//waust.at/d.js"></script>
</body>
</html>