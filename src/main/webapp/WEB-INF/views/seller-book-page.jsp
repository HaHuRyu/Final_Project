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
<%@include file="header.jsp" %>
<!-- TOP Nav Bar END -->
<!-- Page Content  -->
<c:set var="dto" value="${Dto}"/>
<c:set var="sellNo" value="${No}"/>

<!-- Page Content  -->

<div id="content-page" class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <h4 class="card-title mb-0">Books Description</h4>
                    </div>
                    <div class="iq-card-body pb-0">
                        <div class="description-contens align-items-top row">
                            <div class="col-md-6">
                                <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-body p-0">
                                        <div class="row align-items-center">
                                            <div class="col-9">
                                                <ul id="description-slider"
                                                    class="list-inline p-0 m-0  d-flex align-items-center">
                                                    <li>
                                                        <a href="javascript:void(0);">
                                                            <img src="${dto.seller_file}"
                                                                 class="img-fluid w-100 rounded" alt="">
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-body p-0">
                                        <h3 class="mb-3">${dto.seller_title}</h3>
                                        <div class="price d-flex align-items-center font-weight-500 mb-2">
                                            <span class="font-size-20 pr-2 old-price">$99</span>
                                            <span class="font-size-24 text-dark">${dto.seller_price}</span>
                                        </div>
                                        <div class="mb-3 d-block">
                                          <span class="font-size-20 text-warning">
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star"></i>
                                          </span>
                                        </div>
                                        <span class="text-dark mb-4 pb-4 iq-border-bottom d-block">${dto.seller_cont}</span>
                                        <div class="text-primary mb-4">저자 <span
                                                class="text-body">${dto.seller_author}</span></div>
                                        <div class="mb-4 d-flex align-items-center">
                                            <c:if test="${dto.user_no != sessionScope.UserNo}">
                                                <a href="javascript:void(0);" onclick="openNewWindow()"
                                                   class="btn btn-primary view-more mr-2">판매자와 채팅</a>
                                            </c:if>
                                            <c:if test="${dto.user_no == sessionScope.UserNo}">
                                                <a href="#" class="btn btn-primary view-more mr-2">수정하기</a>
                                            </c:if>
                                        </div>

                                        <script>
                                            function openNewWindow() {
                                                var url = "<%=request.getContextPath()%>/chat.go?receiveNo=${dto.user_no}";
                                                var windowName = "채팅창";
                                                var windowFeatures = "width=500,height=708,toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no";
                                                window.open(url, windowName, windowFeatures);
                                            }
                                        </script>
                                        <div class="mb-3">
                                            <a href="#" class="text-body text-center"><span
                                                    class="avatar-30 rounded-circle bg-primary d-inline-block mr-2"><i
                                                    class="ri-heart-fill"></i></span><span>Add to Wishlist</span></a>
                                        </div>
                                        <div class="iq-social d-flex align-items-center">
                                            <h5 class="mr-2">Share:</h5>
                                            <ul class="list-inline d-flex p-0 mb-0 align-items-center">
                                                <li>
                                                    <a href="#"
                                                       class="avatar-40 rounded-circle bg-primary mr-2 facebook"><i
                                                            class="fa fa-facebook" aria-hidden="true"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"
                                                       class="avatar-40 rounded-circle bg-primary mr-2 twitter"><i
                                                            class="fa fa-twitter" aria-hidden="true"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"
                                                       class="avatar-40 rounded-circle bg-primary mr-2 youtube"><i
                                                            class="fa fa-youtube-play" aria-hidden="true"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" class="avatar-40 rounded-circle bg-primary pinterest"><i
                                                            class="fa fa-pinterest-p" aria-hidden="true"></i></a>
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
            <div class="col-lg-12">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                        <div class="iq-header-title">
                            <h4 class="card-title mb-0">Similar Books</h4>
                        </div>
                        <div class="iq-card-header-toolbar d-flex align-items-center">
                            <a href="category.jsp" class="btn btn-sm btn-primary view-more">View More</a>
                        </div>
                    </div>
                    <div class="iq-card-body single-similar-contens">
                        <ul id="single-similar-slider" class="list-inline p-0 mb-0 row">
                            <li class="col-md-3">
                                <div class="row align-items-center">
                                    <div class="col-5">
                                        <div class="position-relative image-overlap-shadow">
                                            <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                              src="${path}/resources/images/similar-books/01.jpg"
                                                                              alt=""></a>
                                            <div class="view-book">
                                                <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-7 pl-0">
                                        <h6 class="mb-2">The Book of treasure Island find...</h6>
                                        <p class="text-body">Author : Tara Zona</p>
                                        <a href="#" class="text-dark" tabindex="-1">Read Now<i
                                                class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="row align-items-center">
                                    <div class="col-5">
                                        <div class="position-relative image-overlap-shadow">
                                            <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                              src="${path}/resources/images/similar-books/02.jpg"
                                                                              alt=""></a>
                                            <div class="view-book">
                                                <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-7 pl-0">
                                        <h6 class="mb-2">Set For Lifr Being Scott Trench..</h6>
                                        <p class="text-body">Author : Anna Rexia</p>
                                        <a href="#" class="text-dark" tabindex="-1">Read Now<i
                                                class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="row align-items-center">
                                    <div class="col-5">
                                        <div class="position-relative image-overlap-shadow">
                                            <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                              src="${path}/resources/images/similar-books/03.jpg"
                                                                              alt=""></a>
                                            <div class="view-book">
                                                <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-7 pl-0">
                                        <h6 class="mb-2">A Birth and Evolutions of the Soul...</h6>
                                        <p class="text-body">Author : Bill Emia</p>
                                        <a href="#" class="text-dark" tabindex="-1">Read Now<i
                                                class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="row align-items-center">
                                    <div class="col-5">
                                        <div class="position-relative image-overlap-shadow">
                                            <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                              src="${path}/resources/images/similar-books/04.jpg"
                                                                              alt=""></a>
                                            <div class="view-book">
                                                <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-7 pl-0">
                                        <h6 class="mb-2">The Nature of world Beautiful Places.</h6>
                                        <p class="text-body">Author : Hal Appeno</p>
                                        <a href="#" class="text-dark" tabindex="-1">Read Now<i
                                                class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="row align-items-center">
                                    <div class="col-5">
                                        <div class="position-relative image-overlap-shadow">
                                            <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                              src="${path}/resources/images/similar-books/05.jpg"
                                                                              alt=""></a>
                                            <div class="view-book">
                                                <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-7 pl-0">
                                        <h6 class="mb-2">The mackup magazine find books..</h6>
                                        <p class="text-body">Author : Zack Lee</p>
                                        <a href="#" class="text-dark" tabindex="-1">Read Now<i
                                                class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 trendy-detail">
                        <div class="iq-header-title">
                            <h4 class="card-title mb-0">Trendy Books</h4>
                        </div>
                        <div class="iq-card-header-toolbar d-flex align-items-center">
                            <a href="category.jsp" class="btn btn-sm btn-primary view-more">View More</a>
                        </div>
                    </div>
                    <div class="iq-card-body trendy-contens">
                        <ul id="trendy-slider" class="list-inline p-0 mb-0 row">
                            <li class="col-md-3">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                        <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                          src="${path}/resources/images/trendy-books/01.jpg"
                                                                          alt=""></a>
                                        <div class="view-book">
                                            <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                        </div>
                                    </div>
                                    <div class="col-7">
                                        <div class="mb-2">
                                            <h6 class="mb-1">The Word Books Day..</h6>
                                            <p class="font-size-13 line-height mb-1">Paul Molive</p>
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
                                            <span class="pr-1 old-price">$99</span>
                                            <h6><b>$89</b></h6>
                                        </div>
                                        <div class="iq-product-action">
                                            <a href="javascript:void();"><i
                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                            <a href="javascript:void();" class="ml-2"><i
                                                    class="ri-heart-fill text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                        <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                          src="${path}/resources/images/trendy-books/02.jpg"
                                                                          alt=""></a>
                                        <div class="view-book">
                                            <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                        </div>
                                    </div>
                                    <div class="col-7">
                                        <div class="mb-2">
                                            <h6 class="mb-1">The catcher in the Rye</h6>
                                            <p class="font-size-13 line-height mb-1">Anna Sthesia</p>
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
                                            <span class="pr-1 old-price">$89</span>
                                            <h6><b>$79</b></h6>
                                        </div>
                                        <div class="iq-product-action">
                                            <a href="javascript:void();"><i
                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                            <a href="javascript:void();" class="ml-2"><i
                                                    class="ri-heart-fill text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                        <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                          src="${path}/resources/images/trendy-books/03.jpg"
                                                                          alt=""></a>
                                        <div class="view-book">
                                            <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                        </div>
                                    </div>
                                    <div class="col-7">
                                        <div class="mb-2">
                                            <h6 class="mb-1">Little Black Book</h6>
                                            <p class="font-size-13 line-height mb-1">Monty Carlo</p>
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
                                            <span class="pr-1 old-price">$100</span>
                                            <h6><b>$89</b></h6>
                                        </div>
                                        <div class="iq-product-action">
                                            <a href="javascript:void();"><i
                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                            <a href="javascript:void();" class="ml-2"><i
                                                    class="ri-heart-fill text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                        <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                          src="${path}/resources/images/trendy-books/04.jpg"
                                                                          alt=""></a>
                                        <div class="view-book">
                                            <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                        </div>
                                    </div>
                                    <div class="col-7">
                                        <div class="mb-2">
                                            <h6 class="mb-1">Take The Risk Book</h6>
                                            <p class="font-size-13 line-height mb-1">Smith goal</p>
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
                                            <span class="pr-1 old-price">$120</span>
                                            <h6><b>$99</b></h6>
                                        </div>
                                        <div class="iq-product-action">
                                            <a href="javascript:void();"><i
                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                            <a href="javascript:void();" class="ml-2"><i
                                                    class="ri-heart-fill text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                        <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                          src="${path}/resources/images/trendy-books/05.jpg"
                                                                          alt=""></a>
                                        <div class="view-book">
                                            <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                        </div>
                                    </div>
                                    <div class="col-7">
                                        <div class="mb-2">
                                            <h6 class="mb-1">The Raze Night Book </h6>
                                            <p class="font-size-13 line-height mb-1">Paige Turner</p>
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
                                            <span class="pr-1 old-price">$150</span>
                                            <h6><b>$129</b></h6>
                                        </div>
                                        <div class="iq-product-action">
                                            <a href="javascript:void();"><i
                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                            <a href="javascript:void();" class="ml-2"><i
                                                    class="ri-heart-fill text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                        <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                          src="${path}/resources/images/trendy-books/06.jpg"
                                                                          alt=""></a>
                                        <div class="view-book">
                                            <a href="book-page.jsp" class="btn btn-sm btn-white">View Book</a>
                                        </div>
                                    </div>
                                    <div class="col-7">
                                        <div class="mb-2">
                                            <h6 class="mb-1">Find the Wave Book..</h6>
                                            <p class="font-size-13 line-height mb-1">Barb Ackue</p>
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
                                            <span class="pr-1 old-price">$120</span>
                                            <h6><b>$100</b></h6>
                                        </div>
                                        <div class="iq-product-action">
                                            <a href="javascript:void();"><i
                                                    class="ri-shopping-cart-2-fill text-primary"></i></a>
                                            <a href="javascript:void();" class="ml-2"><i
                                                    class="ri-heart-fill text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                    <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                        <div class="iq-header-title">
                            <h4 class="card-title mb-0">Favorite Reads</h4>
                        </div>
                        <div class="iq-card-header-toolbar d-flex align-items-center">
                            <a href="category.jsp" class="btn btn-sm btn-primary view-more">View More</a>
                        </div>
                    </div>
                    <div class="iq-card-body favorites-contens">
                        <ul id="favorites-slider" class="list-inline p-0 mb-0 row">
                            <li class="col-md-4">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative">
                                        <a href="javascript:void();">
                                            <img src="${path}/resources/images/favorite/01.jpg"
                                                 class="img-fluid rounded w-100" alt="">
                                        </a>
                                    </div>
                                    <div class="col-7">
                                        <h5 class="mb-2">Every Book is a new Wonderful Travel..</h5>
                                        <p class="mb-2">Author : Pedro Araez</p>
                                        <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                            <span>Reading</span>
                                            <span class="mr-4">78%</span>
                                        </div>
                                        <div class="iq-progress-bar-linear d-inline-block w-100">
                                            <div class="iq-progress-bar iq-bg-primary">
                                                <span class="bg-primary" data-percent="78"></span>
                                            </div>
                                        </div>
                                        <a href="#" class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-4">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative">
                                        <a href="javascript:void();">
                                            <img src="${path}/resources/images/favorite/02.jpg"
                                                 class="img-fluid rounded w-100" alt="">
                                        </a>
                                    </div>
                                    <div class="col-7">
                                        <h5 class="mb-2">Casey Christie night book into find...</h5>
                                        <p class="mb-2">Author : Michael klock</p>
                                        <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                            <span>Reading</span>
                                            <span class="mr-4">78%</span>
                                        </div>
                                        <div class="iq-progress-bar-linear d-inline-block w-100">
                                            <div class="iq-progress-bar iq-bg-danger">
                                                <span class="bg-danger" data-percent="78"></span>
                                            </div>
                                        </div>
                                        <a href="#" class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-4">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative">
                                        <a href="javascript:void();">
                                            <img src="${path}/resources/images/favorite/03.jpg"
                                                 class="img-fluid rounded w-100" alt="">
                                        </a>
                                    </div>
                                    <div class="col-7">
                                        <h5 class="mb-2">The Secret to English Busy People..</h5>
                                        <p class="mb-2">Author : Daniel Ace</p>
                                        <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                            <span>Reading</span>
                                            <span class="mr-4">78%</span>
                                        </div>
                                        <div class="iq-progress-bar-linear d-inline-block w-100">
                                            <div class="iq-progress-bar iq-bg-info">
                                                <span class="bg-info" data-percent="78"></span>
                                            </div>
                                        </div>
                                        <a href="#" class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-4">
                                <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative">
                                        <a href="javascript:void();">
                                            <img src="${path}/resources/images/favorite/04.jpg"
                                                 class="img-fluid rounded w-100" alt="">
                                        </a>
                                    </div>
                                    <div class="col-7">
                                        <h5 class="mb-2">The adventures of Robins books...</h5>
                                        <p class="mb-2">Author : Luka Afton</p>
                                        <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                            <span>Reading</span>
                                            <span class="mr-4">78%</span>
                                        </div>
                                        <div class="iq-progress-bar-linear d-inline-block w-100">
                                            <div class="iq-progress-bar iq-bg-success">
                                                <span class="bg-success" data-percent="78"></span>
                                            </div>
                                        </div>
                                        <a href="#" class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>


<!-- Wrapper END -->
<%@include file="footer.jsp" %>

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
</body>
</html>