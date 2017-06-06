<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Sản phẩm    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="<?php echo e(route('product.index')); ?>">Sản phẩm</a></li>
      <li class="active"><span class="glyphicon glyphicon-pencil"></span></li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="<?php echo e(route('product.index', ['estate_type_id' => $detail->estate_type_id, 'cate_id' => $detail->cate_id])); ?>" style="margin-bottom:5px">Quay lại</a>
    <a class="btn btn-primary btn-sm" href="<?php echo e(route('chi-tiet', [$detailEstate->slug, $detail->slug, $detail->id] )); ?>" target="_blank" style="margin-top:-6px"><i class="fa fa-eye" aria-hidden="true"></i> Xem</a>
    <form role="form" method="POST" action="<?php echo e(route('product.update')); ?>" id="dataForm">
    <div class="row">
      <!-- left column -->
      <input type="hidden" name="id" value="<?php echo e($detail->id); ?>">
      <div class="col-md-8">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            Chỉnh sửa
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
                <div>

                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Thông tin chi tiết</a></li>
                    <li role="presentation"><a href="#lien-he" aria-controls="tien-ich" role="tab" data-toggle="tab">Thông tin liên hệ</a></li>
                    <li role="presentation"><a href="#tien-ich" aria-controls="tien-ich" role="tab" data-toggle="tab">Tiện ích</a></li>
                    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Hình ảnh</a></li>                    
                                    
                  </ul>
