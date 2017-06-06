@extends('frontend.layout')

@section('header')
  
  
@endsection

@include('frontend.partials.meta')
@section('content')
<section class="col-sm-8 col-xs-12 block-sitemain">
<article class="block-breadcrumb-page">
	<ul class="breadcrumb">	
		<li><a href="{{ route('home') }}" title="Trở về trang chủ">Trang chủ</a></li>
		<li>
			@if($detail->type == 1)			
			<a href="{{ route('ban') }}">BĐS Bán</a>
			@else
			<a href="{{ route('cho-thue') }}">BĐS Cho thuê</a>
			@endif
		</li>
		<li>					
			<a href="{{ route('danh-muc', $rsLoai->slug ) }}">{!! $rsLoai->name !!}</a>
		</li>
		<!--<li class="active">{{ $detail->title }}</li>-->
	</ul>
</article>
	<article class="block block-cate-news-detail">
		<h1>{!! $detail->title !!}</h1>
		<div class="cate-news-detail-location">
	        <i class="fa fa-map-marker"></i> Khu vực:
	    	{!! Helper::getName($detail->district_id, 'district') !!} - {!! Helper::getName($detail->city_id, 'city') !!}
	    </div><!-- /cate-news-detail-location -->
	    <ul class="cate-news-detail-price clearfix">
			<li><p>Giá: <span>{{ $detail->price }} {!! Helper::getName($detail->price_unit_id, 'price_unit') !!}</span></p></li>
			<li><p>Diện tích: <span>{!! $detail->area !!} m<sup>2</sup></span></p></li>
	    </ul><!-- /cate-news-detail-price -->
	    <hr>
	    <div class="cate-news-detail-desc">
	    	<h3>Thông tin mô tả</h3>
	    	<div class="cate-news-detail-desc-content">
	    		<?php echo $detail->description; ?>
	    	</div>
	    </div><!-- /cate-news-detail-desc -->
	    <div class="cate-news-detail-tab">
		 	<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a class="imgdetail" href="#home" aria-controls="home" role="tab" data-toggle="tab">Hình ảnh</a></li>
				<li role="presentation"><a class="mapdetail" href="#profile" aria-controls="profile" role="tab" data-toggle="tab" onclick="initAutocomplete();">Bản đồ</a></li>
			</ul>
		 	<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<div id="slide-detail">
						<ul class="slide-detail">
							@foreach( $hinhArr as $hinh )
							<li><img src="{{ Helper::showImage($hinh['image_url']) }}" alt="hinh anh nho" /></li>
                            @endforeach
						</ul>
						<ul id="bx-pager-detail">
							<?php $i = 0; ?>
							@foreach( $hinhArr as $hinh )							
							<li><a data-slide-index="{{ $i }}" href=""><img src="{{ Helper::showImage($hinh['image_url']) }}" alt="hinh anh to" /></a></li>
							<?php $i++; ?>
							@endforeach
						</ul>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="profile">
					<div class="block-map">
						<div id="map-abc" style="height:400px;clear:both;width:100%"></div>
					</div>
				</div>
			</div>
	    </div><!-- /cate-news-detail-tab -->
	    <hr>
	    <div class="block-detail-info row">
	    	<div class="col-sm-6">
	    		<h3>Đặc điểm bất động sản</h3>
	    		<table class="table table-customize">	    			
	    			<tr>
	    				<td><b>Mã tin</b></td>
	    				<td>{{ $detail->id }}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Loại tin rao</b></td>
	    				<td>{!! Helper::getName($detail->estate_type_id, 'estate_type') !!}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Ngày đăng tin</b></td>
	    				<td>{{ date('d/m/Y', strtotime($detail->created_at)) }}</td>
	    			</tr>	    			
	    			<tr>
	    				<td><b>Hướng nhà</b></td>
	    				<td>{!! $detail->direction_id > 0 ? Helper::getName($detail->direction_id, 'direction')  : "KXD" !!}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Số phòng</b></td>
	    				<td>{{ $detail->no_room }}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Số toilet</b></td>
	    				<td>{{ $detail->no_wc }}</td>
	    			</tr>
	    			@if(!empty($tienIch))
	    			<?php $countTag = count($tienIch); ?>
	    			<tr>
	    				<td><b>Tiện ích xung quanh</b></td>
	    				<td>
	    					<?php $i = 0; ?>
							@foreach($tienIch as $tag)							
							<?php $i++; ?>
							<a href="{{ route('tag', $tag['slug']) }}" title="{!! $tag['name'] !!}">{!! $tag['name'] !!}</a>@if($i< $countTag), @endif
							@endforeach		
	    				</td>
	    			</tr>
	    			@endif
	    		</table>
	    	</div>
	    	<div class="col-sm-6">
	    		<h3>Thông tin liên hệ</h3>
	    		<table class="table table-customize">
	    			<tr>
	    				<td><b>Tên liên lạc</b></td>
	    				<td>{!! $detail->contact_name !!}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Địa chỉ</b></td>
	    				<td>{!! Helper::getName($detail->district_id, 'district') !!} - {!! Helper::getName($detail->city_id, 'city') !!}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Di động</b></td>
	    				<td>{{ $detail->contact_mobile }}</td>
	    			</tr>
	    			<tr>
	    				<td><b>Email</b></td>
	    				<td>{!! $detail->contact_email !!}</td>
	    			</tr>
	    		</table>
	    	</div>
	    </div><!-- /block-detail-info -->	    
	</article><!-- /block-cate-news-detail -->
	@if(!empty((array)$tagSelected))
	<?php $countTag = count($tagSelected);?>
	<article class="block block-news-with-region">
		<u>Tags</u>:
		<?php $i = 0; ?>
		@foreach($tagSelected as $tag)
		<?php $i++; ?>
		<a href="{{ route('tag', $tag->slug) }}" title="{!! $tag['name'] !!}">{!! $tag['name'] !!}</a>@if($i< $countTag), @endif
		@endforeach		
	</article>
	@endif
	@if($otherList)
	<article class="block block-news-with-region">
		<div class="block-title block-title-common">
			<h3><span class="icon-tile"><i class="fa fa-th-list"></i></span> TIN RAO CÙNG KHU VỰC</h3>
		</div>
		<div class="block-contents">
			<div class="news-with-region-list">
				<div class="row">
					@foreach($otherList as $product)
					<div class="col-sm-6 col-xs-12">
						<div class="news-with-region-item clearfix">
							<div class="news-with-region-title">
								<a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}" title="{!! $product->title !!}">{!! $product->title !!}</a>
							</div>
							<div class="news-with-region-content">
								<div class="news-with-region-img">
									<a  href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}"><img  title="{!! $product->title !!}" src="{{ $product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $product->title !!}" ></a>
								</div>
								<div class="news-with-region-info">
									<p>
			                            <label>Giá:</label>
			                            <span>{{ $product->price }} {!! Helper::getName($product->price_unit_id, 'price_unit') !!}</span>
			                        </p>
			                        <p>
			                            <label>Diện tích:</label>
			                            {!! $product->area !!} m<sup>2</sup>
			                        </p>
			                        <p>
			                            <label>Vị trí:</label>
			                            {!! Helper::getName($product->district_id, 'district') !!} - {!! Helper::getName($product->city_id, 'city') !!}
			                        </p>
								</div>
							</div>
						</div>
					</div><!-- /col-sm-6 col-xs-12 -->					
					@endforeach
				</div>				
			</div>
		</div>
	</article><!-- /block-news-with-region -->
	@endif
</section><!-- /block-site-left -->

@endsection
@section('javascript_page')
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
      	
        var myLatLng = {lat: {{ $latt }}, lng: {{ $longt }} };

        var map = new google.maps.Map(document.getElementById('map-abc'), {
          zoom: 17,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map          
        });
        map.panTo(marker.getPosition());
        $("a[href='#profile']").on('shown.bs.tab', function(){
		  google.maps.event.trigger(map, 'resize');
		  	map.panTo(marker.getPosition());
			map.setZoom(17);
		});
      	   
            
      }
    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhxs7FQ3DcyDm8Mt7nCGD05BjUskp_k7w&libraries=places&callback=initAutocomplete"
         async defer></script>
