<?php 
$bannerArr = DB::table('banner')->where(['object_id' => 2, 'object_type' => 3])->orderBy('display_order', 'asc')->get();
?>
<?php if($bannerArr): ?>
<div class="block left-module">
  <?php foreach($bannerArr as $banner): ?>
 <div class="banner-opacity" style="margin-bottom:10px">
  <?php if($banner->ads_url !=''): ?>
  <a href="<?php echo e($banner->ads_url); ?>">
  <?php endif; ?>
  <img alt="banner" class="lazy" data-original="<?php echo e(Helper::showImage($banner->image_url)); ?>" title="banner">
  <?php if($banner->ads_url !=''): ?>
  </a>
  <?php endif; ?>
  </div>
  <?php endforeach; ?>                        
</div>
<?php endif; ?>