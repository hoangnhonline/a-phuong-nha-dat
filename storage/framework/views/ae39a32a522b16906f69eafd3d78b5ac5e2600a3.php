  
  
  <?php echo $__env->make('frontend.news.content-news-detail', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

  

  <?php $__env->startSection('javascript_page'); ?>
  	
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>