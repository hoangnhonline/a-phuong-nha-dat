<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Bài viết dự án "<span style="color:red"><?php echo e($projectDetail->name); ?></span>"
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="<?php echo e(route('pro-content.index', ['project_id' => $project_id])); ?>">Bài viết</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="<?php echo e(route('pro-content.index', ['project_id' => $project_id])); ?>" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="<?php echo e(route('pro-content.store')); ?>">
    <div class="row">
      <!-- left column -->

      <div class="col-md-8">
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
                <div class="form-group">
                  <label for="email">Tab <span class="red-star">*</span></label>
                  <select class="form-control" name="tab_id" id="tab_id">
                    <option value="">-- chọn --</option>
                    <?php if( $tabList->count() > 0): ?>
                      <?php foreach( $tabList as $value ): ?>
                      <option value="<?php echo e($value->id); ?>" <?php echo e($value->id == old('tab_id') ? "selected" : ""); ?>><?php echo e($value->name); ?></option>
                      <?php endforeach; ?>
                    <?php endif; ?>
                  </select>
                </div>                           
                <input type="hidden" name="project_id" value="<?php echo e($project_id); ?>">
                <input type="hidden" name="cate_id" value="999">                
                <div class="form-group" >
                  
                  <label>Tiêu đề <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="title" id="title" value="<?php echo e(old('title')); ?>">
                </div>                                                            
                <div class="form-group">
                  <label>Nội dung</label>
                  <textarea class="form-control" rows="4" name="content" id="content"><?php echo e(old('content')); ?></textarea>
                </div>
                  <input type="hidden" id="editor" value="content">
            </div>                      
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="<?php echo e(route('pro-content.index')); ?>">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>
          <!-- /.box-header -->
            <div class="box-body">
              <div class="form-group">
                <label>Meta title </label>
                <input type="text" class="form-control" name="meta_title" id="meta_title" value="<?php echo e(old('meta_title')); ?>">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption</label>
                <textarea class="form-control" rows="4" name="meta_description" id="meta_description"><?php echo e(old('meta_description')); ?></textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords</label>
                <textarea class="form-control" rows="4" name="meta_keywords" id="meta_keywords"><?php echo e(old('meta_keywords')); ?></textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="4" name="custom_text" id="custom_text"><?php echo e(old('custom_text')); ?></textarea>
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
<input type="hidden" id="route_upload_tmp_image" value="<?php echo e(route('image.tmp-upload')); ?>">
<!-- Modal -->

<?php $__env->stopSection(); ?>
<?php $__env->startSection('javascript_page'); ?>
<script type="text/javascript">
$(document).on('click', '#btnSaveTagAjax', function(){
    $.ajax({
      url : $('#formAjaxTag').attr('action'),
      data: $('#formAjaxTag').serialize(),
      type : "post", 
      success : function(str_id){          
        $('#btnCloseModalTag').click();
        $.ajax({
          url : "<?php echo e(route('tag.ajax-list')); ?>",
          data: { 
            type : 2 ,
            tagSelected : $('#tags').val(),
            str_id : str_id
          },
          type : "get", 
          success : function(data){
              $('#tags').html(data);
              $('#tags').select2('refresh');
              
          }
        });
      }
    });
 }); 
$(document).ready(function(){
      $(".select2").select2();
      var editor = CKEDITOR.replace( 'content',{
          language : 'vi',
          filebrowserBrowseUrl: "<?php echo e(URL::asset('/backend/dist/js/kcfinder/browse.php?type=files')); ?>",
          filebrowserImageBrowseUrl: "<?php echo e(URL::asset('/backend/dist/js/kcfinder/browse.php?type=images')); ?>",
          filebrowserFlashBrowseUrl: "<?php echo e(URL::asset('/backend/dist/js/kcfinder/browse.php?type=flash')); ?>",
          filebrowserUploadUrl: "<?php echo e(URL::asset('/backend/dist/js/kcfinder/upload.php?type=files')); ?>",
          filebrowserImageUploadUrl: "<?php echo e(URL::asset('/backend/dist/js/kcfinder/upload.php?type=images')); ?>",
          filebrowserFlashUploadUrl: "<?php echo e(URL::asset('/backend/dist/js/kcfinder/upload.php?type=flash')); ?>",
          height : 500
      });
     
      
     
     });
    
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>