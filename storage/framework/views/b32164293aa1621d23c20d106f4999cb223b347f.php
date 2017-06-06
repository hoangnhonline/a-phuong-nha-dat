  
<?php echo $__env->make('frontend.partials.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->startSection('content'); ?>
<section class="col-sm-8 col-xs-12 block-sitemain">
<article class="block-breadcrumb-page">
	<ul class="breadcrumb">	
		<li><a href="<?php echo e(route('home')); ?>" title="Trở về trang chủ">Trang chủ</a></li>
		<li class="active">Dự án</li>
	</ul>
</article>
<article class="block block-project-search">
	<div class="block-title-common">
		<h3><span class="icon-tile"><i class="fa fa-search"></i></span>TẤT CẢ DỰ ÁN</h3>
	</div>
	<!--<div class="block-contents">
		
	</div>-->
</article><!-- /block-project-search -->
<article class="block block-project">
	<!--<div class="block-cate-title"><h1>TẤT CẢ DỰ ÁN</h1></div>-->
	<div class="block-searchresult">
		<!--<h2>Tìm kiếm theo các tiêu chí: <b style="color: #37a344;"> Tất cả dự án khu dân cư tại Quận 3</b>. Tỉnh/Tp: Hồ Chí Minh. Quận/Huyện: Quận 3</h2>-->
		<span class="block-countresult">Có <b><?php echo e($projectList->count()); ?></b> dự án</span>
	</div>
	<div class="row">
		<div class="project-list clearfix">
			<?php if($projectList): ?>
			<?php foreach($projectList as $value): ?>
			<div class="col-sm-6 col-xs-6">
				<div class="project-item">
					<div class="project-img">
					    <a href="<?php echo e(route('detail-project', [$value->slug])); ?>" title="<?php echo e($value->name); ?>">
					        <img src="<?php echo e($value->image_url ? Helper::showImageThumb($value->image_url, 3, '306x194') : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="<?php echo e($value->name); ?>">
					    </a>
					</div>
					<div class="project-desc">
			            <div class="project-name">
			                <h4><a href="<?php echo e(route('detail-project', [$value->slug])); ?>" title="<?php echo e($value->name); ?>"><?php echo e($value->name); ?></a></h4>
			            </div>
			            <div class="project-address">
			                <span>Địa chỉ: </span>
			                <p><?php echo e($value->address); ?></p>
			            </div>
			        </div>
				</div>
			</div>
			<?php endforeach; ?>
			<?php endif; ?>
		</div>
	</div>
</article><!-- /block-project -->
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>