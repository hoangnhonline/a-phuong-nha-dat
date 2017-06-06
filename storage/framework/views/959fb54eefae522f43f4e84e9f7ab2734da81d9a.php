  
  
<?php echo $__env->make('frontend.news.content', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('frontend.partials.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
  

<?php $__env->startSection('content'); ?>
<section class="col-sm-8 col-xs-12 block-sitemain">
<article class="block-breadcrumb-page">
    <ul class="breadcrumb"> 
        <li><a href="<?php echo e(route('home')); ?>" title="Trở về trang chủ">Trang chủ</a></li>            
        <li class="active"><?php echo e($cateDetail->name); ?></li>
    </ul>
</article>
    <article class="block block-breadcrumb">
      <div class="block-contents">
        <ul>
          <li class="active"><h2><a href="<?php echo e(route('news-list', $cateDetail->slug)); ?>"><?php echo e($cateDetail->name); ?></a></h2></li>
        </ul>
      </div>
    </article><!-- /block-breadcrumb -->    

    <article class="block block-article-list clearfix">
      <div class="col-sm-12 col-xs-12">
        <div class="row">
          <div class="block-contents">
            <ul class="article-list-news">
              <?php foreach( $articlesArr as $articles ): ?>
              <li class="article-news-item">
                <div class="article-news-item-head">
                  <a id="" href="<?php echo e(route('news-detail', ['slug' => $articles->slug, 'id' => $articles->id])); ?>"><img id="" title="" src="<?php echo e(Helper::showImage($articles->image_url)); ?>" alt=""></a>
                </div>
                <div class="article-news-item-description">
                  <a href="<?php echo e(route('news-detail', ['slug' => $articles->slug, 'id' => $articles->id])); ?>" title=""><?php echo e($articles->title); ?></a>
                  <div class="nd-time"><?php echo e(date('d-m-Y', strtotime($articles->created_at))); ?>  <small>08:05 </small></div>
                  <p><?php echo e($articles->description); ?></p>
                </div>
              </li>
              <?php endforeach; ?>
             
            </ul>
            <!--<nav class="block-pagination">
              <ul class="pagination">
                <li><a class="selected" href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#" aria-label="Previous">Trang sau</a></li>
                <li><a href="#" aria-label="Next">Trang cuối</a></li>
              </ul>-->
            </nav>
          </div>
        </div>
      </div>
    </article><!-- /block-news-new -->

  </section><!-- /block-site-left -->
<?php $__env->stopSection(); ?>
  <?php $__env->startSection('javascript_page'); ?>
  
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>