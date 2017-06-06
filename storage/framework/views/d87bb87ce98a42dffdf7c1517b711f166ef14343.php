<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse menu" id="bs-example-navbar-collapse-1">
    <div class="text-center logo-menu">
        <a title="Logo" href="home.html"><img src="https://imgholder.ru/204x90/0082D5/fff.jpg') }}&text=My+Logo&font=tahoma&fz=27" alt=""></a>
    </div>
    <ul class="nav navbar-nav navbar-left">
        <li class="level0 <?php echo e(\Request::route()->getName() == "home" ? "active" : ""); ?>"><a class="" href="<?php echo e(route('home')); ?>">Trang chủ</a></li><!-- END MENU HOME -->
        <li class="level0 parent <?php echo e((in_array(\Request::route()->getName(), ['ban', 'danh-muc', 'chi-tiet']) && isset($type) && $type == 1) ? "active" : ""); ?>">
            <a href="<?php echo e(route('ban')); ?>">BĐS bán</a>
            <ul class="level0 submenu">
                <?php foreach($banList as $ban): ?>
                <li class="level1"><a href="<?php echo e(route('danh-muc', $ban->slug )); ?>"><?php echo e($ban->name); ?></a></li>                         
                <?php endforeach; ?>
            </ul>
        </li><!-- END MENU SHOP -->
        <li class="level0 <?php echo e((in_array(\Request::route()->getName(), ['cho-thue', 'danh-muc', 'chi-tiet']) && isset($type) && $type == 2) ? "active" : ""); ?>"><a href="<?php echo e(route('cho-thue')); ?>">BĐS cho thuê</a>
            <ul class="level0 submenu">
                <?php foreach($thueList as $thue): ?>
                <li class="level1"><a href="<?php echo e(route('danh-muc', $thue->slug )); ?>"><?php echo e($thue->name); ?></a></li>                           
                <?php endforeach; ?>
            </ul>
        </li><!-- END MENU BLOG -->
        <li class="level0 <?php echo e(in_array(\Request::route()->getName(), ['du-an', 'detail-project', 'tab']) ? "active" : ""); ?>"><a href="<?php echo e(route('du-an')); ?>">Dự án</a></li>
        <?php foreach($articleCate as $value): ?>
        <li class="level0 <?php echo e((isset($cateDetail) && $cateDetail->id == $value->id) ? "active" : ""); ?>"><a href="<?php echo e(route('news-list', $value->slug)); ?>"><?php echo e($value->name); ?></a></li>
        <?php endforeach; ?>
        
        <li class="level0 postnew <?php echo e((in_array(\Request::route()->getName(), ['ky-gui-thanh-cong', 'ky-gui'])) ? "active" : ""); ?>"><a href="<?php echo e(route('ky-gui')); ?>"><img src="<?php echo e(URL::asset('assets/images/icon-postnews.png')); ?>" alt="Ký gửi"> Ký gửi</a></li>
    </ul>
</div><!-- /.navbar-collapse -->