@extends('frontend.layout')

@section('header')
  
  
@endsection
@include('frontend.partials.meta')
@section('content')
<article class="block-breadcrumb-page">
    <ul class="breadcrumb"> 
        <li><a href="{{ route('home') }}" title="Trở về trang chủ">Trang chủ</a></li>            
        <li class="active">Ký gửi</li>
    </ul>
</article>
<section class="main" id="site-main">

	<section class="container">
		<section class="row">
			<!-- <section class="col-sm-3 col-xs-12 block-sitebar"> -->
				<!-- <article class="block-sidebar block-news-sidebar">
					<div class="block-title-common">
						<h3>
							<span class="icon-tile"><i class="fa fa-star"></i></span>
							<a href="#" title="">Hướng Dẫn Sử Dụng</a>
						</h3>
					</div>
					<div class="block-contents">
						<ul class="block-list-sidebar block-icon-title">
							<li><h4><a href="#" title="">Hướng dẫn đăng kí tài khoản</a></h4></li>
							<li><h4><a href="#" title="">Hướng dẫn quản lý tài khoản</a></h4></li>
							<li><h4><a href="#" title="">Hướng dẫn đăng tin</a></h4></li>
							<li><h4><a href="#" title="">Hướng dẫn nạp tiền</a></h4></li>
						</ul>
					</div>
				</article> --><!-- /block-news-sidebar -->
			<!-- </section> --><!-- /block-site-right -->

			<section class="block-sitemain">
				<article class="block-post-news">
					<div class="block-title-common">
						<h3>
							<span class="icon-tile"><i class="fa fa-star"></i></span>
							ĐĂNG TIN RAO BÁN, CHO THUÊ NHÀ ĐẤT
						</h3>
					</div>
					<div class="block-contents">
					@if(Session::has('message'))
	                <p class="alert alert-success block-alert-success" >{{ Session::get('message') }}</p>
	                @endif
					@if (count($errors) > 0)
                  		<div class="alert alert-danger block-alert-danger">
		                    <ul>
		                        @foreach ($errors->all() as $error)
		                            <li>{{ $error }}</li>
		                        @endforeach
		                    </ul>
	                  	</div>
	                @endif
						<div class="block-post-news">
							<h4 class="titile-post-news">THÔNG TIN CƠ BẢN</h4>
							<form method="POST" action="{{ route('post-ky-gui') }}" class="block-hover-selectpicker">
								{!! csrf_field() !!}
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-3 control-label" style="padding-top: 3px;">Loại tin <span>(*)</span>:</label>
										<div class="col-sm-9">
									  		<input type="radio" name="type" value="1" id="type_1" {{ old('type', $type) == 1 ? "checked" : "" }}>
									  		<label for="type_1">BĐS bán</label>
									  		&nbsp;&nbsp;&nbsp;
									  		<input type="radio" name="type" value="2" id="type_2" {{ old('type', $type) == 2 ? "checked" : "" }}>
									  		<label for="type_1">BĐS cho thuê</label>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Loại nhà đất <span>(*)</span>:</label>
										<div class="col-sm-4">
									  		<select class="selectpicker form-control" name="estate_type_id" id="estate_type_id">
												<option value="">-- Chọn Loại bất động sản --</option>
												@foreach( $estateTypeArr as $value )
					                            <option value="{{ $value->id }}"
					                            {{ old('estate_type_id') == $value->id ? "selected" : "" }}                           

					                            >{{ $value->name }}</option>
					                            @endforeach
											</select>
										</div>
									</div><!-- /form-group -->
									<div class="form-group mb0-w600">
										<label class="col-sm-3 control-label">Vị trí <span>(*)</span>:</label>
										<div class="col-sm-4 mb-600">
									  		<select class="selectpicker form-control" id="district_id" name="district_id">
									  			<option value="">Quận/Huyện</option>
												@foreach( $districtList as $value )
				                                <option value="{{ $value->id }}"
				                                {{ old('district_id', $district_id) == $value->id ? "selected" : "" }}                           

				                                >{{ $value->name }}</option>
				                                @endforeach
											</select>
										</div>
										<div class="col-sm-4">
									  		<select class="selectpicker form-control" id="ward_id" name="ward_id">
												<option class="option-lv0" selected="selected" value="">Phường/Xã</option>
												@foreach( $wardList as $value )
					                            <option value="{{ $value->id }}"
					                            {{ old('ward_id') == $value->id ? "selected" : "" }}                           

					                            >{{ $value->name }}</option>
					                            @endforeach
											</select>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label mb0"></label>
										<div class="col-sm-4 mb-600">
									  		<select class="selectpicker form-control" name="street_id" id="street_id">
												<option class="option-lv0" selected="selected" value="">Đường/Phố</option>
												@foreach( $streetList as $value )
				                                <option value="{{ $value->id }}"
				                                {{ old('street_id') == $value->id ? "selected" : "" }}                           

				                                >{{ $value->name }}</option>
				                                @endforeach
												</select>
											</select>
										</div>
										<div class="col-sm-4">
									  		<select class="selectpicker form-control" id="project_id" name="project_id">
												<option class="option-lv0" selected="selected" value="">Dự án</option>
												@foreach( $projectList as $value )
					                            <option value="{{ $value->id }}"
					                            {{ old('project_id') == $value->id ? "selected" : "" }}
					                            >{{ $value->name }}</option>
					                            @endforeach
											</select>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Giá <span>(*)</span>:</label>
										<div class="col-sm-4">
									  		<input type="text" name="price" class="form-control inline-block form-control2">
										</div>
										<div class="col-sm-4 w158 mt10">
											<span style="margin-right: 25px;">Đơn vị <span style="color:red">(*)</span>:</span>
											<select class="form-control selectpicker" name="price_unit_id" id="price_unit_id">
												<option value="" >--chọn--</option>
												@foreach( $priceUnitList as $value )
				                              <option value="{{ $value->id }}"
				                              {{ old('price_unit_id') == $value->id ? "selected" : "" }}

				                              >{{ $value->name }}</option>
				                              @endforeach
											</select>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Diện tích:</label>
										<div class="col-sm-4">
											<input type="text" name="area" class="form-control inline-block form-control2 form-control-res" style="width: 85%;">
											<span class="inline-block" style="margin: 8px 0 0 5px;">m2</span>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Địa điểm <span>(*)</span>:</label>
										<div class="col-sm-8">
											<input type="text" name="full_address" class="form-control inline-block form-control2">
										</div>
									</div><!-- /form-group -->

									<hr>

									<h4 class="titile-post-news">THÔNG TIN KHÁC</h4>
									<div class="form-group">
										<label class="col-sm-3 control-label">Mặt tiền:</label>
										<div class="col-sm-4 block-col-width-left">
									  		<input type="text" name="front_face" class="form-control inline-block form-control2 form-control-res">
									  		<span class="inline-block" style="margin: 8px 0 0 5px;">m</span>
										</div>
										<div class="col-sm-5 block-col-width-right">
											<span>Đường trước nhà:</span>
											<input type="text" name="street_wide" class="form-control inline-block form-control-res form-control2">
											<span class="inline-block" style="margin: 8px 0 0 1px;">m</span>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Số tầng:</label>
										<div class="col-sm-4 block-col-width-left">
									  		<input type="text" name="no_floor" class="form-control inline-block form-control2">
										</div>
										<div class="col-sm-5 block-col-width-right">
											<span>Số phòng:</span>
											<input type="text" name="no_room" class="form-control inline-block form-control2">
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Hướng BĐS:</label>
										<div class="col-sm-4 block-col-width-left">
									  		<select class="selectpicker form-control" id="direction_id" name="direction_id">
												<option value="" selected="selected">--chọn--</option>
												@if( $directionArr->count() > 0)
					                              @foreach( $directionArr as $value )
					                              <option value="{{ $value->id }}" {{ old('direction_id') == $value->id  ? "selected" : "" }}>{{ $value->name }}</option>
					                              @endforeach
					                            @endif
											</select>
										</div>
										<div class="col-sm-5 block-col-width-right">
											<span>Số toilet:</span>
											<input type="text" name="no_wc" class="form-control inline-block form-control2">
										</div>
									</div><!-- /form-group -->

									<hr>

									<h4 class="titile-post-news">MÔ TẢ CHI TIẾT</h4>
									<div class="form-group">
										<label class="col-sm-3 control-label">Tiêu đề <span>(*)</span>:</label>
										<div class="col-sm-8">
											<input type="text" class="form-control form-control2" placeholder="Vui lòng gõ tiếng Việt có dấu để tin đăng được kiểm duyệt nhanh hơn" name="title" id="title">
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Nội dung mô tả <span>(*)</span>:</label>
										<div class="col-sm-8">
											<textarea rows="5" class="form-control form-control2" name="description" id="description"></textarea>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Cập nhật hình ảnh:</label>
										<div class="col-sm-8" >
											<p class="text-red" style="padding-top: 12px; padding-bottom: 5px;">(Bạn có thể tải 16 ảnh và mỗi ảnh dung lượng không quá 4mb!)</p>


											<input type="file" id="file-image" class="inputfile inputfile-5" data-multiple-caption="{count} files selected" multiple="">
											<label for="file-image"></label>
											<div class="clearfix" style="margin-top:5px"></div>
											<div id="div-image" class="clearfix show-image">
												
												
											</div>
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Cập nhật Video:</label>
										<div class="col-sm-8">
											<p style="padding-top: 12px;">Nếu bạn có nhu cầu Upload video, hãy liên hệ với chúng tôi để được hỗ trợ</p>
										</div>
									</div><!-- /form-group -->

									<hr>
									<h4 class="titile-post-news">THÔNG TIN BẢN ĐỒ</h4>
									<div class="block-map">
										<input id="pac-input" class="controls" type="text" placeholder="Nhập địa chỉ để tìm kiếm">
                          				<div id="map-abc"></div>
									</div>
									<input type="hidden" name="longt" id="longt" value="" />
              						<input type="hidden" name="latt" id="latt" value="" />
									<hr>
									<h4 class="titile-post-news">THÔNG TIN LIÊN HỆ</h4>
									<div class="form-group">
										<label class="col-sm-3 control-label">Họ tên <span>(*)</span>:</label>
										<div class="col-sm-8">
											<input type="text" class="form-control form-control2" placeholder="" name="contact_name">
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Địa chỉ:</label>
										<div class="col-sm-8">
											<input type="text" class="form-control form-control2" placeholder="" name="contact_address">
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Điện thoại:</label>
										<div class="col-sm-8">
											<input type="text" class="form-control form-control2" placeholder="" name="contact_phone">
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Di động <span>(*)</span>:</label>
										<div class="col-sm-8">
											<input type="text" class="form-control form-control2" placeholder="" name="contact_mobile">
										</div>
									</div><!-- /form-group -->
									<div class="form-group">
										<label class="col-sm-3 control-label">Email:</label>
										<div class="col-sm-8">
											<input type="text" class="form-contro form-control2" placeholder="" name="contact_email">
										</div>
									</div><!-- /form-group -->
									<div class="form-group text-center">
										<!--<button type="button" class="btn btn-success"><i class="fa fa-eye"></i> XEM TRƯỚC</button>-->
										<button type="submit" class="btn btn-success"><i class="fa fa-check"></i> ĐĂNG TIN</button>
										<button type="button" onclick="location.href='{{ route('home') }}'" class="btn btn-primary"><i class="fa fa-times"></i> HỦY BỎ</button>
									</div><!-- /form-group -->
								</div>
							</form>
						</div>
					</div>
				</article><!-- /block-news-sidebar -->
			</section><!-- /block-site-left -->
		</section>
	</section>
</section><!-- /main -->
<input type="hidden" id="route_upload_tmp_image_multiple" value="{{ route('image.tmp-upload-multiple-fe') }}">
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
        border: 2px solid #45a44b;
        height: 30px;
      }

      #pac-input:focus {
        border-color: #4d90fe;
      }     
      
    </style>
@endsection
@section('javascript_page')
<script>
      // This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map-abc'), {
          center: {lat: 10.7860332, lng: 106.6950147},
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
              position: new google.maps.LatLng(10.7860332, 106.6950147),
              draggable:true,
              map: map            
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
	$(document).on('click', '.remove-image', function(){
  if( confirm ("Bạn có chắc chắn không ?")){
    $(this).parents('.register-avata').remove();
  }
});
$(document).ready(function() {

$('#pac-input').on('keypress', function(e) {
    return e.which !== 13;
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

});
</script>
@endsection