<input type="hidden" id="editor" value="description">
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                      <div class="form-group col-md-6  pleft-5">
                          <label for="email">Loại <span class="red-star">*</span></label>
                            <select class="form-control" name="type" id="type">
                                <option value="1" <?php echo e(old('type', $detail->type) == 1 ? "selected" : ""); ?>>Bán</option>
                                <option value="2" <?php echo e(old('type', $detail->type) == 2 ? "selected" : ""); ?>>Cho thuê</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6 none-padding">
                          <label for="email">Danh mục<span class="red-star">*</span></label>
                          <select class="form-control" name="estate_type_id" id="estate_type_id">
                            <option value="">--Chọn--</option>
                            <?php foreach( $estateTypeArr as $value ): ?>
                            <option value="<?php echo e($value->id); ?>"
                            <?php echo e(old('estate_type_id', $detail->estate_type_id) == $value->id ? "selected" : ""); ?>                           

                            ><?php echo e($value->name); ?></option>
                            <?php endforeach; ?>
                          </select>
                        </div>
                        <div class="form-group col-md-6  pleft-5">
                          <label for="email">Quận <span class="red-star">*</span></label>
                            <select class="form-control" name="district_id" id="district_id">
                                <?php foreach( $districtList as $value ): ?>
                                <option value="<?php echo e($value->id); ?>"
                                <?php echo e(old('district_id', $detail->district_id) == $value->id ? "selected" : ""); ?>                           

                                ><?php echo e($value->name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group col-md-6 none-padding">
                          <label for="email">Phường <span class="red-star">*</span></label>
                          <select class="form-control" name="ward_id" id="ward_id">
                            <option value="">--Chọn--</option>
                            <?php foreach( $wardList as $value ): ?>
                            <option value="<?php echo e($value->id); ?>"
                            <?php echo e(old('ward_id', $detail->ward_id) == $value->id ? "selected" : ""); ?>                           

                            ><?php echo e($value->name); ?></option>
                            <?php endforeach; ?>
                          </select>
                        </div>
                        <div class="form-group col-md-6  pleft-5">
                          <label for="email">Đường <span class="red-star">*</span></label>
                            <select class="form-control" name="street_id" id="street_id">
                                <?php foreach( $streetList as $value ): ?>
                                <option value="<?php echo e($value->id); ?>"
                                <?php echo e(old('street_id', $detail->street_id) == $value->id ? "selected" : ""); ?>                           

                                ><?php echo e($value->name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group col-md-6 none-padding">
                          <label for="email">Dự án</label>
                          <select class="form-control" name="project_id" id="project_id">
                            <option value="">--Chọn--</option>
                            <?php foreach( $projectList as $value ): ?>
                            <option value="<?php echo e($value->id); ?>"
                            <?php echo e(old('project_id', $detail->project_id) == $value->id ? "selected" : ""); ?>

                            ><?php echo e($value->name); ?></option>
                            <?php endforeach; ?>
                          </select>
                        </div>
                        <div class="form-group" >                  
                          <label>Tên <span class="red-star">*</span></label>
                          <input type="text" class="form-control" name="title" id="title" value="<?php echo e(old('title', $detail->title)); ?>">
                        </div>
                        <div class="form-group">                  
                          <label>Slug <span class="red-star">*</span></label>                  
                          <input type="text" class="form-control" name="slug" id="slug" value="<?php echo e(old('slug', $detail->slug)); ?>">
                        </div>
                        <div class="form-group col-md-6  pleft-5" >                  
                            <label>Giá<span class="red-star">*</span></label>
                            <input type="text" class="form-control" name="price" id="price" value="<?php echo e(old('price', $detail->price)); ?>">
                        </div>
                        <div class="form-group col-md-6 none-padding" >                  
                            <label>Đơn vị giá<span class="red-star">*</span></label>
                            <select class="form-control" name="price_unit_id" id="price_unit_id">
                              <option value="">--Chọn--</option>
                              <?php foreach( $priceUnitList as $value ): ?>
                              <option value="<?php echo e($value->id); ?>"
                              <?php echo e(old('price_unit_id', $detail->price_unit_id) == $value->id ? "selected" : ""); ?>                           

                              ><?php echo e($value->name); ?></option>
                              <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group col-md-6  pleft-5">
                          <label for="email">Khoảng giá<span class="red-star">*</span></label>
                            <select class="form-control" name="price_id" id="price_id">
                              <option value="">--Chọn--</option>
                                <?php foreach( $priceList as $value ): ?>
                                <option value="<?php echo e($value->id); ?>"
                                <?php echo e(old('price_id', $detail->price_id) == $value->id ? "selected" : ""); ?>

                                ><?php echo e($value->name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group col-md-6 none-padding">
                          <label for="email">Khoảng diện tích<span class="red-star">*</span></label>
                          <select class="form-control" name="area_id" id="area_id">
                            <option value="">--Chọn--</option>
                            <?php foreach( $areaList as $value ): ?>
                            <option value="<?php echo e($value->id); ?>"
                            <?php echo e(old('area_id', $detail->area_id) == $value->id ? "selected" : ""); ?>

                            ><?php echo e($value->name); ?></option>
                            <?php endforeach; ?>
                          </select>
                        </div>
                        <div class="form-group col-md-12 none-padding">
                            <label>Địa chỉ</label>
                             <input type="text" class="form-control" name="full_address" id="full_address" value="<?php echo e(old('full_address', $detail->full_address)); ?>">  
                        </div>
                        <div class="form-group col-md-4 none-padding">
                          <label>Diện tích <span class="red-star">*</span></label>                  
                          <input type="text" class="form-control" name="area" id="area" value="<?php echo e(old('area', $detail->area)); ?>">                        
                        </div>
                        
                        <div class=" form-group col-md-4 none-padding pleft-5">
                          <label>Mặt tiền</label>                  
                          <input type="text" class="form-control" name="front_face" id="front_face" value="<?php echo e(old('front_face', $detail->front_face)); ?>">                        
                        </div>
                        <div class="form-group col-md-4 none-padding pleft-5">
                          <label>Đường trước nhà</label>                  
                          <input type="text" class="form-control" name="street_wide" id="street_wide" value="<?php echo e(old('street_wide', $detail->street_wide)); ?>">                        
                        </div>
                        <div class="form-group col-md-3 none-padding pleft-5">
                          <label>Số tầng</label>                  
                          <input type="text" class="form-control" name="no_floor" id="no_floor" value="<?php echo e(old('no_floor', $detail->no_floor)); ?>">                        
                        </div>
                        <div class="form-group col-md-3 none-padding pleft-5">
                          <label>Số phòng</label>                  
                          <input type="text" class="form-control" name="no_room" id="no_room" value="<?php echo e(old('no_room', $detail->no_room)); ?>">                        
                        </div>
                        <div class="form-group col-md-3 none-padding pleft-5">
                          <label>Số WC</label>                  
                          <input type="text" class="form-control" name="no_wc" id="no_wc" value="<?php echo e(old('no_wc', $detail->no_wc)); ?>">                        
                        </div>
                        <div class="form-group col-md-3 none-padding pleft-5">
                          <label>Hướng</label>                  
                          <select class="form-control" name="direction_id" id="direction_id">
                            <?php if( $directionArr->count() > 0): ?>
                              <?php foreach( $directionArr as $value ): ?>
                              <option value="<?php echo e($value->id); ?>" <?php echo e(old('direction_id', $detail->direction_id) == $value->id  ? "selected" : ""); ?>><?php echo e($value->name); ?></option>
                              <?php endforeach; ?>
                            <?php endif; ?>
                          </select>                       
                        </div>
                        <div class="form-group col-md-12">
                          <div class="checkbox">
                            <label style="color:red; font-weight:bold">
                              <input type="checkbox" name="is_hot" value="1" <?php echo e(old('is_hot', $detail->is_hot) == 1 ? "checked" : ""); ?>>
                              Tin HOT
                            </label>
                          </div>               
                        </div>
                        <div class="form-group col-md-4 none-padding" >
                            <div class="checkbox">
                              <label>
                                <input type="radio" name="cart_status" value="1" <?php echo e(old('cart_status', $detail->cart_status) == 1 || old('cart_status', $detail->cart_status) == NULL ? "checked" : ""); ?>>
                                <?php echo e($detail->type == 1 ? "Chưa bán" : "Còn trống"); ?>

                              </label>
                            </div>
                        </div>
                        <div class="form-group col-md-4 none-padding" >
                            <div class="checkbox">
                              <label>
                                <input type="radio" name="cart_status" value="2" <?php echo e(old('cart_status', $detail->cart_status) == 2 ? "checked" : ""); ?>>
                                <?php echo e($detail->type == 1 ? "Đã bán" : "Đã thuê"); ?>

                              </label>
                            </div>
                        </div>
                        <div class="form-group col-md-4 none-padding" >
                            <div class="checkbox">
                              <label>
                                <input type="radio" name="cart_status" value="3" <?php echo e(old('cart_status', $detail->cart_status) == 3 ? "checked" : ""); ?>>
                                Đã cọc
                              </label>
                            </div>
                        </div>
                        
                        <?php if($detail->status == 2): ?>
                        <div class="form-group col-md-4 none-padding" >
                            <div class="checkbox">
                              <label>
                                <input type="radio" name="status" value="2" <?php echo e(old('status', $detail->status) == 2 ? "checked" : ""); ?>>
                                Chưa duyệt
                              </label>
                            </div>
                        </div> 
                        <div class="form-group col-md-4 none-padding" >
                            <div class="checkbox">
                              <label>
                                <input type="radio" name="status" value="1" <?php echo e(old('status', $detail->status) == 1 ? "checked" : ""); ?>>
                                Đã duyệt
                              </label>
                            </div>
                        </div>                        
                        <div class="form-group col-md-4 none-padding" ></div> 
                        <div class="clearfix"></div>                      
                        <?php endif; ?>
                        <div class="input-group">
                          <label>Tags</label>
                          <select class="form-control select2" name="tags[]" id="tags" multiple="multiple">                  
                            <?php if( $tagArr->count() > 0): ?>
                              <?php foreach( $tagArr as $value ): ?>
                              <option value="<?php echo e($value->id); ?>" <?php echo e(in_array($value->id, $tagSelected) || (old('tags') && in_array($value->id, old('tags'))) ? "selected" : ""); ?>><?php echo e($value->name); ?></option>
                              <?php endforeach; ?>
                            <?php endif; ?>
                          </select>
                          <span class="input-group-btn">
                            <button style="margin-top:24px" class="btn btn-primary btn-sm" id="btnAddTag" type="button" data-value="3">
                              Tạo mới
                            </button>
                          </span>
                        </div>
                        <div class="form-group form-group col-md-12 none-padding" style="margin-top:10px">
                            <label>Mô tả</label>
                            <textarea class="form-control" rows="4" name="description" id="description"><?php echo e(old('description', $detail->description)); ?></textarea>
                          </div>
                          <div class="clearfix"></div>

                            <div class="form-group" style="margin-top:10px;margin-bottom:10px"> 
                              <input id="pac-input" class="controls" type="text" placeholder="Nhập địa chỉ để tìm kiếm">
                              <div id="map-abc"></div>
                          </div>
                            <div class="clearfix"></div>
                    </div><!--end thong tin co ban--> 
                    <div role="tabpanel" class="tab-pane" id="lien-he">
                        <div class="form-group col-md-6 " >                  
                            <label>Họ tên <span class="red-star">*</span></label>
                            <input type="text" class="form-control" name="contact_name" id="contact_name" value="<?php echo e(old('contact_name', $detail->contact_name)); ?>">
                        </div>
                        <div class="form-group col-md-6 none-padding pleft-5" >                  
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" name="contact_address" id="contact_address" value="<?php echo e(old('contact_address', $detail->contact_address)); ?>">
                        </div>                        
                        <div class="form-group col-md-6 " >                  
                            <label>Điện thoại</label>
                            <input type="text" class="form-control" name="contact_phone" id="contact_phone" value="<?php echo e(old('contact_phone', $detail->contact_phone)); ?>">
                        </div>
                        <div class="form-group col-md-6 none-padding pleft-5" >                  
                            <label>Di động <span class="red-star">*</span></label>
                            <input type="text" class="form-control" name="contact_mobile" id="contact_mobile" value="<?php echo e(old('contact_mobile', $detail->contact_mobile)); ?>">
                        </div>
                        <div class="form-group col-md-12 " >                  
                            <label>Email</label>
                            <input type="text" class="form-control" name="contact_email" id="contact_email" value="<?php echo e(old('contact_email', $detail->contact_email)); ?>">
                        </div>
                        <div class="clearfix"></div>
                     </div><!--end lien he -->                       
                      <div role="tabpanel" class="tab-pane" id="tien-ich">
                        <div class="form-group" style="margin-top:10px;margin-bottom:10px" id="load-tien-ich"> 
                              <?php if($tienIchLists): ?>
                                <?php $i_ti = 0; ?>
                                <?php foreach($tienIchLists as $ti): ?>
                                <?php $i_ti++; ?>
                                <div class="col-md-4">
                                  <input type="checkbox" value="<?php echo e($ti->id); ?>" <?php echo e(in_array($ti->id, $tienIchSelected) || (old('tien_ich') && in_array($value->id, old('tien_ich'))) ? "checked" : ""); ?> name="tien_ich[]" id="tien_ich_<?php echo e($i_ti); ?>"> 
                                  <label style="cursor:poiter;text-transform:uppercase; font-weight:normal" for="tien_ich_<?php echo e($i_ti); ?>"><?php echo e($ti->name); ?></label>
                                </div>
                                <?php endforeach; ?> 
                              <?php else: ?>
                              <p>Chưa có tiện ích nào.</p>
                              <?php endif; ?>
                              <div class="clearfix"></div>
                        </div>

                     </div><!--end tien ich-->
                     <div role="tabpanel" class="tab-pane" id="settings">
                        <div class="form-group" style="margin-top:10px;margin-bottom:10px">  
                         
                          <div class="col-md-12" style="text-align:center">                            
                            
                            <input type="file" id="file-image"  style="display:none" multiple/>
                         
                            <button class="btn btn-primary btn-sm" id="btnUploadImage" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                            <div class="clearfix"></div>
                            <div id="div-image" style="margin-top:10px">                              
                              <?php if( $hinhArr ): ?>
                                <?php foreach( $hinhArr as $k => $hinh): ?>
                                  <div class="col-md-3">
                                    <img class="img-thumbnail" src="<?php echo e(Helper::showImage($hinh)); ?>" style="width:100%">
                                    <div class="checkbox">                                   
                                      <label><input type="radio" name="thumbnail_id" class="thumb" value="<?php echo e($k); ?>" <?php echo e($detail->thumbnail_id == $k ? "checked" : ""); ?>> Ảnh đại diện </label>
                                      <button class="btn btn-danger btn-sm remove-image" type="button" data-value="<?php echo e($hinh); ?>" data-id="<?php echo e($k); ?>" ><span class="glyphicon glyphicon-trash"></span></button>
                                    </div>
                                    <input type="hidden" name="image_id[]" value="<?php echo e($k); ?>">
                                  </div>
                                <?php endforeach; ?>
                              <?php endif; ?>

                            </div>
                          </div>
                          <div style="clear:both"></div>
                        </div>

                     </div><!--end hinh anh-->                    
                  </div>

                </div>
                  
            </div>
            <div class="box-footer">
              <input type="hidden" name="latt" id="latt" value="<?php echo e(old('latt', $detail->latt)); ?>" />
              <input type="hidden" name="longt" id="longt" value="<?php echo e(old('longt', $detail->longt)); ?>" />
              <button type="button" class="btn btn-default btn-sm" id="btnLoading" style="display:none"><i class="fa fa-spin fa-spinner"></i></button>
              <button type="submit" class="btn btn-primary btn-sm" id="btnSave">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="<?php echo e(route('product.index', ['estate_type_id' => $detail->estate_type_id])); ?>">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">      
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>

          <!-- /.box-header -->
            <div class="box-body">
              <input type="hidden" name="meta_id" value="<?php echo e($detail->meta_id); ?>">
              <div class="form-group">
                <label>Meta title </label>
                <input type="text" class="form-control" name="meta_title" id="meta_title" value="<?php echo e(!empty((array)$meta) ? $meta->title : ""); ?>">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption</label>
                <textarea class="form-control" rows="6" name="meta_description" id="meta_description"><?php echo e(!empty((array)$meta) ? $meta->description : ""); ?></textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords</label>
                <textarea class="form-control" rows="4" name="meta_keywords" id="meta_keywords"><?php echo e(!empty((array)$meta) ? $meta->keywords : ""); ?></textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="6" name="custom_text" id="custom_text"><?php echo e(!empty((array)$meta) ? $meta->custom_text : ""); ?></textarea>
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

<style type="text/css">
  .nav-tabs>li.active>a{
    color:#FFF !important;
    background-color: #3C8DBC !important;
  }

</style>
<style>
      #map-canvas, #map_canvas {
        height: 350px;
        width:100%;
    }

    @media  print {
        html, body {
            height: auto;
        }

        #map-canvas, #map_canvas {
            height: 350px;
            width:100%;
        }
    }

    #panel {
        position: absolute;
        left: 60%;
        margin-left: -100px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
    }
    input {
        border: 1px solid  rgba(0, 0, 0, 0.5);
    }
    input.notfound {
        border: 2px solid  rgba(255, 0, 0, 0.4);
    }
