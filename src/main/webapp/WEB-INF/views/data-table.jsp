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
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
      <!-- Wrapper Start -->
      <div class="wrapper">
         <!-- Sidebar  -->
         <div class="iq-sidebar">
            <div class="iq-sidebar-logo d-flex justify-content-between">
               <a href="home.jsp" class="header-logo">
                  <img src="${path}/resources/images/logo.png" class="img-fluid rounded-normal" alt="">
                  <div class="logo-title">
                     <span class="text-primary text-uppercase">Booksto</span>
                  </div>
               </a>
               <div class="iq-menu-bt-sidebar">
                  <div class="iq-menu-bt align-self-center">
                     <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                     </div>
                  </div>
               </div>
            </div>
            <div id="sidebar-scrollbar">
               <nav class="iq-sidebar-menu">
                  <ul id="iq-sidebar-toggle" class="iq-menu">
                     <li>
                        <a href="#dashboard" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="las la-home iq-arrow-left"></i><span>Shop</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="dashboard" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                           <li><a href="home.jsp"><i class="las la-house-damage"></i>Home Page</a></li>
                           <li><a href="category.jsp"><i class="ri-function-line"></i>Category Page</a></li>
                           <li><a href="book-page.jsp"><i class="ri-book-line"></i>Book Page</a></li>
                           <li><a href="book-pdf.jsp"><i class="ri-file-pdf-line"></i>Book PDF</a></li>
                           <li><a href="Checkout.jsp"><i class="ri-checkbox-multiple-blank-line"></i>Checkout</a></li>
                          <li><a href="wishlist.jsp"><i class="ri-heart-line"></i>wishlist</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#admin" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="ri-admin-line"></i><span>Admin</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="admin" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                           <li><a href="admin-dashboard.jsp"><i class="ri-dashboard-line"></i>Dashboard</a></li>
                           <li><a href="admin-category.jsp"><i class="ri-list-check-2"></i>Category Lists</a></li>
                           <li><a href="admin-author.jsp"><i class="ri-file-user-line"></i>Author</a></li>
                           <li><a href="admin-books.jsp"><i class="ri-book-2-line"></i>Books</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#userinfo" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>User</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="userinfo" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle" style="">
                           <li><a href="profile.jsp"><i class="las la-id-card-alt"></i>User Profile</a></li>
                           <li><a href="profile-edit.jsp"><i class="las la-edit"></i>User Edit</a></li>
                           <li><a href="add-user.jsp"><i class="las la-plus-circle"></i>User Add</a></li>
                           <li><a href="admin-user-list.jsp"><i class="las la-th-list"></i>User List</a></li>
                        </ul>
                     </li>
                     <li class="active active-menu">
                        <a href="#ui-elements" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="true"><i class="lab la-elementor iq-arrow-left"></i><span>UI Elements</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="ui-elements" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                           <li class="elements">
                              <a href="#sub-menu" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-play-circle-line"></i><span>UI Kit</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="sub-menu" class="iq-submenu collapse" data-parent="#ui-elements">
                                 <li><a href="ui-colors.jsp"><i class="las la-palette"></i>colors</a></li>
                                 <li><a href="ui-typography.jsp"><i class="las la-keyboard"></i>Typography</a></li>
                                 <li><a href="ui-alerts.jsp"><i class="las la-tag"></i>Alerts</a></li>
                                 <li><a href="ui-badges.jsp"><i class="lab la-atlassian"></i>Badges</a></li>
                                 <li><a href="ui-breadcrumb.jsp"><i class="las la-bars"></i>Breadcrumb</a></li>
                                 <li><a href="ui-buttons.jsp"><i class="las la-tablet"></i>Buttons</a></li>
                                 <li><a href="ui-cards.jsp"><i class="las la-credit-card"></i>Cards</a></li>
                                 <li><a href="ui-carousel.jsp"><i class="las la-film"></i>Carousel</a></li>
                                 <li><a href="ui-embed-video.jsp"><i class="las la-video"></i>Video</a></li>
                                 <li><a href="ui-grid.jsp"><i class="las la-border-all"></i>Grid</a></li>
                                 <li><a href="ui-images.jsp"><i class="las la-images"></i>Images</a></li>
                                 <li><a href="ui-list-group.jsp"><i class="las la-list"></i>list Group</a></li>
                                 <li><a href="ui-media-object.jsp"><i class="las la-ad"></i>Media</a></li>
                                 <li><a href="ui-modal.jsp"><i class="las la-columns"></i>Modal</a></li>
                                 <li><a href="ui-notifications.jsp"><i class="las la-bell"></i>Notifications</a></li>
                                 <li><a href="ui-pagination.jsp"><i class="las la-ellipsis-h"></i>Pagination</a></li>
                                 <li><a href="ui-popovers.jsp"><i class="las la-eraser"></i>Popovers</a></li>
                                 <li><a href="ui-progressbars.jsp"><i class="las la-hdd"></i>Progressbars</a></li>
                                 <li><a href="ui-tabs.jsp"><i class="las la-database"></i>Tabs</a></li>
                                 <li><a href="ui-tooltips.jsp"><i class="las la-magnet"></i>Tooltips</a></li>
                              </ul>
                           </li>
                           <li class="form">
                              <a href="#forms" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="lab la-wpforms"></i><span>Forms</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="forms" class="iq-submenu collapse" data-parent="#ui-elements">
                                 <li><a href="form-layout.jsp"><i class="las la-book"></i>Form Elements</a></li>
                                 <li><a href="form-validation.jsp"><i class="las la-edit"></i>Form Validation</a></li>
                                 <li><a href="form-switch.jsp"><i class="las la-toggle-off"></i>Form Switch</a></li>
                                 <li><a href="form-chechbox.jsp"><i class="las la-check-square"></i>Form Checkbox</a></li>
                                 <li><a href="form-radio.jsp"><i class="ri-radio-button-line"></i>Form Radio</a></li>
                              </ul>
                           </li>
                           <li>
                              <a href="#wizard-form" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-archive-drawer-line"></i><span>Forms Wizard</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="wizard-form" class="iq-submenu collapse" data-parent="#ui-elements">
                                 <li><a href="form-wizard.jsp"><i class="ri-clockwise-line"></i>Simple Wizard</a></li>
                                 <li><a href="form-wizard-validate.jsp"><i class="ri-clockwise-2-line"></i>Validate Wizard</a></li>
                                 <li><a href="form-wizard-vertical.jsp"><i class="ri-anticlockwise-line"></i>Vertical Wizard</a></li>
                              </ul>
                           </li>
                           <li class="active active-menu">
                              <a href="#tables" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="true"><i class="ri-table-line"></i><span>Table</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="tables" class="iq-submenu collapse show" data-parent="#ui-elements">
                                 <li><a href="tables-basic.jsp"><i class="ri-table-line"></i>Basic Tables</a></li>
                                 <li class="active"><a href="data-table.jsp"><i class="ri-database-line"></i>Data Table</a></li>
                                 <li><a href="table-editable.jsp"><i class="ri-refund-line"></i>Editable Table</a></li>
                              </ul>
                           </li>
                           <li>
                              <a href="#charts" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-pie-chart-box-line"></i><span>Charts</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="charts" class="iq-submenu collapse" data-parent="#ui-elements">
                                 <li><a href="chart-morris.jsp"><i class="ri-file-chart-line"></i>Morris Chart</a></li>
                                 <li><a href="chart-high.jsp"><i class="ri-bar-chart-line"></i>High Charts</a></li>
                                 <li><a href="chart-am.jsp"><i class="ri-folder-chart-line"></i>Am Charts</a></li>
                                 <li><a href="chart-apex.jsp"><i class="ri-folder-chart-2-line"></i>Apex Chart</a></li>
                              </ul>
                           </li>
                           <li>
                              <a href="#icons" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-list-check"></i><span>Icons</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="icons" class="iq-submenu collapse" data-parent="#ui-elements">
                                 <li><a href="icon-dripicons.jsp"><i class="ri-stack-line"></i>Dripicons</a></li>
                                 <li><a href="icon-fontawesome-5.jsp"><i class="ri-facebook-fill"></i>Font Awesome 5</a></li>
                                 <li><a href="icon-lineawesome.jsp"><i class="ri-keynote-line"></i>line Awesome</a></li>
                                 <li><a href="icon-remixicon.jsp"><i class="ri-remixicon-line"></i>Remixicon</a></li>
                                 <li><a href="icon-unicons.jsp"><i class="ri-underline"></i>unicons</a></li>
                              </ul>
                           </li>
                        </ul>
                     </li>
                     <li>
                        <a href="#pages" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="las la-file-alt iq-arrow-left"></i><span>Pages</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="pages" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                           <li>
                              <a href="#authentication" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-pages-line"></i><span>Authentication</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="authentication" class="iq-submenu collapse" data-parent="#pages">
                                 <li><a href="sign-in.jsp"><i class="las la-sign-in-alt"></i>Login</a></li>
                                 <li><a href="sign-up.jsp"><i class="ri-login-circle-line"></i>Register</a></li>
                                 <li><a href="pages-recoverpw.jsp"><i class="ri-record-mail-line"></i>Recover Password</a></li>
                                 <li><a href="pages-confirm-mail.jsp"><i class="ri-file-code-line"></i>Confirm Mail</a></li>
                                 <li><a href="pages-lock-screen.jsp"><i class="ri-lock-line"></i>Lock Screen</a></li>
                              </ul>
                           </li>
                           <li>
                              <a href="#extra-pages" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-pantone-line"></i><span>Extra Pages</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                              <ul id="extra-pages" class="iq-submenu collapse" data-parent="#pages">
                                 <li><a href="pages-timeline.jsp"><i class="ri-map-pin-time-line"></i>Timeline</a></li>
                                 <li><a href="pages-invoice.jsp"><i class="ri-question-answer-line"></i>Invoice</a></li>
                                 <li><a href="blank-page.jsp"><i class="ri-invision-line"></i>Blank Page</a></li>
                                 <li><a href="pages-error.jsp"><i class="ri-error-warning-line"></i>Error 404</a></li>
                                 <li><a href="pages-error-500.jsp"><i class="ri-error-warning-line"></i>Error 500</a></li>
                                 <li><a href="pages-pricing.jsp"><i class="ri-price-tag-line"></i>Pricing</a></li>
                                 <li><a href="pages-maintenance.jsp"><i class="ri-archive-line"></i>Maintenance</a></li>
                                 <li><a href="pages-comingsoon.jsp"><i class="ri-mastercard-line"></i>Coming Soon</a></li>
                                 <li><a href="pages-faq.jsp"><i class="ri-compasses-line"></i>Faq</a></li>
                              </ul>
                           </li>
                        </ul>
                     </li>
                     <li>
                        <a href="#menu-level" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-record-circle-line iq-arrow-left"></i><span>Menu Level</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="menu-level" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                           <li><a href="#"><i class="ri-record-circle-line"></i>Menu 1</a></li>
                           <li>
                              <a href="#"><i class="ri-record-circle-line"></i>Menu 2</a>
                              <ul>
                                 <li class="menu-level">
                                    <a href="#sub-menus" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-play-circle-line"></i><span>Sub-menu</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                    <ul id="sub-menus" class="iq-submenu iq-submenu-data collapse">
                                       <li><a href="#"><i class="ri-record-circle-line"></i>Sub-menu 1</a></li>
                                       <li><a href="#"><i class="ri-record-circle-line"></i>Sub-menu 2</a></li>
                                       <li><a href="#"><i class="ri-record-circle-line"></i>Sub-menu 3</a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </li>
                           <li><a href="#"><i class="ri-record-circle-line"></i>Menu 3</a></li>
                           <li><a href="#"><i class="ri-record-circle-line"></i>Menu 4</a></li>
                        </ul>
                     </li>
                  </ul>
               </nav>
               <div id="sidebar-bottom" class="p-3 position-relative">
                  <div class="iq-card">
                     <div class="iq-card-body">
                        <div class="sidebarbottom-content">
                           <div class="image"><img src="${path}/resources/images/page-img/side-bkg.png" alt=""></div>
                           <button type="submit" class="btn w-100 btn-primary mt-4 view-more">Become Membership</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- TOP Nav Bar -->
         <div class="iq-top-navbar">
            <div class="iq-navbar-custom">
               <nav class="navbar navbar-expand-lg navbar-light p-0">
                  <div class="iq-menu-bt d-flex align-items-center">
                     <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                     </div>
                     <div class="iq-navbar-logo d-flex justify-content-between">
                        <a href="home.jsp" class="header-logo">
                           <img src="${path}/resources/images/logo.png" class="img-fluid rounded-normal" alt="">
                           <div class="logo-title">
                              <span class="text-primary text-uppercase">Booksto</span>
                           </div>
                        </a>
                     </div>
                  </div>
                  <div class="navbar-breadcrumb">
                     <h5 class="mb-0">Data Tables</h5>
                     <nav aria-label="breadcrumb">
                        <ul class="breadcrumb">
                           <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                           <li class="breadcrumb-item active" aria-current="page">Data Tables</li>
                        </ul>
                     </nav>
                  </div>
                  <div class="iq-search-bar">
                     <form action="#" class="searchbox">
                        <input type="text" class="text search-input" placeholder="Search Here...">
                        <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                     </form>
                  </div>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
                  <i class="ri-menu-3-line"></i>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav ml-auto navbar-list">
                        <li class="nav-item nav-icon search-content">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                              <i class="ri-search-line"></i>
                           </a>
                           <form action="#" class="search-box p-0">
                              <input type="text" class="text search-input" placeholder="Type here to search...">
                              <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                           </form>
                        </li>
                        <li class="nav-item nav-icon">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                           <i class="ri-notification-2-fill"></i>
                           <span class="bg-primary dots"></span>
                           </a>
                           <div class="iq-sub-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0">
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white">All Notifications<small class="badge  badge-light float-right pt-1">4</small></h5>
                                    </div>
                                    <a href="#" class="iq-sub-card" >
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/01.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Emma Watson Barry</h6>
                                             <small class="float-right font-size-12">Just Now</small>
                                             <p class="mb-0">95 MB</p>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card" >
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/02.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">New customer is join</h6>
                                             <small class="float-right font-size-12">5 days ago</small>
                                             <p class="mb-0">Cyst Barry</p>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card" >
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/03.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Two customer is left</h6>
                                             <small class="float-right font-size-12">2 days ago</small>
                                             <p class="mb-0">Cyst Barry</p>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card" >
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/04.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">New Mail from Fenny</h6>
                                             <small class="float-right font-size-12">3 days ago</small>
                                             <p class="mb-0">Cyst Barry</p>
                                          </div>
                                       </div>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <li class="nav-item nav-icon dropdown">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                           <i class="fa fa-envelope" aria-hidden="true"></i>
                           <span class="bg-primary count-mail"></span>
                           </a>
                           <div class="iq-sub-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0 ">
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white">All Messages<small class="badge  badge-light float-right pt-1">5</small></h5>
                                    </div>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/01.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Barry Emma Watson</h6>
                                             <small class="float-left font-size-12">13 Jun</small>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/02.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Lorem Ipsum Watson</h6>
                                             <small class="float-left font-size-12">20 Apr</small>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/03.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Why do we use it?</h6>
                                             <small class="float-left font-size-12">30 Jun</small>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/04.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Variations Passages</h6>
                                             <small class="float-left font-size-12">12 Sep</small>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="${path}/resources/images/user/05.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Lorem Ipsum generators</h6>
                                             <small class="float-left font-size-12">5 Dec</small>
                                          </div>
                                       </div>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <li class="nav-item nav-icon dropdown">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                           <i class="ri-shopping-cart-2-line"></i>
                           <span class="badge badge-danger count-cart rounded-circle">4</span>
                           </a>
                           <div class="iq-sub-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0 toggle-cart-info">
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white">All Carts<small class="badge  badge-light float-right pt-1">4</small></h5>
                                    </div>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="rounded" src="${path}/resources/images/cart/01.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Night People book</h6>
                                             <p class="mb-0">$32</p>
                                          </div>
                                          <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="rounded" src="${path}/resources/images/cart/02.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">The Sin Eater Book</h6>
                                             <p class="mb-0">$40</p>
                                          </div>
                                          <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="rounded" src="${path}/resources/images/cart/03.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">the Orange Tree</h6>
                                             <p class="mb-0">$30</p>
                                          </div>
                                          <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                       </div>
                                    </a>
                                    <a href="#" class="iq-sub-card">
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="rounded" src="${path}/resources/images/cart/04.jpg" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Harsh Reality book</h6>
                                             <p class="mb-0">$25</p>
                                          </div>
                                          <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                       </div>
                                    </a>
                                    <div class="d-flex align-items-center text-center p-3">
                                       <a class="btn btn-primary mr-2 iq-sign-btn" href="#" role="button">View Cart</a>
                                       <a class="btn btn-primary iq-sign-btn" href="#" role="button">Shop now</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <li class="line-height pt-3">
                           <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                              <img src="${path}/resources/images/user/1.jpg" class="img-fluid rounded-circle mr-3" alt="user">
                              <div class="caption">
                                 <h6 class="mb-1 line-height">Barry Tech</h6>
                                 <p class="mb-0 text-primary">$20.32</p>
                              </div>
                           </a>
                           <div class="iq-sub-dropdown iq-user-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0 ">
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white line-height">Hello Barry Tech</h5>
                                       <span class="text-white font-size-12">Available</span>
                                    </div>
                                    <a href="profile.jsp" class="iq-sub-card iq-bg-primary-hover">
                                       <div class="media align-items-center">
                                          <div class="rounded iq-card-icon iq-bg-primary">
                                             <i class="ri-file-user-line"></i>
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">My Profile</h6>
                                             <p class="mb-0 font-size-12">View personal profile details.</p>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="profile-edit.jsp" class="iq-sub-card iq-bg-primary-hover">
                                       <div class="media align-items-center">
                                          <div class="rounded iq-card-icon iq-bg-primary">
                                             <i class="ri-profile-line"></i>
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Edit Profile</h6>
                                             <p class="mb-0 font-size-12">Modify your personal details.</p>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="account-setting.jsp" class="iq-sub-card iq-bg-primary-hover">
                                       <div class="media align-items-center">
                                          <div class="rounded iq-card-icon iq-bg-primary">
                                             <i class="ri-account-box-line"></i>
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Account settings</h6>
                                             <p class="mb-0 font-size-12">Manage your account parameters.</p>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="privacy-setting.jsp" class="iq-sub-card iq-bg-primary-hover">
                                       <div class="media align-items-center">
                                          <div class="rounded iq-card-icon iq-bg-primary">
                                             <i class="ri-lock-line"></i>
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Privacy Settings</h6>
                                             <p class="mb-0 font-size-12">Control your privacy parameters.</p>
                                          </div>
                                       </div>
                                    </a>
                                    <div class="d-inline-block w-100 text-center p-3">
                                       <a class="bg-primary iq-sign-btn" href="sign-in.jsp" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
         <!-- TOP Nav Bar END -->
         
         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                           <div class="iq-header-title">
                              <h4 class="card-title">Bootstrap Datatables</h4>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <p>Images in Bootstrap are made responsive with <code>.img-fluid</code>. <code>max-width: 100%;</code> and <code>height: auto;</code> are applied to the image so that it scales with the parent element.</p>
                           <div class="table-responsive">
                              <table id="datatable" class="table table-striped table-bordered" >
                                 <thead>
                                    <tr>
                                       <th>Name</th>
                                       <th>Position</th>
                                       <th>Office</th>
                                       <th>Age</th>
                                       <th>Start date</th>
                                       <th>Salary</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>Tiger Nixon</td>
                                       <td>System Architect</td>
                                       <td>Edinburgh</td>
                                       <td>61</td>
                                       <td>2011/04/25</td>
                                       <td>$320,800</td>
                                    </tr>
                                    <tr>
                                       <td>Garrett Winters</td>
                                       <td>Accountant</td>
                                       <td>Tokyo</td>
                                       <td>63</td>
                                       <td>2011/07/25</td>
                                       <td>$170,750</td>
                                    </tr>
                                    <tr>
                                       <td>Ashton Cox</td>
                                       <td>Junior Technical Author</td>
                                       <td>San Francisco</td>
                                       <td>66</td>
                                       <td>2009/01/12</td>
                                       <td>$86,000</td>
                                    </tr>
                                    <tr>
                                       <td>Cedric Kelly</td>
                                       <td>Senior Javascript Developer</td>
                                       <td>Edinburgh</td>
                                       <td>22</td>
                                       <td>2012/03/29</td>
                                       <td>$433,060</td>
                                    </tr>
                                    <tr>
                                       <td>Airi Satou</td>
                                       <td>Accountant</td>
                                       <td>Tokyo</td>
                                       <td>33</td>
                                       <td>2008/11/28</td>
                                       <td>$162,700</td>
                                    </tr>
                                    <tr>
                                       <td>Brielle Williamson</td>
                                       <td>Integration Specialist</td>
                                       <td>New York</td>
                                       <td>61</td>
                                       <td>2012/12/02</td>
                                       <td>$372,000</td>
                                    </tr>
                                    <tr>
                                       <td>Herrod Chandler</td>
                                       <td>Sales Assistant</td>
                                       <td>San Francisco</td>
                                       <td>59</td>
                                       <td>2012/08/06</td>
                                       <td>$137,500</td>
                                    </tr>
                                    <tr>
                                       <td>Rhona Davidson</td>
                                       <td>Integration Specialist</td>
                                       <td>Tokyo</td>
                                       <td>55</td>
                                       <td>2010/10/14</td>
                                       <td>$327,900</td>
                                    </tr>
                                    <tr>
                                       <td>Colleen Hurst</td>
                                       <td>Javascript Developer</td>
                                       <td>San Francisco</td>
                                       <td>39</td>
                                       <td>2009/09/15</td>
                                       <td>$205,500</td>
                                    </tr>
                                    <tr>
                                       <td>Sonya Frost</td>
                                       <td>Software Engineer</td>
                                       <td>Edinburgh</td>
                                       <td>23</td>
                                       <td>2008/12/13</td>
                                       <td>$103,600</td>
                                    </tr>
                                    <tr>
                                       <td>Jena Gaines</td>
                                       <td>Office Manager</td>
                                       <td>London</td>
                                       <td>30</td>
                                       <td>2008/12/19</td>
                                       <td>$90,560</td>
                                    </tr>
                                    <tr>
                                       <td>Quinn Flynn</td>
                                       <td>Support Lead</td>
                                       <td>Edinburgh</td>
                                       <td>22</td>
                                       <td>2013/03/03</td>
                                       <td>$342,000</td>
                                    </tr>
                                    <tr>
                                       <td>Charde Marshall</td>
                                       <td>Regional Director</td>
                                       <td>San Francisco</td>
                                       <td>36</td>
                                       <td>2008/10/16</td>
                                       <td>$470,600</td>
                                    </tr>
                                    <tr>
                                       <td>Haley Kennedy</td>
                                       <td>Senior Marketing Designer</td>
                                       <td>London</td>
                                       <td>43</td>
                                       <td>2012/12/18</td>
                                       <td>$313,500</td>
                                    </tr>
                                    <tr>
                                       <td>Tatyana Fitzpatrick</td>
                                       <td>Regional Director</td>
                                       <td>London</td>
                                       <td>19</td>
                                       <td>2010/03/17</td>
                                       <td>$385,750</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Silva</td>
                                       <td>Marketing Designer</td>
                                       <td>London</td>
                                       <td>66</td>
                                       <td>2012/11/27</td>
                                       <td>$198,500</td>
                                    </tr>
                                    <tr>
                                       <td>Paul Byrd</td>
                                       <td>Chief Financial Officer (CFO)</td>
                                       <td>New York</td>
                                       <td>64</td>
                                       <td>2010/06/09</td>
                                       <td>$725,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gloria Little</td>
                                       <td>Systems Administrator</td>
                                       <td>New York</td>
                                       <td>59</td>
                                       <td>2009/04/10</td>
                                       <td>$237,500</td>
                                    </tr>
                                    <tr>
                                       <td>Bradley Greer</td>
                                       <td>Software Engineer</td>
                                       <td>London</td>
                                       <td>41</td>
                                       <td>2012/10/13</td>
                                       <td>$132,000</td>
                                    </tr>
                                    <tr>
                                       <td>Dai Rios</td>
                                       <td>Personnel Lead</td>
                                       <td>Edinburgh</td>
                                       <td>35</td>
                                       <td>2012/09/26</td>
                                       <td>$217,500</td>
                                    </tr>
                                    <tr>
                                       <td>Jenette Caldwell</td>
                                       <td>Development Lead</td>
                                       <td>New York</td>
                                       <td>30</td>
                                       <td>2011/09/03</td>
                                       <td>$345,000</td>
                                    </tr>
                                    <tr>
                                       <td>Yuri Berry</td>
                                       <td>Chief Marketing Officer (CMO)</td>
                                       <td>New York</td>
                                       <td>40</td>
                                       <td>2009/06/25</td>
                                       <td>$675,000</td>
                                    </tr>
                                    <tr>
                                       <td>Caesar Vance</td>
                                       <td>Pre-Sales Support</td>
                                       <td>New York</td>
                                       <td>21</td>
                                       <td>2011/12/12</td>
                                       <td>$106,450</td>
                                    </tr>
                                    <tr>
                                       <td>Doris Wilder</td>
                                       <td>Sales Assistant</td>
                                       <td>Sydney</td>
                                       <td>23</td>
                                       <td>2010/09/20</td>
                                       <td>$85,600</td>
                                    </tr>
                                    <tr>
                                       <td>Angelica Ramos</td>
                                       <td>Chief Executive Officer (CEO)</td>
                                       <td>London</td>
                                       <td>47</td>
                                       <td>2009/10/09</td>
                                       <td>$1,200,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Joyce</td>
                                       <td>Developer</td>
                                       <td>Edinburgh</td>
                                       <td>42</td>
                                       <td>2010/12/22</td>
                                       <td>$92,575</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Chang</td>
                                       <td>Regional Director</td>
                                       <td>Singapore</td>
                                       <td>28</td>
                                       <td>2010/11/14</td>
                                       <td>$357,650</td>
                                    </tr>
                                    <tr>
                                       <td>Brenden Wagner</td>
                                       <td>Software Engineer</td>
                                       <td>San Francisco</td>
                                       <td>28</td>
                                       <td>2011/06/07</td>
                                       <td>$206,850</td>
                                    </tr>
                                    <tr>
                                       <td>Fiona Green</td>
                                       <td>Chief Operating Officer (COO)</td>
                                       <td>San Francisco</td>
                                       <td>48</td>
                                       <td>2010/03/11</td>
                                       <td>$850,000</td>
                                    </tr>
                                    <tr>
                                       <td>Shou Itou</td>
                                       <td>Regional Marketing</td>
                                       <td>Tokyo</td>
                                       <td>20</td>
                                       <td>2011/08/14</td>
                                       <td>$163,000</td>
                                    </tr>
                                    <tr>
                                       <td>Michelle House</td>
                                       <td>Integration Specialist</td>
                                       <td>Sydney</td>
                                       <td>37</td>
                                       <td>2011/06/02</td>
                                       <td>$95,400</td>
                                    </tr>
                                    <tr>
                                       <td>Suki Burks</td>
                                       <td>Developer</td>
                                       <td>London</td>
                                       <td>53</td>
                                       <td>2009/10/22</td>
                                       <td>$114,500</td>
                                    </tr>
                                    <tr>
                                       <td>Prescott Bartlett</td>
                                       <td>Technical Author</td>
                                       <td>London</td>
                                       <td>27</td>
                                       <td>2011/05/07</td>
                                       <td>$145,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Cortez</td>
                                       <td>Team Leader</td>
                                       <td>San Francisco</td>
                                       <td>22</td>
                                       <td>2008/10/26</td>
                                       <td>$235,500</td>
                                    </tr>
                                    <tr>
                                       <td>Martena Mccray</td>
                                       <td>Post-Sales support</td>
                                       <td>Edinburgh</td>
                                       <td>46</td>
                                       <td>2011/03/09</td>
                                       <td>$324,050</td>
                                    </tr>
                                    <tr>
                                       <td>Unity Butler</td>
                                       <td>Marketing Designer</td>
                                       <td>San Francisco</td>
                                       <td>47</td>
                                       <td>2009/12/09</td>
                                       <td>$85,675</td>
                                    </tr>
                                    <tr>
                                       <td>Howard Hatfield</td>
                                       <td>Office Manager</td>
                                       <td>San Francisco</td>
                                       <td>51</td>
                                       <td>2008/12/16</td>
                                       <td>$164,500</td>
                                    </tr>
                                    <tr>
                                       <td>Hope Fuentes</td>
                                       <td>Secretary</td>
                                       <td>San Francisco</td>
                                       <td>41</td>
                                       <td>2010/02/12</td>
                                       <td>$109,850</td>
                                    </tr>
                                    <tr>
                                       <td>Vivian Harrell</td>
                                       <td>Financial Controller</td>
                                       <td>San Francisco</td>
                                       <td>62</td>
                                       <td>2009/02/14</td>
                                       <td>$452,500</td>
                                    </tr>
                                    <tr>
                                       <td>Timothy Mooney</td>
                                       <td>Office Manager</td>
                                       <td>London</td>
                                       <td>37</td>
                                       <td>2008/12/11</td>
                                       <td>$136,200</td>
                                    </tr>
                                    <tr>
                                       <td>Jackson Bradshaw</td>
                                       <td>Director</td>
                                       <td>New York</td>
                                       <td>65</td>
                                       <td>2008/09/26</td>
                                       <td>$645,750</td>
                                    </tr>
                                    <tr>
                                       <td>Olivia Liang</td>
                                       <td>Support Engineer</td>
                                       <td>Singapore</td>
                                       <td>64</td>
                                       <td>2011/02/03</td>
                                       <td>$234,500</td>
                                    </tr>
                                    <tr>
                                       <td>Bruno Nash</td>
                                       <td>Software Engineer</td>
                                       <td>London</td>
                                       <td>38</td>
                                       <td>2011/05/03</td>
                                       <td>$163,500</td>
                                    </tr>
                                    <tr>
                                       <td>Sakura Yamamoto</td>
                                       <td>Support Engineer</td>
                                       <td>Tokyo</td>
                                       <td>37</td>
                                       <td>2009/08/19</td>
                                       <td>$139,575</td>
                                    </tr>
                                    <tr>
                                       <td>Thor Walton</td>
                                       <td>Developer</td>
                                       <td>New York</td>
                                       <td>61</td>
                                       <td>2013/08/11</td>
                                       <td>$98,540</td>
                                    </tr>
                                    <tr>
                                       <td>Finn Camacho</td>
                                       <td>Support Engineer</td>
                                       <td>San Francisco</td>
                                       <td>47</td>
                                       <td>2009/07/07</td>
                                       <td>$87,500</td>
                                    </tr>
                                    <tr>
                                       <td>Serge Baldwin</td>
                                       <td>Data Coordinator</td>
                                       <td>Singapore</td>
                                       <td>64</td>
                                       <td>2012/04/09</td>
                                       <td>$138,575</td>
                                    </tr>
                                    <tr>
                                       <td>Zenaida Frank</td>
                                       <td>Software Engineer</td>
                                       <td>New York</td>
                                       <td>63</td>
                                       <td>2010/01/04</td>
                                       <td>$125,250</td>
                                    </tr>
                                    <tr>
                                       <td>Zorita Serrano</td>
                                       <td>Software Engineer</td>
                                       <td>San Francisco</td>
                                       <td>56</td>
                                       <td>2012/06/01</td>
                                       <td>$115,000</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Acosta</td>
                                       <td>Junior Javascript Developer</td>
                                       <td>Edinburgh</td>
                                       <td>43</td>
                                       <td>2013/02/01</td>
                                       <td>$75,650</td>
                                    </tr>
                                    <tr>
                                       <td>Cara Stevens</td>
                                       <td>Sales Assistant</td>
                                       <td>New York</td>
                                       <td>46</td>
                                       <td>2011/12/06</td>
                                       <td>$145,600</td>
                                    </tr>
                                    <tr>
                                       <td>Hermione Butler</td>
                                       <td>Regional Director</td>
                                       <td>London</td>
                                       <td>47</td>
                                       <td>2011/03/21</td>
                                       <td>$356,250</td>
                                    </tr>
                                    <tr>
                                       <td>Lael Greer</td>
                                       <td>Systems Administrator</td>
                                       <td>London</td>
                                       <td>21</td>
                                       <td>2009/02/27</td>
                                       <td>$103,500</td>
                                    </tr>
                                    <tr>
                                       <td>Jonas Alexander</td>
                                       <td>Developer</td>
                                       <td>San Francisco</td>
                                       <td>30</td>
                                       <td>2010/07/14</td>
                                       <td>$86,500</td>
                                    </tr>
                                    <tr>
                                       <td>Shad Decker</td>
                                       <td>Regional Director</td>
                                       <td>Edinburgh</td>
                                       <td>51</td>
                                       <td>2008/11/13</td>
                                       <td>$183,000</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Bruce</td>
                                       <td>Javascript Developer</td>
                                       <td>Singapore</td>
                                       <td>29</td>
                                       <td>2011/06/27</td>
                                       <td>$183,000</td>
                                    </tr>
                                    <tr>
                                       <td>Donna Snider</td>
                                       <td>Customer Support</td>
                                       <td>New York</td>
                                       <td>27</td>
                                       <td>2011/01/25</td>
                                       <td>$112,000</td>
                                    </tr>
                                 </tbody>
                                 <tfoot>
                                    <tr>
                                       <th>Name</th>
                                       <th>Position</th>
                                       <th>Office</th>
                                       <th>Age</th>
                                       <th>Start date</th>
                                       <th>Salary</th>
                                    </tr>
                                 </tfoot>
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