<%-- 
    Document   : introduce
    Created on : 14 thg 9, 2022, 16:14:58
    Author     : exnpt
--%>

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
      <a class="navbar-brand" href="index.html">
        <img src="images/logo.png" class="logo-top" alt="">
      </a>
      <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="index.html">TRANG CHỦ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="product.html">BỘ SƯU TẬP</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="introduce.html">GIỚI THIỆU</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="blog.html">BLOG</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">LIÊN HỆ</a>
          </li>
          <li class="nav-item lisanpham">
            <a class="nav-link" href="#">ACCOUNTS
              <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <c:if test="${sessionScope.username != null}">
            <ul class="sub_menu">
              <li class="">
                <a href="#" title="Sản phẩm - Style 1"> 
                  Xin Chào: ${name}
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
                  <a class="nav-link" href="index.html">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Product.html">BỘ SƯU TẬP</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle aaaa"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" >
                    <p>SẢN PHẨM</p>
                    <i class="fa fa-angle-double-right"></i>

                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                    <a class="dropdown-item" href="detailproduct.html" title="Sản phẩm - Style 1">Sản phẩm - Style 1</a>
                    <a class="dropdown-item" href="detailproduct.html" title="Sản phẩm - Style 2">Sản phẩm - Style 2</a>
                    <a class="dropdown-item" href="detailproduct.html" title="Sản phẩm - Style 3">Sản phẩm - Style 3</a>
                  </div>
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
  <!--Banner-->
  <div>
    <div>
      <img src="images/collection_banner.jpg" alt="Products">
    </div>
  </div>
  <div class="breadcrumb-shop">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
          <ol class="breadcrumb breadcrumb-arrows">
            <li>
              <a href="index.html">
                <span>Trang chủ</span>
              </a>
            </li>
            <li>
              <span><span style="color: #777777">Giới thiệu</span></span>
            </li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!--List Prodct-->

  <div class="container">

    <div class="row">
      <div class="col-md-3 d-none d-sm-block d-sm-none d-md-block">
        <div class="sidebar-page">
            <div class="group-menu">
                <div class="page_menu_title title_block">
                  <h2>Danh mục trang</span></h2>
                </div>
                <div class="layered layered-category">
                    <div class="layered-content">
                        <ul class="menuList-links">
                          <li class=""><a href="home.html" title="Trang chủ"><span>Trang chủ</span></a></li>       
                          <li class=""><a href="product.html" title="Bộ sưu tập"><span>Bộ sưu tập</span></a></li>
                          <li class="has-submenu level0 ">
                              <a title="Sản phẩm" >Sản phẩm <span class="icon-plus-submenu" data-toggle="collapse"
                                  href="#collapseExample" role="button" aria-expanded="false"
                                  aria-controls="collapseExample"></span></a>
                              <div class="collapse" id="collapseExample">
                                <div class="card card-body" style="border:0">
                                  <ul class="menu-product">
                                    <li><a href="detailproduct.html" title="Sản phẩm - Style 1">Sản phẩm - Style 1</a></li>
                                    <li><a href="detailproduct.html" title="Sản phẩm - Style 2">Sản phẩm - Style 2</a></li>
                                    <li><a href="detailproduct.html" title="Sản phẩm - Style 3">Sản phẩm - Style 3</a></li>
                                  </ul>
                                </div>
                              </div>
                            </li>      
                          <li class="active"><a href="introduce.html" title="Giới thiệu"><span>Giới thiệu</span></a></li>     
                          <li class=""><a href="blog.html" title="Blog"><span>Blog</span></a></li>      
                          <li class=""><a href="contact.html" title="Liên hệ"><span>Liên hệ</span></a></li>
                        </ul>
                      </div>
                </div>
              </div>
          <div class="box_image visible-lg visible-md">
            <div class="banner">
              <a href="">
                <img src="//theme.hstatic.net/1000375638/1000480323/14/page_banner.jpg?v=321" alt="Runner Inn">
              </a>
            </div>
          </div>
        </div>

      </div>
      <div class="col-md-9 col-sm-12 col-xs-12">
        <div class="page-wrapper">
          <div class="heading-page">
            <h1>Giới thiệu</h1>
          </div>
          <div class="wrapbox-content-page">
            <div class="content-page ">
              <p>Trang giới thiệu giúp khách hàng hiểu rõ hơn về cửa hàng của bạn. Hãy cung cấp thông tin cụ thể về việc
                kinh doanh, về cửa hàng, thông tin liên hệ. Điều này sẽ giúp khách hàng cảm thấy tin tưởng khi mua hàng
                trên website của bạn.</p>
              <p>Một vài gợi ý cho nội dung trang Giới thiệu:</p>
              <div>
                <ul>
                  <li><span>Bạn là ai</span><br></li>
                  <li><span>Giá trị kinh doanh của bạn là gì</span><br></li>
                  <li><span>Địa chỉ cửa hàng</span><br></li>
                  <li><span>Bạn đã kinh doanh trong ngành hàng này bao lâu rồi</span><br></li>
                  <li><span>Bạn kinh doanh ngành hàng online được bao lâu</span><br></li>
                  <li><span>Đội ngũ của bạn gồm những ai</span><br></li>
                  <li><span>Thông tin liên hệ</span><br></li>
                  <li><span>Liên kết đến các trang mạng xã hội (Twitter, Facebook)</span><br></li>
                </ul>
              </div>
              <p>Bạn có thể chỉnh sửa hoặc xoá bài viết này tại <a href="" style="color:black"><strong>đây</strong></a>
                hoặc thêm những bài viết mới trong phần quản lý <a href="" style="color: black"><strong>Trang nội
                    dung</strong></a>.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
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
                <p>Runner Inn trang mua sắm trực tuyến của thương hiệu giày, thời trang nam, nữ, phụ kiện, giúp bạn
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
                  <li><span>Địa chỉ:</span> 117-119 Lý Chính Thắng, Phường 7, Quận 3, TP. Hồ Chí Minh, Vietnam</li>
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
                          href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/">AziWorld Viet Nam</a>
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
          <p>Copyright © 2019 <a href="https://runner-inn.myharavan.com"> Runner Inn</a>. <a target="_blank"
              href="https://www.facebook.com/henrynguyen202">Powered by HuniBlue</a></p>
        </div>
      </div>
    </div>
  </footer>
  <script async defer crossorigin="anonymous"
    src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v4.0"></script>
  <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.7/js/uikit.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.7/js/uikit-icons.min.js"></script>
</body>

</html>
