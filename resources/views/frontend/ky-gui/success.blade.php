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
					<div class="block-contents" style="height:500px">
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
						<a class="btn btn-success btn-sm" href="{{ route('ky-gui') }}"><span class="glyphicon glyphicon-pencil"></span> Tiếp tục ký gửi</a>
					</div>
				</article><!-- /block-news-sidebar -->
			</section><!-- /block-site-left -->
		</section>
	</section>
</section><!-- /main -->
@endsection