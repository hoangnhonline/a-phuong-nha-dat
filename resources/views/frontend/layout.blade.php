<!DOCTYPE html>
<!--[if lt IE 7 ]><html dir="ltr" lang="en-US" class="no-js ie ie6 lte7 lte8 lte9"><![endif]-->
<!--[if IE 7 ]><html dir="ltr" lang="en-US" class="no-js ie ie7 lte7 lte8 lte9"><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en-US" class="no-js ie ie8 lte8 lte9"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en-US" class="no-js ie ie9 lte9"><![endif]-->
<!--[if IE 10 ]><html dir="ltr" lang="en-US" class="no-js ie ie10 lte10"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="vi">
<!--<![endif]-->
<head>	
	<title>@yield('title')</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="robots" content="index,follow"/>
    <meta http-equiv="content-language" content="vi"/>
    <meta name="description" content="@yield('site_description')"/>
    <meta name="keywords" content="@yield('site_keywords')"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <link rel="shortcut icon" href="@yield('favicon')" type="image/x-icon"/>
    <link rel="canonical" href="{{ url()->current() }}"/>        
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="@yield('title')" />
    <meta property="og:description" content="@yield('site_description')" />
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:site_name" content="cahatvui.com" />
    <?php $socialImage = isset($socialImage) ? $socialImage : $settingArr['banner']; ?>
    <meta property="og:image" content="{{ Helper::showImage($socialImage) }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:description" content="@yield('site_description')" />
    <meta name="twitter:title" content="@yield('title')" />        
    <meta name="twitter:image" content="{{ Helper::showImage($socialImage) }}" />
	<link rel="icon" href="{{ URL::asset('assets/images/favicon.ico') }}" type="image/x-icon">
	<!-- ===== Style CSS Common ===== -->
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/css/style.css') }}">
	<!-- ===== Responsive CSS ===== -->
    <link href="{{ URL::asset('assets/css/responsive.css') }}" rel="stylesheet">
      <link rel="stylesheet" href="{{ URL::asset('backend/dist/css/sweetalert2.min.css') }}">  
    
    <!-- HTML5 Shim and Respond.js') }} IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js') }} doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<link href='{{ URL::asset('assets/css/animations-ie-fix.css') }}' rel='stylesheet'>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js') }}"></script>
		<script src="https://oss.maxcdn.com/libs/respond.{{ URL::asset('assets/js/1.4.2/respond.min.js') }}"></script>
	<![endif]-->
	<style type="text/css">
		.bootstrap-select>.dropdown-toggle.bs-placeholder, .bootstrap-select>.dropdown-toggle.bs-placeholder:active, .bootstrap-select>.dropdown-toggle.bs-placeholder:focus, .bootstrap-select>.dropdown-toggle.bs-placeholder:hover{
		color:#444 !important;
	}
		
	</style>