</style>
<!-- Modal -->
<div id="tagModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
    <form method="POST" action="<?php echo e(route('tag.ajax-save')); ?>" id="formAjaxTag">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tạo mới tag</h4>
      </div>
      <div class="modal-body" id="contentTag">
          <input type="hidden" name="type" value="1">
           <!-- text input -->
          <div class="col-md-12">
            <div class="form-group">
              <label>Tags<span class="red-star">*</span></label>
              <textarea class="form-control" name="str_tag" id="str_tag" rows="4" ><?php echo e(old('str_tag')); ?></textarea>
            </div>
            
          </div>
          <div classs="clearfix"></div>
      </div>
      <div style="clear:both"></div>
      <div class="modal-footer" style="text-align:center">
        <button type="button" class="btn btn-primary btn-sm" id="btnSaveTagAjax"> Save</button>
        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal" id="btnCloseModalTag">Close</button>
      </div>
      </form>
    </div>

  </div>
</div>
<input type="hidden" id="route_upload_tmp_image_multiple" value="<?php echo e(route('image.tmp-upload-multiple')); ?>">
<input type="hidden" id="route_upload_tmp_image" value="<?php echo e(route('image.tmp-upload')); ?>">
 <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map-abc {
        height: 400px;
      }
    

      #infowindow-content .title {
        font-weight: bold;
      }

      #infowindow-content {
        display: none;
      }

      #map-abc #infowindow-content {
        display: inline;
      }

      .pac-card {
        margin: 10px 10px 0 0;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        background-color: #fff;
        font-family: Roboto;
      }

      #pac-container {
        padding-bottom: 12px;
        margin-right: 12px;
      }

      .pac-controls {
        display: inline-block;
        padding: 5px 11px;
      }

      .pac-controls label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

      #pac-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
      }

      #pac-input:focus {
        border-color: #4d90fe;
      }     
      
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript_page'); ?>
<script>
      // This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      <?php 
      $latt = $detail->latt ? $detail->latt : '10.7860332';
      $longt = $detail->longt ? $detail->longt : '106.6950147';      
      ?>
      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map-abc'), {
          center: {lat: <?php echo e($latt); ?>, lng: <?php echo e($longt); ?> },
          zoom: 17,
          mapTypeId: 'roadmap'
        });

        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
           var marker = new google.maps.Marker({
              position: new google.maps.LatLng(<?php echo e($latt); ?>, <?php echo e($longt); ?>),
              map: map,
              draggable:true
            });
           google.maps.event.addListener(marker,'dragend',function(event) {
                document.getElementById('latt').value = this.position.lat();
                document.getElementById('longt').value = this.position.lng();                
            });
        });

        var markers = [];       
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place, get the icon, name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            document.getElementById('latt').value = place.geometry.location.lat();
            document.getElementById('longt').value = place.geometry.location.lng();
            
            var icon = {
              url: place.icon,
              size: new google.maps.Size(128, 128),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: icon,
              title: place.name,
              draggable:true,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }

             // Clear out the old markers.
          markers.forEach(function(marker) {
            google.maps.event.addListener(marker,'dragend',function(event) {
                document.getElementById('latt').value = this.position.lat();
                document.getElementById('longt').value = this.position.lng();                
            });
          });
            
          });
          map.fitBounds(bounds);
        });
      }
    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhxs7FQ3DcyDm8Mt7nCGD05BjUskp_k7w&libraries=places&callback=initAutocomplete"
         async defer></script>