<script type="text/javascript">
 $(document).ready(function () {
    $('.bxslider .item').each(function () {
        $(this).zoom();
    });

    $(".bxslider").bxSlider({
    	controls: false,
        pagerCustom: '.pro-thumb-img',
        nextText: '<i class="fa fa-angle-right"></i>',
        prevText: '<i class="fa fa-angle-left"></i>',
        adaptiveHeight: true
    });

    $(".pro-thumb-img").bxSlider({
        slideMargin: 20,
        maxSlides: 4,
        pager: false,
        controls: true,
        slideWidth: 80,
        infiniteLoop: false,
        nextText: '<i class="fa fa-angle-right"></i>',
        prevText: '<i class="fa fa-angle-left"></i>'
    });
    /** COUNT DOWN **/
	$('[data-countdown]').each(function() {
		var $this = $(this), finalDate = $(this).data('countdown');
		$this.countdown(finalDate, function(event) {
			var fomat ='<i class="fa fa-clock-o"></i> <b>Thời gian còn lại:</b> <span>%D ngày,</span> <span>%H</span> : %M<span class="minute"></span> : %S<span class="seconds"></span>';
			$this.html(event.strftime(fomat));
		});
	});
	$('.bxslider').bxSlider({
		pagerCustom: '#bx-pager',
		pager: true,
		adaptiveHeight: true
	});
	$('.slide-detail').bxSlider({
		pagerCustom: '#bx-pager-detail',
		pager: true,
		adaptiveHeight: true,
		auto : true,
		pause : 4000
	});

});

</script>
@endsection

@section('javascript_page')
@endsection