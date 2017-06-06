<?php 
$bannerArr = DB::table('banner')->where(['object_id' => 2, 'object_type' => 3])->orderBy('display_order', 'asc')->get();
?>
<?php if($bannerArr): ?>
<div id="advLeft" style="display:none">
  <div class="banner_scroll" id="banner_left">
    <div class="item">        
      <?php foreach($bannerArr as $banner): ?>       
      <?php if($banner->ads_url !=''): ?>
      <a id="ban_116" href="<?php echo e($banner->ads_url); ?>" target="_blank" style="width: 100px; display: block;">
      <?php endif; ?>        
                  <img src="<?php echo e(Helper::showImage($banner->image_url)); ?>">
              <?php if($banner->ads_url !=''): ?>
      </a>
      <?php endif; ?>
      <?php endforeach; ?>
    </div>
  </div>
</div><!-- /AdvLeft -->
<?php endif; ?>
<?php 
$bannerArr = DB::table('banner')->where(['object_id' => 3, 'object_type' => 3])->orderBy('display_order', 'asc')->get();
?>
<?php if($bannerArr): ?>
<div id="advRight" style="display:none">
  <div class="banner_scroll" id="banner_right">
    <div class="item">
      <?php foreach($bannerArr as $banner): ?>       
      <?php if($banner->ads_url !=''): ?>
      <a id="ban_117" href="<?php echo e($banner->ads_url); ?>" target="_blank" style="width: 100px; display: block;">
      <?php endif; ?>        
                  <img src="<?php echo e(Helper::showImage($banner->image_url)); ?>">
              <?php if($banner->ads_url !=''): ?>
      </a>
      <?php endif; ?>
      <?php endforeach; ?>
    </div>
  </div>
</div><!-- /Advight -->
<?php endif; ?>