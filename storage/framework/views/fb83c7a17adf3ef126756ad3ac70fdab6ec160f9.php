<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Tạo tài khoản
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="<?php echo e(route('account.index')); ?>">Tài khoản</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="<?php echo e(route('account.index')); ?>" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="<?php echo e(route('account.store')); ?>" id="formData">
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
                  <label>Họ tên <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="full_name" id="full_name" value="<?php echo e(old('full_name')); ?>">
                </div>
                 <div class="form-group">
                  <label>Email <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="email" id="email" value="<?php echo e(old('email')); ?>">
                </div>                
                <div class="form-group">
                  <label>Role</label>
                  <select class="form-control" name="role" id="role">      
                    <option value="" >--Chọn role--</option>                       
                    <option value="1" <?php echo e(old('role') == 1 ? "selected" : ""); ?>>Editor</option>                  
                    <?php if(Auth::user()->role == 3): ?>
                    <option value="2" <?php echo e(old('role') == 2 ? "selected" : ""); ?>>Mod</option> 
                    <option value="3" <?php echo e(old('role') == 3 ? "selected" : ""); ?>>Admin</option>                  
                    <?php endif; ?>
                  </select>
                </div> 
                <?php if(Auth::user()->role == 3): ?>
                <div class="form-group" style="display:none" id="chon_mod">
                  <label>Mod</label>
                  <select class="form-control" name="leader_id" id="leader_id">
                    <option value="">--Chọn Mod--</option>
                    <?php if($modList): ?>
                      <?php foreach($modList as $mod): ?>
                    <option value="<?php echo e($mod->id); ?>"><?php echo e($mod->full_name); ?></option> 
                      <?php endforeach; ?>
                    <?php endif; ?>                                
                  </select>
                </div> 
                <?php endif; ?>                           
                <div class="form-group">
                  <label>Trạng thái</label>
                  <select class="form-control" name="status" id="status">                                      
                    <option value="1" <?php echo e(old('status') == 1 || old('status') == NULL ? "selected" : ""); ?>>Mở</option>                  
                    <option value="2" <?php echo e(old('status') == 2 ? "selected" : ""); ?>>Khóa</option>                  
                  </select>
                </div>
            </div>
            <div class="box-footer">
              <button type="button" class="btn btn-default btn-sm" id="btnLoading" style="display:none"><i class="fa fa-spin fa-spinner"></i></button>
              <button type="submit" class="btn btn-primary btn-sm" id="btnSave">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="<?php echo e(route('account.index')); ?>">Hủy</a>
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
      <?php if(Auth::user()->role == 3): ?>
      $('#role').change(function(){
        if($(this).val() == 1){
          $('#chon_mod').show();
        }else{
          $('#chon_mod').hide();
        }
      });
      <?php endif; ?>
    });
    
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>