<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Đổi mật khẩu
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>      
      <li class="active">Đổi mật khẩu</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">    
    <form role="form" method="POST" action="<?php echo e(route('account.store-pass')); ?>" id="formData">
    <div class="row">
      <!-- left column -->
       
      <div class="col-md-7">

        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tạo mới</h3>
          </div>
          <!-- /.box-header -->               
            <?php echo csrf_field(); ?>


            <div class="box-body">
               <?php if(Session::has('message')): ?>
              <p class="alert alert-info" ><?php echo e(Session::get('message')); ?></p>
              <?php endif; ?>
              <?php if(count($errors) > 0): ?>
                  <div class="alert alert-danger">
                      <ul>
                          <?php foreach($errors->all() as $error): ?>
                              <li><?php echo e($error); ?></li>
                          <?php endforeach; ?>
                      </ul>
                  </div>
              <?php endif; ?>
                 
                 <!-- text input -->
                <div class="form-group">
                  <label>Mật khẩu hiện tại <span class="red-star">*</span></label>
                  <input type="password" class="form-control" name="old_pass" id="old_pass" value="">
                </div>
                 <div class="form-group">
                  <label>Mật khẩu mới <span class="red-star">*</span></label>
                  <input type="password" class="form-control" name="new_pass" id="new_pass" value="">
                </div>  
                <div class="form-group">
                  <label>Xác nhận mật khẩu mới <span class="red-star">*</span></label>
                  <input type="password" class="form-control" name="new_pass_re" id="new_pass_re" value="">
                </div>                
                
            </div>
            <div class="box-footer">
              <button type="button" class="btn btn-default btn-sm" id="btnLoading" style="display:none"><i class="fa fa-spin fa-spinner"></i></button>
              <button type="submit" class="btn btn-primary btn-sm" id="btnSave">Lưu</button>             
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('javascript_page'); ?>
<script type="text/javascript">
    $(document).ready(function(){
      $('#formData').submit(function(){
        $('#btnSave').hide();
        $('#btnLoading').show();
      });
    });
    
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>