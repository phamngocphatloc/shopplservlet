<%-- 
    Document   : introduceproduct
    Created on : 14 thg 9, 2022, 16:25:37
    Author     : exnpt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="plugins/animate/animate.min.css">
  <link rel="stylesheet" href="plugins/fontawesome/all.css">
  <link rel="stylesheet" href="plugins/webfonts/font.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" type="text/css" href="css/style.css">

  <!-- UIkit CSS -->
  <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />

  <title>SHOPPL</title>

</head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
      <a class="navbar-brand" href="home">
        <img src="images/logo.png" class="logo-top" alt="">
      </a>
      <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="home">TRANG CHỦ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="shop">BỘ SƯU TẬP</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="introduce">GIỚI THIỆU</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="blog">BLOG</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact">LIÊN HỆ</a>
          </li>
          <li class="nav-item lisanpham">
            <a class="nav-link" href="#">ACCOUNTS
              <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <c:if test="${sessionScope.username != null}">
            <ul class="sub_menu">
              <li class="">
                <a href="#" title="Sản phẩm - Style 1"> 
                  Xin Chào: ${username}
                </a>
              </li>
              <li class="">
                <a href="/shop/logout" title="Sản phẩm - Style 2"> 
                  logout
                </a>
              </li>
            </c:if>
           <c:if test="${sessionScope.username == null}">
            <ul class="sub_menu">
              <li class="">
                <a href="/shop/signin" title="Sản phẩm - Style 1"> 
                  LOGIN 
                </a>
              </li>
            </c:if>
          </li>
        </ul>
      </div>
      <div id="offcanvas-flip1" uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar" style="background: white;
        width: 100%;">

          <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>
          <h3 style="font-size: 14px;
          color: #272727;
          text-transform: uppercase;
          margin: 3px 0 30px 0;
          font-weight: 500; letter-spacing: 2px;">MENU</h3>
            <div class="justify-content-md-center">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="home">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="shop">SHOP</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle aaaa"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" >
                    <p>ACCOUNTS</p>
                    <i class="fa fa-angle-double-right"></i>

                  </a>
                  <c:if test="${sessionScope.username == null}">
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                    <a class="dropdown-item" href="signin" title="Sản phẩm - Style 1">Login</a>
                    <a class="dropdown-item" href="signup" title="Sản phẩm - Style 2">REGISTER</a>
                  </div
                  </c:if>
                  <c:if test="${sessionScope.username != null}">
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                    <a class="dropdown-item" href="#" title="Sản phẩm - Style 1">Xin Chào: ${username}</a>
                    <a class="dropdown-item" href="logout" title="Sản phẩm - Style 2">Logout</a>
                  </div
                  </c:if>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="introduce.html">GIỚI THIỆU</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="blog.html">BLOG</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Contact.html">LIÊN HỆ</a>
                </li>
              </ul>
            </div>

        </div>
      </div>
      <div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

          <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

          <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">Tìm kiếm</h3>
          <div class="search-box wpo-wrapper-search">
            <form action="search" class="searchform searchform-categoris ultimate-search">
              <div class="wpo-search-inner" style="display:inline">
                <input type="hidden" name="type" value="product">
                <input required="" id="inputSearchAuto" name="q" maxlength="40" autocomplete="off"
                  class="searchinput input-search search-input" type="text" size="20"
                  placeholder="Tìm kiếm sản phẩm...">
              </div>
              <button type="submit" class="btn-search btn" id="search-header-btn">
                <i style="font-weight:bold" class="fas fa-search"></i>
              </button>
            </form>
            <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults" style="display: none">
              <div class="resultsContent"></div>
            </div>
          </div>
        </div>
      </div>
    <div id="offcanvas-flip3" uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

          <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

          <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">ACCOUNTS</h3>
                <div>
                    <li class="nav-item">
                  <a class="nav-link" href="index.html">TRANG CHỦ</a>
                </li>
                </div>
                
          
        </div>
      </div>
      <div id="offcanvas-flip2" uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

          <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

          <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">Giỏ hàng</h3>
          <div class="site-nav-container-last" style="color:#272727">
            <div class="cart-view clearfix">
              <table id="cart-view">
                <tbody>
                    <c:forEach items="${order.listitem}" var="item">
                        <tr class="item_1">
                    <td class="img"><a href="" title="${item.product.name}"><img
                          src="${item.product.img}" alt="/products/nike-air-max-90-essential-grape"></a></td>
                    <td>
                      <a class="pro-title-view" style="color: #272727" href=""
                        title="${item.product.name}">${item.product.name}</a>
                      <span class="pro-quantity-view">${item.quantity}</span>
                      <span class="pro-price-view">${item.product.price * item.quantity}₫</span>
                      <c:url value="/removetocart?productId=${item.product.id}" var="removetocart"/>
                      <span class="remove_link remove-cart"><a href="${removetocart}"><i style="color: #272727;"
                            class="fas fa-times"></i></a></span>
                    </td>
                  </tr>
                    </c:forEach>
                  
                 
                </tbody>
       
              </table>
               
              <span class="line"></span>
              <table class="table-total">
                <tbody>
                  <tr>
                    <td class="text-left">TỔNG TIỀN:</td>
                    <td class="text-right" id="total-view-cart">₫</td>
                  </tr>
                  <tr>
                    <td class="distance-td"><a href="" class="linktocart button dark">Xem giỏ hàng</a></td>
                    <td><a href="" class="linktocheckout button dark">Thanh toán</a></td>
                  </tr>
                </tbody>
              </table>

              <a href="" target="_blank" class="button btn-check" style="text-decoration:none;"><span>Click nhận mã giảm
                  giá ngay !</span></a>
            </div>
          </div>
        </div>
      </div>

      <div class="icon-ol">
                <a href="#" class="" uk-toggle="target: #offcanvas-flip">
          <i class="fas fa-search" style="color: black"></i>
        </a>
        
        <a style="color: #272727" href="#" uk-toggle="target: #offcanvas-flip2">
          <i class="fas fa-shopping-cart"></i>
        </a>
        <button class="navbar-toggler" type="button" uk-toggle="target: #offcanvas-flip1" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </div>
    </div>

  </nav>
  <!--  detail product -->
  <main class="">

    <div id="product" class="productDetail-page">

      <!--  menu header seo -->
      <div class="breadcrumb-shop">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
              <ol class="breadcrumb breadcrumb-arrows">
                <li>
                  <a href="/home">
                    <span">Trang chủ</span>
                  </a>
                </li>
                <li>
                  <a href="">
                    <span>Sản phẩm</span>
                  </a>
                </li>
                <li class="active">
                  <span>
                    <span itemprop="name">Nike Air Max 90</span>
                  </span>
                  <meta itemprop="position" content="3">
                </li>

              </ol>
            </div>
          </div>
        </div>
      </div>
      <!-- detail product chính -->
      <div class="container">
        <div class="row product-detail-wrapper">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="row product-detail-main pr_style_01">
              <div class="col-md-7 col-sm-12 col-xs-12">
                <div class="product-gallery">
                  <div class="product-gallery__thumbs-container hidden-sm
                    hidden-xs">
                    <div class="product-gallery__thumbs thumb-fix">

                      <div class="product-gallery__thumb  active" id="imgg1">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg2">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg3">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg4">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg5">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg6">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg7">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}" alt="Nike
                            Air Max 90 Essential" grape="">
                        </a>
                      </div>

                      <div class="product-gallery__thumb " id="imgg8">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                          data-image="${img}" data-zoom-image="${img}">
                          <img src="${img}" data-image="${img}"
                            alt="Nike Air Max 90 Essential" grape="">
                        </a>
                      </div>

                    </div>
                  </div>
                  <div class="product-image-detail box__product-gallery
                    scroll hidden-xs">
                    <ul id="sliderproduct" class="site-box-content
                      slide_product">

                      <li class="product-gallery-item gallery-item
                        current " id="imgg1a">
                        <img class="product-image-feature " src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-item " id="imgg2a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-item " id="imgg3a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-ite " id="imgg4a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-item " id="imgg5a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-item " id="imgg6a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-item " id="imgg7a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                      <li class="product-gallery-item gallery-item " id="imgg8a">
                        <img class="product-image-feature" src="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </li>

                    </ul>
                    <div class="product-image__button">
                      <div id="product-zoom-in" class="product-zoom
                        icon-pr-fix" aria-label="Zoom in" title="Zoom in">
                        <span class="zoom-in" aria-hidden="true">
                          <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 36 36" style="enable-background:new 0 0 36 36; width:
                            30px; height: 30px;" xml:space="preserve">
                            <polyline points="6,14 9,11 14,16 16,14 11,9
                              14,6 6,6">
                            </polyline>
                            <polyline points="22,6 25,9 20,14 22,16 27,11
                              30,14 30,6">
                            </polyline>
                            <polyline points="30,22 27,25 22,20 20,22
                              25,27 22,30 30,30">
                            </polyline>
                            <polyline points="14,30 11,27 16,22 14,20 9,25
                              6,22 6,30">
                            </polyline>
                          </svg>
                        </span>
                      </div>
                      <div class="gallery-index icon-pr-fix"><span class="current">1</span>
                        / <span class="total">8</span></div>
                    </div>
                  </div>
                </div>
                <div class="product-gallery-slide">
                  <div class="owl-carousel owl-theme owl-product-gallery-slide"">
                    <div class=" item">
                    <div class="product-gallery__thumb  >
                      <a class=" product-gallery__thumb-placeholder" href="javascript:void(0);"
                      data-image="${img}" data-zoom-image="${img}">
                      <img src="${img}" data-image="${img}"
                        alt="Nike Air Max 90 Essential" grape="">
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="product-gallery__thumb  >
                      <a class=" product-gallery__thumb-placeholder" href="javascript:void(0);"
                      data-image="${img}" data-zoom-image="${img}">
                      <img src="${img}" data-image="${img}"
                        alt="Nike Air Max 90 Essential" grape="">
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="product-gallery__thumb  >
                      <a class=" product-gallery__thumb-placeholder" href="javascript:void(0);"
                      data-image="${img}" data-zoom-image="${img}">
                      <img src="${img}" data-image="${img}"
                        alt="Nike Air Max 90 Essential" grape="">
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="product-gallery__thumb  >
                      <a class=" product-gallery__thumb-placeholder" href="javascript:void(0);"
                      data-image="${img}" data-zoom-image="${img}">
                      <img src="${img}" data-image="${img}"
                        alt="Nike Air Max 90 Essential" grape="">
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="product-gallery__thumb  >
                      <a class=" product-gallery__thumb-placeholder" href="javascript:void(0);"
                      data-image="${img}" data-zoom-image="${img}">
                      <img src="${img}" data-image="${img}"
                        alt="Nike Air Max 90 Essential" grape="">
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="product-gallery__thumb  " id="imgg1">
                      <a class="product-gallery__thumb-placeholder" href="javascript:void(0);"
                        data-image="${img}" data-zoom-image="${img}">
                        <img src="${img}" data-image="${img}"
                          alt="Nike Air Max 90 Essential" grape="">
                      </a>
                    </div>
                  </div>
                  
                 

                </div>
              </div>
              <!-- Flickity HTML init -->

              <!-- <div id="product-zoom-in" class="product-zoom icon-pr-fix
                  hidden-md hidden-sm" style="padding-top:2rem;"
                  aria-labe"Zoom in" title="Zoom in">
                  <span class="zoom-in" aria-hidden="true">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                      y="0px"
                      viewBox="0 0 36 36"
                      style="enable-background:new 0 0 36 36; width: 40px;
                      height: 40px;"
                      xml:space="preserve">
                      <polyline points="6,14 9,11 14,16 16,14 11,9 14,6
                        6,6">
                      </polyline>
                      <polyline points="22,6 25,9 20,14 22,16 27,11 30,14
                        30,6">
                      </polyline>
                      <polyline points="30,22 27,25 22,20 20,22 25,27
                        22,30 30,30">
                      </polyline>
                      <polyline points="14,30 11,27 16,22 14,20 9,25 6,22
                        6,30">
                      </polyline>
                    </svg>
                  </span>
                </div> -->
            </div>
            <div class="col-md-5 col-sm-12 col-xs-12
                product-content-desc" id="detail-product">
              <div class="product-content-desc-1">
                <div class="product-title">
                  <h1>${name}</h1>
                  <span id="pro_sku">SKU: S-0015-1</span>
                </div>
                <div class="product-price" id="price-preview"><span class="pro-price">${price}₫</span></div>
                <form id="add-item-form" action="/cart/add" method="post" class="variants clearfix">
                  <div class="select clearfix">
                    <div class="selector-wrapper"><label for="product-select-option-0">Màu sắc</label><span
                        class="custom-dropdown custom-dropdown--white"><select class="single-option-selector
                            custom-dropdown__select
                            custom-dropdown__select--white" data-option="option1" id="product-select-option-0">
                          <option value="Tím">Tím</option>
                          <option value="Xanh">Xanh</option>
                        </select></span></div>
                    <div class="selector-wrapper"><label for="product-select-option-1">Kích thước</label><span
                        class="custom-dropdown custom-dropdown--white"><select class="single-option-selector
                            custom-dropdown__select
                            custom-dropdown__select--white" data-option="option2" id="product-select-option-1">
                          <option value="36">36</option>
                          <option value="37">37</option>
                          <option value="38">38</option>
                          <option value="35">35</option>
                        </select></span></div><select id="product-select" name="id" style="display:none;">

                      <option value="1040377813">Tím / 36 - 4,800,000₫</option>
                      <option value="1040377814">Tím / 37 - 4,800,000₫</option>
                      <option value="1040377815">Tím / 38 - 4,800,000₫</option>
                      <option value="1040409049">Xanh / 35 - 4,800,000₫</option>
                      <option value="1040409050">Xanh / 36 - 4,800,000₫</option>
                      <option value="1040409053">Xanh / 37 - 4,800,000₫</option>
                      <option value="1040409054">Xanh / 38 - 4,800,000₫</option>
                    </select>
                  </div>
                  <div class="select-swatch clearfix">
                    <div id="variant-swatch-0" class="swatch clearfix" data-option="option1" data-option-index="0">


                      <div class="header" style="background: white;
                          color: #272727;"><span>Tím</span></div>

                      <div class="select-swap">
                        <div data-value="Tím" class="n-sd swatch-element
                            color tim">
                          <input class="variant-0" id="swatch-0-tim" type="radio" name="option1" value="Tím"
                            data-vhandle="tim" checked="">
                          <label class="tim sd" for="swatch-0-tim">
                            <span>Tím</span>
                          </label>

                        </div>
                        <div data-value="Xanh" class="n-sd swatch-element
                            color xanh">
                          <input class="variant-0" id="swatch-0-xanh" type="radio" name="option1" value="Xanh"
                            data-vhandle="xanh">


                          <label class="xanh" for="swatch-0-xanh">
                            <span>Xanh</span>
                          </label>

                        </div>
                      </div>
                    </div>
                    <div id="variant-swatch-1" class="swatch clearfix" data-option="option2" data-option-index="1">


                      <div class="select-swap">
                        <div data-value="36" class="n-sd swatch-element
                            36">
                          <input class="variant-1" id="swatch-1-36" type="radio" name="option2" value="36"
                            data-vhandle="36" checked="">

                          <label for="swatch-1-36" class="sd">
                            <span>36</span>
                          </label>

                        </div>
                        <div data-value="37" class="n-sd swatch-element
                            37">
                          <input class="variant-1" id="swatch-1-37" type="radio" name="option2" value="37"
                            data-vhandle="37">

                          <label for="swatch-1-37">
                            <span>37</span>
                          </label>

                        </div>
                        <div data-value="38" class="n-sd swatch-element
                            38">
                          <input class="variant-1" id="swatch-1-38" type="radio" name="option2" value="38"
                            data-vhandle="38">

                          <label for="swatch-1-38">
                            <span>38</span>
                          </label>

                        </div>
                        <div data-value="35" class="n-sd swatch-element 35
                            soldout">
                          <input class="variant-1" id="swatch-1-35" type="radio" name="option2" value="35"
                            data-vhandle="35" disabled="">

                          <label for="swatch-1-35">
                            <span>35</span>
                          </label>

                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="selector-actions">
                    <div class="quantity-area clearfix">
                      <input type="button" value="-" onclick="minusQuantity()" class="qty-btn">
                      <input type="text" id="quantity" name="quantity" value="1" min="1" class="quantity-selector">
                      <input type="button" value="+" onclick="plusQuantity()" class="qty-btn">
                    </div>
                    <div class="wrap-addcart clearfix">
                      <div class="row-flex">
                          <c:url value="/addtocart?productId=${productId}" var="addtocart"/>
                          <button  type="button" onclick="document.location='${addtocart}'" class="button btn-addtocart addtocart-modal">Thêm
                          vào</button>
                        <button type="button" class="buy-now button" style="display: block;">Mua
                          ngay</button>
 
                      </div>
                      <div class="alert alert-${trangthai}">
                      <strong>Thành Công! </strong> <a href="" class="alert-link">${mess}</a>.
                      </div>

                      <a href="" target="_blank" class="button btn-check"
                        style="color: #ffffff;text-decoration:none;"><span>Click
                          nhận mã giảm giá ngay
                          !</span></a>

                    </div>
                  </div>
                  <!--<div class="product-action-bottom visible-xs">
                      <div class="input-bottom">
                        <input id="quan-input" type="number" value="1" min="1">
                      </div>
                      <button type="button" id="add-to-cartbottom"
                        class="add-to-cartProduct add-cart-bottom button addtocart-modal" name="add">Thêm vào
                        giỏ</button>
                    </div>-->
                </form>
                <div class="product-description">
                  <div class="title-bl">
                    <h2>Mô tả</h2>
                  </div>
                  <div class="description-content">
                    <div class="description-productdetail">
                      <p><span>${desciption}</span><br><br></p>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="list-productRelated clearfix">
            <div class="heading-title text-center">
              <h2>Sản phẩm liên quan</h2>
            </div>
            <div class="container">
              <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                  <div class="product-block">
                    <div class="product-img fade-box">
                      <a href="#" title="Adidas EQT Cushion ADV" class="img-resize">
                        <img src="images/shoes/800502_01_e92c3b2bb8764b52a791846d84a3a360_grande.jpg"
                          alt="Adidas EQT Cushion ADV" class="lazyloaded">
                        <img src="images/shoes/shoes fade 1.jpg" alt="Adidas EQT Cushion ADV" class="lazyloaded">
                      </a>

                    </div>
                    <div class="product-detail clearfix">
                      <div class="pro-text">
                        <a style="color: black;
                            font-size: 14px;text-decoration: none;" href="#" title="Adidas EQT Cushion ADV" inspiration
                          pack>
                          Adidas EQT Cushion ADV "North America"
                        </a>
                      </div>
                      <div class="pro-price">
                        <p class="">7,000,000₫</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                  <div class="product-block">
                    <div class="product-img fade-box">
                      <a href="#" title="Adidas Nmd R1" class="img-resize">
                        <img src="images/shoes/201493_1_017364c87c3e4802a8cda5259e3d5a95_grande.jpg" alt="Adidas Nmd R1"
                          class="lazyloaded">
                        <img src="images/shoes/shoes fade 2.jpg" alt="Adidas Nmd R1" class="lazyloaded">
                      </a>

                    </div>
                    <div class="product-detail clearfix">
                      <div class="pro-text">
                        <a style="color: black;
                            font-size: 14px;text-decoration: none;" title="Adidas Nmd R1" href="">
                          Adidas Nmd R1 "Villa Exclusive"
                        </a>
                      </div>
                      <div class="pro-price">
                        <p class="">7,000,000₫</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                  <div class="product-block">
                    <div class="product-img fade-box">
                      <a href="#" title="Adidas PW Solar HU NMD" class="img-resize">
                        <img src="images/shoes/805266_02_b8b2cdd1782246febf8879a44a7e5021_grande.jpg"
                          alt="Adidas PW Solar HU NMD" class="lazyloaded">
                        <img src="images/shoes/shoes fade 3.jpg" alt="Adidas PW Solar HU NMD" class="lazyloaded">
                      </a>

                    </div>
                    <div class="product-detail clearfix">
                      <div class="pro-text">
                        <a style="color: black;
                            font-size: 14px;text-decoration: none;" href="#" title="Adidas PW Solar HU NMD" inspiration
                          pack>
                          Adidas PW Solar HU NMD "Inspiration Pack"
                        </a>
                      </div>
                      <div class="pro-price">
                        <p class="">5,000,000₫</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                  <div class="product-block">
                    <div class="product-img fade-box">
                      <a href="#" title="Adidas Ultraboost W" class="img-resize">
                        <img src="images/shoes/801432_01_b16d089f8bda434bacfe4620e8480be1_grande.jpg"
                          alt="Adidas Ultraboost W" class="lazyloaded">
                        <img src="images/shoes/shoes fade 4.jpg" alt="Adidas Ultraboost W" class="lazyloaded">
                      </a>

                    </div>
                    <div class="product-detail clearfix">
                      <div class="pro-text">
                        <a style="color: black;
                            font-size: 14px;text-decoration: none;" href="#" title="Adidas Ultraboost W" inspiration
                          pack>
                          Adidas Ultraboost W
                        </a>
                      </div>
                      <div class="pro-price">
                        <p class="">5,300,000₫</p>
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
    </div>


    <!-- show zoom detail product -->
    <!-- zoom -->
    <div class="product-zoom11">
     <div class="product-zom">
      <div class="divclose">
        <i class="fa fa-times-circle"></i>
      </div>
      <div class="owl-carousel owl-theme owl-product1">

        <div class="item"><img src="${img}" alt="">
        </div>
        



      </div>
     </div>
    </div>

  </main>
  <!--gallery-->
  <section class="section section-gallery">
    <div class="">
      <div class="hot_sp" style="padding-top: 70px;padding-bottom: 50px;">
        <h2 style="text-align:center;padding-top: 10px">
          <a style="font-size: 28px;color: black;text-decoration: none" href="">Khách hàng và Runner Inn</a>
        </h2>
      </div>
      <div class="list-gallery clearfix">
        <ul class="shoes-gp">
          <li>
            <div class="gallery_item">
              <img class="img-resize" src="images/shoes/gallery_item_1.jpg" alt="">
            </div>
          </li>
          <li>
            <div class="gallery_item">
              <img class="img-resize" src="images/shoes/gallery_item_2.jpg" alt="">
            </div>
          </li>
          <li>
            <div class="gallery_item">
              <img class="img-resize" src="images/shoes/gallery_item_3.jpg" alt="">
            </div>
          </li>
          <li>
            <div class="gallery_item">
              <img class="img-resize" src="images/shoes/gallery_item_4.jpg" alt="">
            </div>
          </li>
          <li>
            <div class="gallery_item">
              <img class="img-resize" src="images/shoes/gallery_item_5.jpg" alt="">
            </div>
          </li>
          <li>
            <div class="gallery_item">
              <img class="img-resize" src="images/shoes/gallery_item_6.jpg" alt="">
            </div>
          </li>
        </ul>
      </div>
    </div>
  </section>



  <!-- footer -->

  <footer class="main-footer">
    <div class="container">
      <div class="">
        <div class="row">
          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="footer-col footer-block">
              <h4 class="footer-title">
                Giới thiệu
              </h4>
              <div class="footer-content">
                <p>Runner Inn trang mua sắm trực tuyến của thương hiệu giày,
                  thời trang nam, nữ, phụ kiện, giúp bạn
                  tiếp
                  cận xu hướng thời trang mới nhất.</p>
                <div class="logo-footer">
                  <img src="images/logo-bct.png" alt="Bộ Công Thương">
                </div>
                <div class="social-list">
                  <a href="#" class="fab fa-facebook"></a>
                  <a href="#" class="fab fa-google"></a>
                  <a href="#" class="fab fa-twitter"></a>
                  <a href="#" class="fab fa-youtube"></a>
                  <a href="#" class="fab fa-skype"></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="footer-col footer-link">
              <h4 class="footer-title">
                PHÁP LÝ &amp; CÂU HỎI
              </h4>
              <div class="footer-content toggle-footer">
                <ul>
                  <li class="item">
                    <a href="#" title="Tìm kiếm">Tìm kiếm</a>
                  </li>
                  <li class="item">
                    <a href="#" title="Giới thiệu">Giới thiệu</a>
                  </li>
                  <li class="item">
                    <a href="#" title="Chính sách đổi trả">Chính sách đổi trả</a>
                  </li>
                  <li class="item">
                    <a href="#" title="Chính sách bảo mật">Chính sách bảo mật</a>
                  </li>
                  <li class="item">
                    <a href="#" title="Điều khoản dịch vụ">Điều khoản dịch vụ</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="footer-col footer-block">
              <h4 class="footer-title">
                Thông tin liên hệ
              </h4>
              <div class="footer-content toggle-footer">
                <ul>
                  <li><span>Địa chỉ:</span> 117-119 Lý Chính Thắng, Phường 7,
                    Quận 3, TP. Hồ Chí Minh, Vietnam</li>
                  <li><span>Điện thoại:</span> +84 (028) 38800659</li>
                  <li><span>Fax:</span> +84 (028) 38800659</li>
                  <li><span>Mail:</span> contact@aziworld.com</li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="footer-col footer-block">
              <h4 class="footer-title">
                FANPAGE
              </h4>
              <div class="footer-content">
                <div id="fb-root">
                  <div class="footer-static-content">
                    <div class="fb-page" data-href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/"
                      data-tabs="timeline" data-width="" data-height="215" data-small-header="false"
                      data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                      <blockquote cite="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/"
                        class="fb-xfbml-parse-ignore"><a
                          href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/">AziWorld
                          Viet Nam</a>
                      </blockquote>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="main-footer--copyright">
      <div class="container">
        <hr>
        <div class="main-footer--border" style="text-align:center;padding-bottom: 15px;">
          <p>Copyright © 2019 <a href="https://runner-inn.myharavan.com">
              Runner Inn</a>. <a target="_blank" href="https://www.facebook.com/henrynguyen202">Powered by
              HuniBlue</a></p>
        </div>
      </div>
    </div>
  </footer>
  <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
  <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
  <script src="plugins/bootstrap/popper.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
  <script src="plugins/uikit/uikit.min.js"></script>
  <script src="plugins/uikit/uikit-icons.min.js"></script>
  <script src="js/script.js"></script>
  <script src="js/home.js"></script>

  <!-- <script src="js/divzoom.js"></script> -->
</body>

</html>
