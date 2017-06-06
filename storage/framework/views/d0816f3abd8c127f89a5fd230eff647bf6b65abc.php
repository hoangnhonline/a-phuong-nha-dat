<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Tin ký gửi
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="<?php echo e(route( 'product.index' )); ?>">Tin ký gửi</a></li>
    <li class="active">Danh sách</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <?php if(Session::has('message')): ?>
      <p class="alert alert-info" ><?php echo e(Session::get('message')); ?></p>
      <?php endif; ?>
      <a href="<?php echo e(route('product.create', ['estate_type_id' => $arrSearch['estate_type_id'], 'type' => $arrSearch['type']])); ?>" class="btn btn-info btn-sm" style="margin-bottom:5px">Tạo mới</a>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Bộ lọc</h3>
        </div>
        <div class="panel-body">
          <form class="form-inline" id="searchForm" role="form" method="GET" action="<?php echo e(route('product.kygui')); ?>">            
            <div class="form-group">              
              <select class="form-control" name="type" id="type">
                  <option value="">--Loại--</option>
                  <option value="1" <?php echo e($arrSearch['type'] == 1 ? "selected" : ""); ?>>Bán</option>
                  <option value="2" <?php echo e($arrSearch['type'] == 2 ? "selected" : ""); ?>>Cho thuê</option>
              </select>
            </div>
            <div class="form-group">              
              <select class="form-control" name="cart_status" id="cart_status">
                  <option value="">--Trạng thái--</option>
                  <option value="1" <?php echo e($arrSearch['cart_status'] == 1 ? "selected" : ""); ?>>
                    <?php echo e($arrSearch['type'] == 1 ? "Chưa bán" : "Còn trống"); ?>

                  </option>
                  <option value="2" <?php echo e($arrSearch['cart_status'] == 2 ? "selected" : ""); ?>>
                    <?php echo e($arrSearch['type'] == 1 ? "Đã bán" : "Đã thuê"); ?>

                  </option>
              </select>
            </div>
              <div class="form-group">
              <select class="form-control" name="estate_type_id" id="estate_type_id">
                <option value="">--Danh mục--</option>
                <?php foreach( $estateTypeArr as $value ): ?>
                  <option value="<?php echo e($value->id); ?>"
                  <?php echo e($arrSearch['estate_type_id'] == $value->id ? "selected" : ""); ?>                          

                  ><?php echo e($value->name); ?></option>
                  <?php endforeach; ?>
              </select>
            </div>
            <div class="form-group">              
              <select class="form-control" name="district_id" id="district_id">
                <option value="">--Quận--</option>
                  <?php foreach( $districtList as $value ): ?>
                    <option value="<?php echo e($value->id); ?>"
                    <?php echo e($arrSearch['district_id'] == $value->id ? "selected" : ""); ?>                        

                    ><?php echo e($value->name); ?></option>
                    <?php endforeach; ?>
              </select>
            </div>
            <div class="form-group">              
              <select class="form-control" name="ward_id" id="ward_id">
                <option value="">--Phường--</option>
                  <?php foreach( $wardList as $value ): ?>
                  <option value="<?php echo e($value->id); ?>"
                  <?php echo e($arrSearch['ward_id'] == $value->id ? "selected" : ""); ?>                       

                  ><?php echo e($value->name); ?></option>
                  <?php endforeach; ?>
              </select>
            </div>
            <div class="form-group">              
              <input type="text" placeholder="Tiêu đề" class="form-control" name="name" value="<?php echo e($arrSearch['name']); ?>">
            </div>           
            
            <button type="submit" class="btn btn-primary btn-sm">Lọc</button>
          </form>         
        </div>
      </div>
      
      <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">Danh sách ( <?php echo e($items->total()); ?> sản phẩm )</h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          <div style="text-align:center">
           <?php echo e($items->appends( $arrSearch )->links()); ?>

          </div>  
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>
              <th width="100px">Hình ảnh</th>
              <th style="text-align:center">Thông tin sản phẩm</th>
              <th width="120px">Trạng thái</th>                              
              <th width="1%;white-space:nowrap">Thao tác</th>
            </tr>
            <tbody>
            <?php if( $items->count() > 0 ): ?>
              <?php $i = 0; ?>
              <?php foreach( $items as $item ): ?>
                <?php $i ++; 

                ?>
              <tr id="row-<?php echo e($item->id); ?>">
                <td><span class="order"><?php echo e($i); ?></span></td>
                
                <td>
                  <img class="img-thumbnail lazy" width="80" data-original="<?php echo e($item->image_urls ? Helper::showImage($item->image_urls) : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="Nổi bật" title="Nổi bật" />
                </td>
                <td>                  
                  <a style="color:<?php echo e($item->cart_status == 1 ? "#444" : "red"); ?>;font-weight:bold" href="<?php echo e(route( 'product.edit', [ 'id' => $item->id ])); ?>"><?php echo e($item->title); ?></a> <br />
                  <strong style="color:#337ab7;font-style:italic"> <?php echo e(Helper::getName($item->estate_type_id, 'estate_type')); ?></strong>
                  <p>
                    <?php if($item->street_id > 0): ?>
                    <?php echo e(Helper::getName($item->street_id, 'street')); ?>,&nbsp;
                    <?php endif; ?>
                    <?php if($item->ward_id > 0): ?>
                    <?php echo e(Helper::getName($item->ward_id, 'ward')); ?>,&nbsp;
                    <?php endif; ?>
                    <?php if($item->district_id > 0): ?>
                    <?php echo e(Helper::getName($item->district_id, 'district')); ?>,&nbsp;
                    <?php endif; ?>
                    <?php if($item->city_id > 0): ?>
                    <?php echo e(Helper::getName($item->city_id, 'city')); ?>

                    <?php endif; ?>

                  </p>
                 <p style="margin-top:10px">
                    
                    <b style="color:red">                  
                    <?php echo e(($item->price)); ?> <?php echo e(Helper::getName($item->price_unit_id, 'price_unit')); ?>

                   </b>                    
                  </p>
                  
                </td>
                <td>                
                  <?php if($item->type == 1): ?>
                    <?php echo e($item->cart_status == 1 ? "Chưa bán" : "Đã bán"); ?>                  
                  <?php else: ?>
                    <?php echo e($item->cart_status == 1 ? "Còn trống" : "Đã thuê"); ?>

                  <?php endif; ?>
                </td>
                <td style="white-space:nowrap; text-align:right">
                  <a class="btn btn-default btn-sm" href="<?php echo e(route('chi-tiet', [$item->slug_loai, $item->slug, $item->id] )); ?>" target="_blank"><i class="fa fa-eye" aria-hidden="true"></i> Xem</a>
                  
                  
                  <a href="<?php echo e(route( 'product.edit', [ 'id' => $item->id ])); ?>" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>                 

                  <a onclick="return callDelete('<?php echo e($item->name); ?>','<?php echo e(route( 'product.destroy', [ 'id' => $item->id ])); ?>');" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>

                </td>
              </tr> 
              <?php endforeach; ?>
            <?php else: ?>
            <tr>
              <td colspan="9">Không có dữ liệu.</td>
            </tr>
            <?php endif; ?>

          </tbody>
          </table>
          <div style="text-align:center">
           <?php echo e($items->appends( $arrSearch )->links()); ?>

          </div>  
        </div>        
      </div>
      <!-- /.box -->     
    </div>
    <!-- /.col -->  
  </div> 