<script type="text/javascript">


$(document).ready(function(){
  
$('#pac-input').on('keypress', function(e) {
        return e.which !== 13;
    });
  $('#btnAddTag').click(function(){
      $('#tagModal').modal('show');
  });
});
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
            type : 1 ,
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
 $('#contentTag #name').change(function(){
       var name = $.trim( $(this).val() );
       if( name != '' && $('#contentTag #slug').val() == ''){
          $.ajax({
            url: $('#route_get_slug').val(),
            type: "POST",
            async: false,      
            data: {
              str : name
            },              
            success: function (response) {
              if( response.str ){                  
                $('#contentTag #slug').val( response.str );
              }                
            },
            error: function(response){                             
                var errors = response.responseJSON;
                for (var key in errors) {
                  
                }
                //$('#btnLoading').hide();
                //$('#btnSave').show();
            }
          });
       }
    });
$(document).on('click', '.remove-image', function(){
/*  var obj = $(this);
  var is_thumbnail = obj.parents('col-md-3').find("input[name=thumbnail_id]").is(":checked");
  console.log(is_thumbnail);
  */
  if( confirm ("Bạn có chắc chắn không ?")){
    $(this).parents('.col-md-3').remove();
  }
});

$(document).on('click', '#btnSearchAjax', function(){
  filterAjax($('#search_type').val());
});
$(document).on('keypress', '#name_search', function(e){
  if(e.which == 13) {
      e.preventDefault();
      filterAjax($('#search_type').val());
  }
});

    $(document).ready(function(){
     $('#district_id').change(function(){
         
            $.ajax({
              url: $('#route_get_tien_ich').val(),
              type: "GET",
              async: false,      
              data: {
                district_id : $(this).val()
              },              
              success: function (response) {
                $('#load-tien-ich').html(response)             
              }
            });

            var district_id = $(this).val();
          $.ajax({
            url : '<?php echo e(route('get-child')); ?>',
            data : {
              mod : 'ward',
              col : 'district_id',
              id : district_id
            },
            type : 'POST',
            dataType : 'html',
            success : function(data){
              $('#ward_id').html(data).selectpicker('refresh');
            }
          });

          $.ajax({
            url : '<?php echo e(route('get-child')); ?>',
            data : {
              mod : 'street',
              col : 'district_id',
              id : district_id
            },
            type : 'POST',
            dataType : 'html',
            success : function(data){
              $('#street_id').html(data).selectpicker('refresh');
            }
          });

          $.ajax({
            url : '<?php echo e(route('get-child')); ?>',
            data : {
              mod : 'project',
              col : 'district_id',
              id : district_id
            },
            type : 'POST',
            dataType : 'html',
            success : function(data){
              $('#project_id').html(data).selectpicker('refresh');
            }
          })
        
      });
      
      $('#type').change(function(){
        location.href="<?php echo e(route('product.create')); ?>?type=" + $(this).val();
      })
      $(".select2").select2();
      $('#dataForm').submit(function(){      
        $('#btnSave').hide();
        $('#btnLoading').show();
      });
    
      var editor3 = CKEDITOR.replace( 'description',{
          language : 'vi',
          height : 300,
          toolbarGroups : [
            
            { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
            { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
            { name: 'links', groups: [ 'links' ] },           
            '/',
            
          ]
      });
      $('#btnUploadImage').click(function(){        
        $('#file-image').click();
      }); 
     
      var files = "";
      $('#file-image').change(function(e){
         files = e.target.files;
         
         if(files != ''){
           var dataForm = new FormData();        
          $.each(files, function(key, value) {
             dataForm.append('file[]', value);
          });   
          
          dataForm.append('date_dir', 0);
          dataForm.append('folder', 'tmp');

          $.ajax({
            url: $('#route_upload_tmp_image_multiple').val(),
            type: "POST",
            async: false,      
            data: dataForm,
            processData: false,
            contentType: false,
            success: function (response) {
                $('#div-image').append(response);
                if( $('input.thumb:checked').length == 0){
                  $('input.thumb').eq(0).prop('checked', true);
                }
            },
            error: function(response){                             
                var errors = response.responseJSON;
                for (var key in errors) {
                  
                }
                //$('#btnLoading').hide();
                //$('#btnSave').show();
            }
          });
        }
      });
     

      $('#title').change(function(){
         var name = $.trim( $(this).val() );
         if( name != '' && $('#slug').val() == ''){
            $.ajax({
              url: $('#route_get_slug').val(),
              type: "POST",
              async: false,      
              data: {
                str : name
              },              
              success: function (response) {
                if( response.str ){                  
                  $('#slug').val( response.str );
                }                
              },
              error: function(response){                             
                  var errors = response.responseJSON;
                  for (var key in errors) {
                    
                  }
                  //$('#btnLoading').hide();
                  //$('#btnSave').show();
              }
            });
         }
      }); 
      
    });
    
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>