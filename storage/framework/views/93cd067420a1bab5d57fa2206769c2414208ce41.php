<?php echo $__env->make('frontend.partials.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->startSection('content'); ?>
<section class="col-sm-8 col-xs-12 block-sitemain">
	<article class="block block-news-new block-news-cate clearfix">
		<div class="block-cate-title"><h1>Kết quả tìm kiếm</h1></div>
		<div class="block-searchresult">			
			<span class="block-countresult">Có <b><?php echo e(number_format(count($productList))); ?></b> bất động sản</span>
		</div>
		<div class="col-sm-12 col-xs-12">
			<div class="row">
				<div class="block-title block-title-catenews">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs nav-tabs-cus" role="tablist">
						<li role="presentation" class="active"><a href="#dsrt" aria-controls="dsrt" role="tab" data-toggle="tab"><i class="fa fa-list"></i> Danh sách kết quả</a></li>
					</ul>
				</div>
				<div class="block-contents">
					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="home">
						<?php if(!empty( (array) $productList )): ?>
							<ul>
								<?php foreach( $productList as $product ): ?>
								<li class="news-new-item">
									<div class="news-new-item-head"><a href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"><img title="<?php echo e($product->title); ?>" src="<?php echo e($product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="<?php echo e($product->title); ?>"></a></div>
									<div class="news-new-item-description">
										<h4>
											<a class="description-title vip1" title="<?php echo e($product->title); ?>" href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"><i class="vipdb fa fa-star"></i> <?php echo e($product->title); ?> </a></h4>
                						<div class="description-info">
                							<div class="price"><label>Giá<span>:</span></label><?php echo e($product->price); ?> <?php echo e(Helper::getName($product->price_unit_id, 'price_unit')); ?></div>
				                            <div class="area"><label>Diện tích<span>:</span></label><?php echo e($product->area); ?> m<sub>2</sub></div>
				                            <div class="location"><label>Vị trí<span>:</span></label><?php echo e(Helper::getName($product->district_id, 'district')); ?> - <?php echo e(Helper::getName($product->city_id, 'city')); ?></div>
                						</div>
                						<span class="date"><?php echo e(date('d/m/Y', strtotime($product->created_at))); ?></span>
									</div>
								</li>
								<?php endforeach; ?>
								
							</ul>
							<?php endif; ?>
							<!--<nav class="block-pagination">
								<ul class="pagination">
									<li><a class="selected" href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Previous">Trang sau</a></li>
									<li><a href="#" aria-label="Next">Trang cuối</a></li>
								</ul>
							</nav>-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</article><!-- /block-news-new -->
</section><!-- /block-site-left -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>