</section>
<!-- /.content -->
</div>
<style type="text/css">
#searchForm div{
  margin-right: 7px;
}
</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('javascript_page'); ?>
<script type="text/javascript">
function callDelete(name, url){  
  swal({
    title: 'Bạn muốn xóa "' + name +'"?',
    text: "Dữ liệu sẽ không thể phục hồi.",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Yes'
  }).then(function() {
    location.href= url;
  })
  return flag;
}
$(document).ready(function(){
  $('input.submitForm').click(function(){
    var obj = $(this);
    if(obj.prop('checked') == true){
      obj.val(1);      
    }else{
      obj.val(0);
    } 
    obj.parent().parent().parent().submit(); 
  });
  
  $('#estate_type_id, #type, #district_id, #ward_id, #cart_status').change(function(){    
    $('#searchForm').submit();
  });  
  $('#table-list-data tbody').sortable({
        placeholder: 'placeholder',
        handle: ".move",
        start: function (event, ui) {
                ui.item.toggleClass("highlight");
        },
        stop: function (event, ui) {
                ui.item.toggleClass("highlight");
        },          
        axis: "y",
        update: function() {
            var rows = $('#table-list-data tbody tr');
            var strOrder = '';
            var strTemp = '';
            for (var i=0; i<rows.length; i++) {
                strTemp = rows[i].id;
                strOrder += strTemp.replace('row-','') + ";";
            }     
            updateOrder("san_pham", strOrder);
        }
    });
});
function updateOrder(table, strOrder){
  $.ajax({
      url: $('#route_update_order').val(),
      type: "POST",
      async: false,
      data: {          
          str_order : strOrder,
          table : table
      },
      success: function(data){
          var countRow = $('#table-list-data tbody tr span.order').length;
          for(var i = 0 ; i < countRow ; i ++ ){
              $('span.order').eq(i).html(i+1);
          }                        
      }
  });
}
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>