</head>
<body {{ \Request::route()->getName() == "home" ? 'class=page_home' : "" }}>
	
	<header id="header" class="header">
		<!-- <div class="header-register">
			<div class="container">
				<div class="logon">
		            <a href="/dang-nhap.htm" rel="nofollow" title="Đăng nhập">
		                <span>Đăng nhập</span>
		            </a>
		        </div>
		        <div class="register">
		            <a href="/dang-ky.htm" rel="nofollow" title="Đăng ký">
		                <span>Đăng ký</span>
		            </a>
		        </div>
		        <div id="pnBxh">
	          		<div class="bxh">
		                <a href="#" rel="nofollow" title="Banxehoi.com" target="_blank">
		                    <span>Banxehoi.com</span>
		                </a>
		            </div>
				</div>
			</div>
		</div> -->
		<div class="header-logo">
	        <div class="container">
	            <div class="logo">
	                <a href="{{ route('home') }}" title="Logo">
	                	<img src="{{ Helper::showImage($settingArr['logo']) }}" alt="Logo">	                   
	                </a>
	            </div>
	            <?php 
				$bannerArr = DB::table('banner')->where(['object_id' => 4, 'object_type' => 3])->orderBy('display_order', 'asc')->get();
				?>	           
	            <div class="banner_adv" id="Banner_tet" style="display: block;">	
	            <?php $i = 0; ?>
				@foreach($bannerArr as $banner)
					<?php $i++; ?>
	                @if($banner->ads_url !='')
					<a href="{{ $banner->ads_url }}">
					@endif
	                    <img src="{{ Helper::showImage($banner->image_url) }}" alt="Banner top {{ $i }}"></a>

	                 @if($banner->ads_url !='')
					</a>
					@endif

	            @endforeach
	            </div>
	        </div>
	    </div>
	</header><!-- /header -->

	<nav id="mainNav" class="navbar navbar-default navbar-custom fix-header">
        <div class="container" id="main-menu">
        	<!-- Brand and toggle get grouped for better mobile display -->
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	              <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>
	            </button>
			</div>

			@include('frontend.partials.home-menu')
        </div>
	</nav><!-- /navigation -->

	@yield('slider')
	
	@yield('search')

	<section class="main" id="site-main">
		<section class="container">
			<section class="row">
				
				@yield('content')
				@if(\Request::route()->getName() != "ky-gui" && \Request::route()->getName() != "ky-gui-thanh-cong")
				<section class="col-sm-4 col-xs-12 block-sitebar">
					@if(\Request::route()->getName() != "home" )
					<article class="block block-box-search">
						<div class="block-title">
						<?php $type = isset($type) ? $type : 1 ; ?>
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="{{ (isset($type) && $type == 1) ? "active" : "" }}"><a href="javascript:void(0)" data-type="1" aria-controls="bdsb" role="tab" data-toggle="tab">BDS BÁN</a></li>
    							<li role="presentation" class="{{ (isset($type) && $type == 2) ? "active" : "" }}"><a href="javascript:void(0)" data-type="2" aria-controls="bdsct" role="tab" data-toggle="tab">BDS CHO THUÊ</a></li>
							</ul>
						</div>
						<div class="block-contents">
						 	<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="bdsb">

									<form action="{{ route('search') }}" method="GET" accept-charset="utf-8" class="search-content-input selectpicker-cus block-hover-selectpicker">
								    	<input type="hidden" name="type" id="type" value="{{ isset($type) ? $type : 1 }}">
								    	<div class="row-select">
											<div class="form-group">
												<select class="selectpicker form-control" data-live-search="true" name="estate_type_id" id="estate_type_id">
													<option value="">Loại bất động sản</option>
													@foreach($banList as $ban)
													<option @if(isset($estate_type_id) && $estate_type_id == $ban->id) selected @endif class="option-lv1" value="{{ $ban->id }}">{{ $ban->name }}</option>
													@endforeach
												</select>
											</div>											
											<div class="form-group">
												<select class="selectpicker form-control" data-live-search="true" id="district_id" name="district_id">
													<option value="">Quận/Huyện</option>
													@foreach($districtList as $district)
													<option @if(isset($district_id) && $district_id == $district->id) selected @endif value="{{ $district->id }}">{{ $district->name }}</option>
													@endforeach
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" id="ward_id" name="ward_id" data-live-search="true">
													<option value="">Phường/Xã</option>
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" id="street_id" name="street_id" data-live-search="true">
													<option value="">Đường/Phố</option>
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" data-live-search="true" id="project_id" name="project_id">
													<option value="">Dự án</option>
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" data-live-search="true" name="price_id" id="price_id">
													<option value="">Mức giá</option>
													@foreach($priceList as $price)
													<option @if(isset($price_id) && $price_id == $price->id) selected @endif value="{{ $price->id }}">{{ $price->name }}</option>
													@endforeach
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" id="area_id" name="area_id" data-live-search="true">
													<option value="">Diện tích</option>
													@foreach($areaList as $area)
													<option @if(isset($area_id) && $area_id == $area->id) selected @endif value="{{ $area->id }}">{{ $area->name }}</option>
													@endforeach
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" data-live-search="true" name="direction_id">
													<option value="">Hướng nhà</option>
													@foreach($directionList as $dir)
													<option @if(isset($direction_id) && $direction_id == $dir->id) selected @endif value="{{ $dir->id }}">{{ $dir->name }}</option>
													@endforeach
												</select>
											</div>
											<div class="form-group">
												<select class="selectpicker form-control" data-live-search="true" name="no_room">
													<option value="">Số phòng ngủ</option>
													<option @if(isset($no_room) && $no_room == 1) selected @endif value="1">1+</option>
													<option @if(isset($no_room) && $no_room == 2) selected @endif value="2">2+</option>
													<option @if(isset($no_room) && $no_room == 3) selected @endif value="3">3+</option>
													<option @if(isset($no_room) && $no_room == 4) selected @endif value="4">4+</option>
													<option @if(isset($no_room) && $no_room == 5) selected @endif value="5">5+</option>
													<option @if(isset($no_room) && $no_room == 6) selected @endif value="6">6+</option>
												</select>
											</div>											
											<div class="form-group">
												<button type="submit" id="btnSearch" class="btn btn-success"><i class="fa fa-search"></i> Tìm Kiếm</button>
											</div>
										</div>
							    	</form>
								</div>								
							</div>
						</div>
					</article><!-- /block-box-search -->	
					@endif
					<article class="block-sidebar block-news-sidebar">
						<div class="block-title-common">
							<h3><span class="icon-tile"><i class="fa fa-star"></i></span> Tin xem nhiều</h3>
						</div>
						<div class="block-contents">
							<ul class="block-list-sidebar block-icon-title">
								@foreach($tinRandom as $tin)
		                      
		                      <li><h4><a href="{{ route('news-detail', ['slug' => $tin['slug'], 'id' => $tin['id']]) }}" title="">{{ $tin['title'] }}</a></h4></li>
		                     
		                      @endforeach
								
							</ul>
						</div>
					</article><!-- /block-news-sidebar -->

					<article class="block-sidebar block-news-sidebar">
						<div class="block-title-common">
							<h3><span class="icon-tile"><i class="fa fa-building-o"></i></span> Dự án nổi bật</h3>
						</div>
						<div class="block-contents block-contents2">
							<ul class="block-list-sidebar block-slide-sidebar">
								<div class="bxslider">
								@if($landingList)
									@foreach($landingList as $value)
									<div class="large-item">
		                                <a href="{{ route('detail-project', [$value->slug])}}" title=""><img src="{{ $value->image_url ? Helper::showImageThumb($value->image_url, 3, '306x194') : URL::asset('backend/dist/img/no-image.jpg') }}" alt="" /></a>
		                                <h4><a href="{{ route('detail-project', [$value->slug])}}" title="">{{ $value->name }}</a></h4>
		                                <p>{{ $value->address }}</p>
		                            </div>
		                            @endforeach
		                        @endif
								</div>
								<div id="bx-pager" class="bx-thumbnail">
									@if($landing2List)
									@foreach($landing2List as $value)
									<div class="item">
										<div class="item-child">
				                            <a data-slide-index="0" class="slide_title" onclick="location.href='{{ route('detail-project', [$value->slug])}}'" href="{{ route('detail-project', [$value->slug])}}" title=""><img class="avatar" src="{{ $value->image_url ? Helper::showImageThumb($value->image_url, 3, '306x194') : URL::asset('backend/dist/img/no-image.jpg') }}" alt="" /></a>
				                            <div class="slide_info">
				                                <a  onclick="location.href='{{ route('detail-project', [$value->slug])}}'" href="{{ route('detail-project', [$value->slug])}}" title="">{{ $value->name }}</a>
				                                <p>{{ $value->address }}</p>
				                            </div>
			                            </div>
			                        </div>
			                        @endforeach
			                        @endif			                       
			                        
								</div>
							</ul>
						</div>
					</article><!-- /block-news-sidebar -->

					<article class="block-sidebar block-news-sidebar">
						<div class="block-title-common">
							<h3><span class="icon-tile"><i class="fa fa-th-list"></i></span> Liên kết nổi bật</h3>
						</div>
						<div class="block-contents">
							<ul class="block-list-sidebar block-icon1-title">
								@foreach($customLink as $link)
								<li><h4><a href="{{ $link->link_url }}" title="{{ $link->link_text }}">{{ $link->link_text }}</a></h4></li>
								@endforeach
							</ul>							
						</div>
					</article><!-- /block-news-sidebar -->
				</section><!-- /block-site-right -->
				@endif
			</section>
		</section>
		<section class="block block-get-news">
			<div class="container">
				<div class="block-contents">
					<form action="" method="get" >
						<input type="text" name="" value="" placeholder="Nhập địa chỉ email">
						<button type="button" class="btnConfirm">Đăng ký</button>
					</form>
				</div>
			</div>
		</section><!-- /block-get-news -->
	</section><!-- /main -->

	

	@include('frontend.home.footer')
	
	@include('frontend.partials.ads')	
	

	<a id="return-to-top" class="td-scroll-up" href="javascript:void(0)">
  		<i class="fa fa-angle-up" aria-hidden="true"></i>
	</a>
	<!-- RETURN TO TOP -->

	<!-- ===== JS ===== -->
	<script src="{{ URL::asset('assets/js/jquery.min.js') }}"></script>
	<!-- JS Bootstrap -->
	<script src="{{ URL::asset('assets/vendor/bootstrap/bootstrap.min.js') }}"></script>
	<!-- ===== JS Bxslider ===== -->
	<script src="{{ URL::asset('assets/vendor/bxslider/jquery.bxslider.min.js') }}"></script>
	<!-- ===== JS Bxslider ===== -->
	<script src="{{ URL::asset('assets/vendor/owl-carousel/owl.carousel.min.js') }}"></script>
	<!-- JS Sticky -->
	<script src="{{ URL::asset('assets/vendor/sticky/jquery.sticky.js') }}"></script>
	<!-- ===== JS Bootstrap Select ===== -->
	<script src="{{ URL::asset('assets/vendor/bootstrap-select/js/bootstrap-select.min.js') }}"></script>
	<!-- Js Common -->
	<script src="{{ URL::asset('backend/dist/js/sweetalert2.min.js') }}"></script>
	<script src="{{ URL::asset('assets/js/common.js') }}"></script>
	@yield('javascript_page')
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajaxSetup({
		        headers: {
		          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		        }
		    });
		    @if(isset($district_id) && $district_id > 0)
		    var district_id = {{ $district_id }};
		    $('#district_id').val(district_id);
		    $.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'ward',
						col : 'district_id',
						id : district_id
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#ward_id').html(data).selectpicker('refresh');
						@if(isset($ward_id) && $ward_id > 0)
						$('#ward_id').val({{ $ward_id }}).selectpicker('refresh');
						@endif
					}
				});

				$.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'street',
						col : 'district_id',
						id : district_id
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#street_id').html(data).selectpicker('refresh');
						@if(isset($street_id) && $street_id > 0)
						$('#street_id').val({{ $street_id }}).selectpicker('refresh');
						@endif
					}
				});

				$.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'project',
						col : 'district_id',
						id : district_id
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#project_id').html(data).selectpicker('refresh');
						@if(isset($project_id) && $project_id > 0)
						$('#project_id').val({{ $project_id }}).selectpicker('refresh');
						@endif
					}
				});
		    @endif
		    $('.bxslider').bxSlider({
				pagerCustom: '#bx-pager',
				pager: true,
				auto: true,
				pause: 4000
			});
			$('#district_id').change(function(){
				var district_id = $(this).val();
				$.ajax({
					url : '{{ route('get-child') }}',
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
					url : '{{ route('get-child') }}',
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
					url : '{{ route('get-child') }}',
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
				});
			});



			$('.block-box-search li a').click(function(){
				obj = $(this);
				var type = obj.data('type');
				$('#type').val(type);
				$('.block-box-search li').removeClass('active');
				obj.parents('li').addClass('active');

				$.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'estate_type',
						col : 'type',
						id : type
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#estate_type_id').html(data).selectpicker('refresh');
						@if(isset($estate_type_id) && $estate_type_id > 0)
						$('#estate_type_id').val({{ $estate_type_id }}).selectpicker('refresh');
						@endif
					}
				});
				$.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'price',
						col : 'type',
						id : type
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#price_id').html(data).selectpicker('refresh');
						@if(isset($price_id) && $price_id > 0)
						$('#price_id').val({{ $price_id }}).selectpicker('refresh');
						@endif
					}
				});
			});
			@if(isset($type) && $type >0)
				var type = {{ $type }};
				$('#type').val({{ $type }});
				$('.block-box-search li').removeClass('active');
				$('.block-box-search li a[data-type={{$type}}]').parents('li').addClass('active');

				$.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'estate_type',
						col : 'type',
						id : type
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#estate_type_id').html(data).selectpicker('refresh');
						@if(isset($estate_type_id) && $estate_type_id > 0)
						$('#estate_type_id').val({{ $estate_type_id }}).selectpicker('refresh');
						@endif
					}
				});
				$.ajax({
					url : '{{ route('get-child') }}',
					data : {
						mod : 'price',
						col : 'type',
						id : type
					},
					type : 'POST',
					dataType : 'html',
					success : function(data){
						$('#price_id').html(data).selectpicker('refresh');
						@if(isset($price_id) && $price_id > 0)
						$('#price_id').val({{ $price_id }}).selectpicker('refresh');
						@endif
					}
				});
			@endif
		});
		
	</script>

</body>
</html>