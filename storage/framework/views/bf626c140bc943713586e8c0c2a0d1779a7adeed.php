<!-- MAIN HEADER -->
<div class="container main-header">
    <div class="row">
        <?php if(in_array(\Request::route()->getName(), ['chi-tiet', 'danh-muc-con', 'news-detail', 'news-list'])): ?>
        <div class="col-xs-12 col-sm-2 col-md-3 logo">
        <?php else: ?>
        <h1 class="col-xs-12 col-sm-2 col-md-3 logo" style="margin-right: -15px;">
        <?php endif; ?>
            <a href="<?php echo e(route('home')); ?>"><img alt="Logo NhaDat" src="<?php echo e(Helper::showImage($settingArr['logo'])); ?>"></a>
        <?php if(in_array(\Request::route()->getName(), ['chi-tiet', 'danh-muc-con', 'news-detail', 'news-list'])): ?>
        </div>
        <?php else: ?>
        </h1>
        <?php endif; ?>
        <div class="col-xs-12 col-sm-5 col-md-5 header-search-box noprint">
            <form class="form-inline" method="GET" action="<?php echo e(route('search')); ?>">
                  <div class="form-group input-serach">
                    <input type="text" name="keyword"  placeholder="Nhập sản phẩm cần tìm" value="<?php echo e(isset($tu_khoa) ? $tu_khoa : ""); ?>">
                  </div>
                  <button type="submit" class="pull-right btn-search"></button>
            </form>
        </div>

        <div id="cart-block" class="col-md-1 col-sm-1 col-xs-4 shopping-cart-box noprint">
            <a class="cart-link" href="<?php echo e(route('gio-hang')); ?>">
                <?php if(Session::has('products') && Session::get('products')): ?>
                    <span class="notify notify-left"><?php echo e(Session::get('products') ? array_sum(Session::get('products')) : 0); ?></span>
                <?php else: ?>
                    <span class="notify notify-left">0</span>
                <?php endif; ?>
            </a>
        </div><!-- end /.shopping-cart-box -->

        <div class="header-user col-md-3 col-sm-4 col-xs-6 noprint">
            <?php if(!Session::get('login')): ?>
            <div class="user-name">
                <div class="user-name-link user-ajax-link">
                  <div class="user-avatar">
                    <img alt="avatar default" data-original="<?php echo e(URL::asset('assets/images/avatar-s.png')); ?>" class="lazy" height="40" width="40">
                    </div>
                  <ul>
                    <li class="user-name-short"><span>Đăng nhập</span></li>
                    <li class="user-name-account"><span>Tài khoản</span><span> &amp; Đơn hàng</span></li>
                  </ul>
                  <span class="caret"></span>
                </div>
                <div class="user-name-box user-ajax-box">
                  <ul class="user-ajax-guest">
                    <li id="login_link"><a class="user-name-login" title="Đăng Nhập" href="javascript:(void);" class="link" data-dismiss="modal" data-toggle="modal" data-target="#modalLoginFrom"><i class="fa fa-sign-in"></i> Đăng nhập</a></li>
                    <li id="login_fb_link" class="login-by-facebook-popup">
                    <a data-url="#" title="Đăng nhập bằng Facebook" class="user-name-loginfb"><i class="fa fa-facebook-square"></i><span>Đăng nhập bằng</span><span> Facebook</span></a>
                    </li>
                    <li class="user-name-register">
                      <a title="Tạo tài khoản mới" class="link" data-dismiss="modal" data-toggle="modal" data-target="#modalRegisterFrom"><i class="fa fa-user"></i><span>Tạo tài khoản</span></a>
                    </li>
                  </ul>
                </div>
            </div>
            <?php else: ?>
            <div class="user-name">            
              <div class="user-name-link user-ajax-link">
                <div class="user-avatar"><img alt="<?php echo e(Session::get('username')); ?>" data-original="<?php echo e(Session::get('avatar') != '' ? Session::get('avatar') :  URL::asset('assets/images/avatar-s.png')); ?>" height="40" width="40" class="lazy"></div>
                <ul>
                  <li class="user-name-short">
                      <span>Chào, <?php echo e(Session::get('username')); ?>     </span>                 
                      <span class="badge" id="countNoti" style="display:none">0</span> 
                  </li>
                  <li class="user-name-account"> <span>Tài khoản</span> <span>&amp; Đơn hàng</span> </li>
                </ul>
                <span class="caret"></span>
              </div>
              <div class="user-name-box user-ajax-box">
                <ul class="user-ajax-customer">
                  <li> <a href="<?php echo e(route('account-info')); ?>" title="Thông tin tài khoản"> Thông tin tài khoản </a> </li>
                  <li> <a href="<?php echo e(route('order-history')); ?>" title="Đơn hàng của tôi"> Đơn hàng của tôi </a> </li>
                  <li> <a href="<?php echo e(route('notification')); ?>" title="Thông báo của tôi"> Thông báo của tôi </a> </li>
                  <?php if(Session::get('facebook_id') == null): ?>
                  <li> <a href="<?php echo e(route('change-password')); ?>" title="Đổi mật khẩu"> Đổi mật khẩu</a> </li>
                  <?php endif; ?>
                  <li> <a href="<?php echo e(route('user-logout')); ?>" title="Thoát tài khoản"> Thoát tài khoản </a> </li>
                </ul>
              </div>
          </div>
          <?php endif; ?>           

        </div><!-- end choose-user-login -->
    </div>

</div>