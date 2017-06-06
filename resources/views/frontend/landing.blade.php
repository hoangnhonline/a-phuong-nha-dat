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
	<meta charset="UTF-8">
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
    <meta property="og:site_name" content="iCho.vn" />
    <?php $socialImage = isset($socialImage) ? $socialImage : $settingArr['banner']; ?>
    <meta property="og:image" content="{{ Helper::showImage($socialImage) }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:description" content="@yield('site_description')" />
    <meta name="twitter:title" content="@yield('title')" />        
    <meta name="twitter:image" content="{{ Helper::showImage($socialImage) }}" />
	<!-- ===== Style CSS Common ===== -->
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/css/style.css') }}">
	<!-- ===== Responsive CSS ===== -->
    <link href="{{ URL::asset('assets/css/responsive.css') }}" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js') }} IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js') }} doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<link href='{{ URL::asset('assets/css/animations-ie-fix.css') }}' rel='stylesheet'>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js') }}"></script>
		<script src="https://oss.maxcdn.com/libs/respond.{{ URL::asset('assets/js/1.4.2/respond.min.js') }}"></script>
	<![endif]-->
</head>
<body>
	
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
	            <div class="banner_adv" id="Banner_dothi" style="display: none;">
	               <a href="#" target="_blank">
	                    <img src="{{ URL::asset('assets/images/adv/Banxehoi.com_Bannertop_728x90.gif') }}"></a>
	            </div>
	            <div class="banner_adv" id="Banner_tet" style="display: block;">
	                <a href="#" target="_blank">
	                    <img src="{{ URL::asset('assets/images/adv/Banxehoi.com_Bannertop_728x90.gif') }}"></a>
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

	@yield('content')	

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
	<script src="{{ URL::asset('assets/js/common.js') }}"></script>
	@yield('javascript_page')
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajaxSetup({
		        headers: {
		          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		        }
		    });
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
				})
			});
		});
		
	</script>
	<script>
		$(document).ready(function(){
			$('ul.tabssssss li.tab-link').click(function(){
				var tab_id = $(this).attr('data-tab');

				$('ul.tabssssss li.tab-link').removeClass('active');
				$('.tab-contents').removeClass('active');

				$(this).addClass('active');
				$("#"+tab_id).addClass('active');
			});
			$(function(){
				// Determine the div width parent
				var width = document.getElementById('nav-tabs-langding').offsetWidth;
				// Determine the div width parent
				var mainDiv = $('#nav-tabs-langding');
				var childDivCount = mainDiv.find('li').length;
				// Get width for li
				var widthItem = width/childDivCount;
				$('#nav-tabs-langding li').css("width", widthItem);
		   });
		});
		$(window, document, undefined).ready(function() {
			$('input , textarea').blur(function() {
			var $this = $(this);
			if ($this.val())
		  		$this.addClass('used');
			else
		  		$this.removeClass('used');
			});
			var $ripples = $('.ripples');
			$ripples.on('click.Ripples', function(e) {
				var $this = $(this);
				var $offset = $this.parent().offset();
				var $circle = $this.find('.ripplesCircle');

				var x = e.pageX - $offset.left;
				var y = e.pageY - $offset.top;

				$circle.css({
					top: y + 'px',
					left: x + 'px'
				});
				$this.addClass('is-active');
			});
			$ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
				$(this).removeClass('is-active');
			});
		});
	</script>

</body>
</html>