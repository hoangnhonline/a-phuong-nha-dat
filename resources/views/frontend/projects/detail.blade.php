@extends('frontend.landing')
  
@include('frontend.partials.meta')
@section('content')
<section class="block-main main"  id="site-main">
<div class="block block-langding" style="padding-top:10px">
<div class="container">
	<article class="block-breadcrumb-page">
		<ul class="breadcrumb">	
			<li><a href="{{ route('home') }}" title="Trở về trang chủ">Trang chủ</a></li>
			<li><a href="{{ route('du-an') }}" title="Dự án">Dự án</a></li>
			<li class="active">{!! $detail->name !!}</li>
		</ul>
	</article>
	<div class="block block-title">		  
		<ul class="nav nav-tabs nav-tabs-langding" id="nav-tabs-langding" role="tablist">
			<li role="presentation" >
				<p class="tabs-item-logo">
					<i class="icon">
						<img src="{{ $detail->logo_url ? Helper::showImage($detail->logo_url) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $detail->name !!}">
					</i>
				</p>
			</li>
			@if(in_array(1, $tabArr))
			<li role="presentation" @if($tab_id == 1) class="active" @endif>
				<a href="{{ route('tab', [$detail->slug, 'gioi-thieu']) }}" >
					<i class="icon">
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 22 20" enable-background="new 0 0 22 20" xml:space="preserve" class="svg replaced-svg">
						<g><g><path fill="#979797" d="M20,0H4.6c-1.1,0-2,0.9-2,2.1v3.5H2c-1.1,0-2,1-2,2.1v10.1C0,19.1,0.9,20,2,20H20c1.1,0,2-1,2-2.1V2.1    C22,0.9,21.1,0,20,0z M2,18.6L2,18.6c-0.4,0-0.7-0.3-0.7-0.7V7.8c0-0.4,0.3-0.7,0.7-0.7h0.6v10.8c0,0.2,0,0.5,0.1,0.7H2z     M20.7,17.9c0,0.4-0.3,0.7-0.7,0.7H4.6c-0.4,0-0.7-0.3-0.7-0.7V2.1c0-0.4,0.3-0.7,0.7-0.7H20c0.4,0,0.7,0.3,0.7,0.7V17.9z M18,7.2    h-2.5v1.6H18V7.2z M15.5,11.5h3.6V9.9h-3.6V11.5z M15.5,14.2h3.1v-1.6h-3.1V14.2z M10,8.1l-2.9,3.1c0,0-0.1,0.1-0.1,0.1v2.5    c0,0.3,0.2,0.5,0.4,0.5h1.6v-2.6h2v2.6h1.6c0.2,0,0.4-0.2,0.4-0.5v-2.4c0,0-0.1-0.1-0.1-0.1L10,8.1z M10.6,6.4L10,5.8L9.4,6.4    l-3.7,3.9c-0.2,0.2-0.2,0.5,0,0.7c0.1,0.1,0.2,0.1,0.3,0.1c0.1,0,0.2,0,0.3-0.1L10,7.1l3.7,3.9c0.1,0.1,0.2,0.1,0.3,0.1    c0.1,0,0.2,0,0.3-0.1c0.2-0.2,0.2-0.5,0-0.7L10.6,6.4z"></path></g></g></svg>
					</i>
					Giới Thiệu
				</a>
			
			</li>
			@endif
			@if(in_array(2, $tabArr))
		    <li role="presentation" @if($tab_id == 2) class="active" @endif>
		    	<a href="{{ route('tab', [$detail->slug, 'vi-tri']) }}" >
		    		<i class="icon">
		    			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 24 20" enable-background="new 0 0 24 20" xml:space="preserve" class="svg replaced-svg">
						<g><g><path fill="#979797" d="M23.8,8.5c-0.2-0.1-0.4-0.2-0.6-0.1l-4.2,0.9l-0.3-0.1c0,0.1-0.1,0.2-0.1,0.2c-0.1,0.2-0.1,0.3-0.2,0.5    c-0.2,0.4-0.3,0.8-0.5,1.1l-2.6,7.5l-6-3.3l3-3c-0.2-0.4-0.4-0.8-0.6-1.2l-3.9,3.9l-3.5,1.9l5.7-5.7l1.6-0.5    c-0.1-0.2-0.2-0.5-0.3-0.7C11.1,9.7,11,9.6,11,9.4L9.2,10c-0.1,0-0.2,0.1-0.3,0.2L0.2,19c-0.2,0.2-0.2,0.6,0,0.8    C0.3,19.9,0.5,20,0.7,20c0.1,0,0.2,0,0.4-0.1L8.1,16l7.1,3.9c0,0,0.1,0,0.1,0c0,0,0,0,0.1,0c0.1,0,0.1,0,0.2,0h0c0,0,0,0,0,0    c0.1,0,0.1,0,0.2,0c0,0,0,0,0.1,0c0,0,0.1,0,0.1,0c0,0,0,0,0,0l7.4-4.1c0.2-0.1,0.3-0.3,0.3-0.5L24,9C24,8.8,23.9,8.6,23.8,8.5z     M22.4,15L16.8,18l2.7-7.7l3.1-0.6L22.4,15z M14.7,13.9c1.8,0,4.6-8.4,4.6-9.8c0-2.3-2.1-4.1-4.6-4.1c-2.5,0-4.6,1.8-4.6,4.1    C10.2,5.6,12.9,13.9,14.7,13.9z M12.5,4.1c0-1.1,1-2,2.2-2C16,2.1,17,3,17,4.1c0,1.1-1,2-2.2,2C13.5,6.1,12.5,5.2,12.5,4.1z"></path></g></g></svg>
					</i>
		    		Vị Trí
		    	</a>
		    </li>
		    @endif
		    @if(in_array(3, $tabArr))
		    <li role="presentation" @if($tab_id == 3) class="active" @endif>
		    	<a href="{{ route('tab', [$detail->slug, 'tien-ich']) }}" >
		    		<i class="icon">
			    		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 20 20" enable-background="new 0 0 20 20" xml:space="preserve" class="svg replaced-svg">
						<g><g><path fill="#979797" d="M0.8,5.8l2.7-0.3C3.8,5.6,4,5.3,4,5l0-0.3l0.2,0l0,0.3c0,0.3,0.3,0.5,0.6,0.5l2.7-0.3C7.8,5.2,8,5,8,4.7    l0-0.3l0.2,0l0,0.4c0,0.3,0.3,0.5,0.6,0.5l0.9-0.1l0.7,7.8c0,0.3,0.2,0.5,0.5,0.4c0.3,0,0.4-0.3,0.4-0.5L10.6,5l0.8-0.1    c0.3,0,0.5-0.3,0.5-0.6l0-0.4l0.2,0l0,0.4c0,0.3,0.3,0.5,0.6,0.5l2.7-0.3c0.3,0,0.5-0.3,0.5-0.6l0-0.4l0.2,0l0,0.5    c0,0.3,0.3,0.5,0.6,0.5l2.7-0.3c0.3,0,0.5-0.3,0.5-0.6c-0.4-2.3-7.6-3-9.7-2.8l0-0.4C10.1,0.1,9.9,0,9.7,0C9.4,0,9.2,0.2,9.2,0.5    l0,0.4c-2.6,0.3-9.2,2.5-9,4.4C0.3,5.7,0.5,5.9,0.8,5.8z M5.7,14.2l3.5,2.3c0.3,0.2,0.6,0.2,0.9,0.1l3.8-2l4,2.5    c0.6,0.2,1.1-0.2,1.3-0.8c0.1-0.6-0.2-1.2-0.8-1.3l-4.2-2.5c-0.2-0.1-0.4-0.1-0.6,0l0,0l-3.7,1.9l-3.1-2.1    c-0.5-0.3-1.2-0.2-1.5,0.3C5,13.2,5.2,13.9,5.7,14.2z M19,17.8l-5.5-1.9c-0.1,0-0.2,0-0.3,0l-3.6,1.8l-7.9-5.2    c-0.5-0.3-1.2-0.2-1.5,0.3C-0.1,13.3,0,14,0.5,14.3l2.1,1.3l-2.1,3.7c-0.1,0.2-0.1,0.5,0.1,0.6C0.8,20.1,1,20,1.1,19.8l2.3-3.6    l5.3,3.5v0c0.2,0.2,0.5,0.2,0.8,0.1l3.9-1.8l5.4,1.9c0.6,0,1.1-0.4,1.1-1C20,18.3,19.6,17.8,19,17.8z M5.4,11    c-0.2-0.8-1-1.4-1.8-1.2c-0.8,0.2-1.3,1-1.1,1.8c0.2,0.8,1,1.4,1.8,1.2C5.1,12.6,5.6,11.8,5.4,11z"></path></g></g></svg>
					</i>
		    		Tiện Ích
		    	</a>
		    </li>
		    @endif
		    @if(in_array(3, $tabArr))
		    <li role="presentation" @if($tab_id == 4) class="active" @endif>
		    	<a href="{{ route('tab', [$detail->slug, 'thiet-ke']) }}" >
		    		<i class="icon">
		    			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 29 20" enable-background="new 0 0 29 20" xml:space="preserve" class="svg replaced-svg">
						<g><g><path fill="#979797" d="M20.5,8.3v1.5h7.1v3.4h-7.4V2.3h-6.4V0h-1.5v2.3H8.8V0H7.4v2.3h-3v17.2h15.7v-4.9h7.4v3.4h-7.1v1.5H29V8.3    H20.5z M9.9,18.1h-4v-6.8h4V18.1z M18.6,18.1h-3.5c0-1.9,1.6-3.4,3.5-3.4V18.1z M18.6,9h-3.2v1.5h3.2v2.7c-2.8,0-5,2.2-5,4.9h-2.3    V9.7H5.9V3.8h1.5v2.3h1.5V3.8h3.4v2.3h1.5V3.8h4.9V9z M0.1,3.6h1.1v4.6H2V3.6h1.4V2.7H0.1V3.6z M2.1,13.9H1.2v5.2H0V20h3.4v-0.9    H2.1V13.9z M1.1,12.3c0.2,0.1,0.3,0.2,0.5,0.2l0-0.3c-0.2,0-0.4-0.1-0.5-0.1L1.1,12.3z M1.1,12.7c0.2,0.1,0.3,0.2,0.5,0.2l0-0.3    c-0.2,0-0.4-0.1-0.5-0.1L1.1,12.7z M1.6,11.4c0.1,0,0.3,0.1,0.5,0.4L2.3,12h0.2V11H2.2v0.5h0l-0.1-0.1c-0.2-0.2-0.3-0.3-0.6-0.3    c-0.2,0-0.4,0.2-0.4,0.5c0,0.2,0.1,0.3,0.1,0.4l0.2-0.1c0-0.1-0.1-0.2-0.1-0.3C1.4,11.4,1.5,11.4,1.6,11.4z M1.9,9.9V10H1.2v0.4    L2,10.9h0.2v-0.6h0.3V10H2.2V9.9H1.9z M1.9,10.6L1.9,10.6l-0.3-0.2c-0.1,0-0.2-0.1-0.2-0.1v0c0.1,0,0.2,0,0.2,0h0.3V10.6z     M1.6,9.2C1.5,9.1,1.3,9,1.1,9l0,0.3c0.2,0,0.4,0.1,0.5,0.1L1.6,9.2z M1.1,9.6c0.2,0,0.4,0.1,0.5,0.1l0-0.2    C1.5,9.5,1.3,9.4,1.1,9.4L1.1,9.6z"></path></g></g></svg>
					</i>
		    		Thiết Kế
		    	</a>
		    </li>
		    @endif
		    @if(in_array(5, $tabArr))
		    <li role="presentation" @if($tab_id == 5) class="active" @endif>
		    	<a href="{{ route('tab', [$detail->slug, 'thanh-toan']) }}" >
		    		<i class="icon">
			    		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 27 19" enable-background="new 0 0 27 19" xml:space="preserve" class="svg replaced-svg">
						<path fill="#979797" d="M2.3,9.2L1.7,8.8l0.6-0.4L2.3,9.2z M3.2,9.1C3.2,9.1,3.1,9.1,3.2,9.1C3.1,9.1,3.1,9.1,3.2,9.1  C3.1,9.2,3.1,9.2,3.1,9.2c0,0,0,0,0.1,0h0.4c0,0,0.1,0,0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0-0.1,0H3.5V8.3L3.2,8.4c0,0,0,0-0.1,0  c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0l0.1,0v0.6H3.2z M4.2,9c0.1,0,0.1-0.1,0.1-0.2c0,0-0.1,0-0.1,0.1  C4.2,8.9,4.2,8.9,4.2,9C4.1,8.9,4,8.9,4,8.8C3.9,8.8,3.9,8.7,3.9,8.6c0-0.1,0-0.1,0.1-0.2c0-0.1,0.1-0.1,0.2-0.1  c0.1,0,0.1,0,0.2,0.1c0,0,0.1,0.1,0.1,0.2c0,0.1,0,0.1,0,0.2c0,0.1,0,0.2-0.2,0.3C4.2,9.2,4.1,9.2,4.1,9.2c-0.1,0-0.1,0-0.1,0  c0,0,0,0,0-0.1c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0.1,0C4.1,9.1,4.2,9.1,4.2,9z M4.3,8.6c0-0.1,0-0.1-0.1-0.1  c0,0-0.1,0-0.1,0c0,0-0.1,0-0.1,0c0,0,0,0.1,0,0.1c0,0,0,0.1,0,0.1c0,0,0.1,0,0.1,0C4.2,8.8,4.3,8.8,4.3,8.6z M4.7,8.9  C4.7,8.8,4.7,8.8,4.7,8.9c0-0.1,0-0.1,0-0.2c0,0,0-0.1,0-0.1c0-0.1,0-0.1,0.1-0.2c0.1,0,0.1-0.1,0.2-0.1c0.1,0,0.1,0,0.2,0.1  c0,0,0.1,0.1,0.1,0.2c0,0,0,0.1,0,0.1c0,0,0,0.1-0.1,0.1c0,0,0.1,0.1,0.1,0.1c0,0,0,0.1,0,0.1c0,0,0,0.1,0,0.1c0,0-0.1,0.1-0.1,0.1  c0,0-0.1,0-0.1,0c-0.1,0-0.1,0-0.1,0c0,0-0.1-0.1-0.1-0.1c0,0,0-0.1,0-0.1C4.6,8.9,4.6,8.9,4.7,8.9z M4.8,8.6  C4.8,8.6,4.8,8.7,4.8,8.6c0.1,0.1,0.1,0.1,0.1,0.1c0,0,0.1,0,0.1,0c0,0,0-0.1,0-0.1c0,0,0-0.1,0-0.1c0,0-0.1,0-0.1,0  C4.9,8.5,4.8,8.5,4.8,8.6C4.8,8.5,4.8,8.6,4.8,8.6z M4.8,9C4.8,9,4.8,9,4.8,9c0.1,0.1,0.1,0.1,0.2,0.1s0.1,0,0.1,0c0,0,0,0,0-0.1  c0,0,0-0.1,0-0.1c0,0-0.1,0-0.1,0S4.8,8.9,4.8,9C4.8,8.9,4.8,9,4.8,9z M5.9,9L5.9,9C5.9,9.1,5.9,9.1,5.9,9c0.1,0.1,0.1,0.1,0.1,0.1  c0,0,0,0,0,0c0,0,0,0-0.1,0H5.7c0,0-0.1,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0.1,0h0V9H5.4V8.9l0.3-0.5h0.2v0.5c0,0,0,0,0.1,0  C5.9,8.9,5.9,8.9,5.9,9C5.9,9,5.9,9,5.9,9C5.9,9,5.9,9,5.9,9z M5.7,8.6L5.6,8.9h0.2V8.6z M7.6,8.4c0,0,0.1,0.1,0.1,0.1  c0,0.1,0,0.1,0,0.2v0.1c0,0.1,0,0.2-0.1,0.2c0,0.1-0.1,0.1-0.2,0.1c-0.1,0-0.1,0-0.1,0c0,0-0.1-0.1-0.1-0.1c0-0.1,0-0.1,0-0.2V8.7  c0-0.1,0-0.2,0.1-0.2c0-0.1,0.1-0.1,0.2-0.1C7.5,8.3,7.6,8.4,7.6,8.4z M7.6,8.7c0-0.1,0-0.1-0.1-0.2c0,0-0.1,0-0.1,0  c0,0-0.1,0-0.1,0c0,0-0.1,0.1-0.1,0.2v0.1c0,0.1,0,0.1,0.1,0.2c0,0,0.1,0,0.1,0c0,0,0.1,0,0.1,0c0,0,0.1-0.1,0.1-0.2V8.7z M8,9.1  C8,9.1,8,9.1,8,9.1C8,9.1,8,9.1,8,9.1C8,9.2,8,9.2,8,9.2c0,0,0,0,0.1,0h0.4c0,0,0.1,0,0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0-0.1,0  H8.3V8.3L8,8.4c0,0,0,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0l0.1,0v0.6H8z M8.7,9.1v0.1h0.6V9.1c0,0,0-0.1,0-0.1  c0,0,0,0,0,0c0,0,0,0,0,0H8.9C9,9,9.1,8.9,9.1,8.8c0.1-0.1,0.1-0.1,0.1-0.1c0,0,0-0.1,0-0.1c0-0.1,0-0.1-0.1-0.2  C9.1,8.4,9.1,8.3,9,8.3c-0.1,0-0.1,0-0.1,0c0,0-0.1,0.1-0.1,0.1c0,0,0,0.1,0,0.1c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0  c0,0,0-0.1,0-0.1c0,0,0.1,0,0.1,0c0,0,0.1,0,0.1,0c0,0,0,0.1,0,0.1c0,0,0,0.1,0,0.1C9.1,8.7,8.9,8.9,8.7,9.1z M9.7,9.1  c0,0-0.1,0-0.1,0c0,0,0,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0.1,0,0.1c0.1,0,0.1,0.1,0.2,0.1c0.1,0,0.2,0,0.2-0.1  C10,9.1,10.1,9,10.1,8.9c0-0.1,0-0.2-0.1-0.2C9.9,8.7,9.9,8.6,9.8,8.6c0,0-0.1,0-0.1,0V8.5h0.3c0,0,0.1,0,0.1,0c0,0,0,0,0,0  c0,0,0,0,0,0c0,0,0,0-0.1,0H9.5v0.4c0,0,0,0,0,0.1c0,0,0,0,0,0c0,0,0,0,0,0c0.1,0,0.1,0,0.2,0c0,0,0.1,0,0.1,0c0,0,0,0.1,0,0.1  c0,0.1,0,0.1,0,0.1C9.9,9.1,9.8,9.1,9.7,9.1z M11.3,8.6c0,0,0,0.1,0,0.1C11.3,8.7,11.3,8.7,11.3,8.6c0.1,0.1,0.1,0.1,0.1,0.1  c0.1,0,0.1,0,0.2,0.1c0.1,0.1,0.1,0.1,0.1,0.2c0,0.1,0,0.1-0.1,0.2c0,0-0.1,0.1-0.2,0.1c-0.1,0-0.1,0-0.2,0c0,0-0.1-0.1-0.1-0.1  c0-0.1,0-0.1,0-0.2c0-0.1,0-0.2,0.1-0.2c0-0.1,0.1-0.1,0.2-0.2c0.1,0,0.1-0.1,0.2-0.1c0.1,0,0.1,0,0.1,0c0,0,0,0,0,0.1c0,0,0,0,0,0  c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0-0.1,0-0.1,0C11.4,8.5,11.4,8.6,11.3,8.6z M11.3,8.9c0,0.1,0,0.1,0.1,0.1c0,0,0.1,0,0.1,0  c0,0,0.1,0,0.1,0c0,0,0-0.1,0-0.1c0,0,0-0.1,0-0.1c0,0-0.1,0-0.1,0c0,0-0.1,0-0.1,0C11.4,8.9,11.3,8.9,11.3,8.9z M12.1,8.6  c0,0,0,0.1,0,0.1C12.1,8.7,12.1,8.7,12.1,8.6c0.1,0.1,0.1,0.1,0.1,0.1c0.1,0,0.1,0,0.2,0.1c0.1,0.1,0.1,0.1,0.1,0.2  c0,0.1,0,0.1-0.1,0.2c0,0-0.1,0.1-0.2,0.1c-0.1,0-0.1,0-0.2,0C12,9.1,12,9.1,12,9c0-0.1,0-0.1,0-0.2c0-0.1,0-0.2,0.1-0.2  c0-0.1,0.1-0.1,0.2-0.2c0.1,0,0.1-0.1,0.2-0.1c0.1,0,0.1,0,0.1,0c0,0,0,0,0,0.1c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0  c0,0-0.1,0-0.1,0C12.2,8.5,12.1,8.6,12.1,8.6z M12.1,8.9c0,0.1,0,0.1,0.1,0.1c0,0,0.1,0,0.1,0s0.1,0,0.1,0c0,0,0-0.1,0-0.1  c0,0,0-0.1,0-0.1c0,0-0.1,0-0.1,0c0,0-0.1,0-0.1,0C12.1,8.9,12.1,8.9,12.1,8.9z M12.6,9v0.1h0.6V9.1c0,0,0-0.1,0-0.1c0,0,0,0,0,0  c0,0,0,0,0,0h-0.3c0.1-0.1,0.2-0.2,0.3-0.2c0.1-0.1,0.1-0.1,0.1-0.1c0,0,0-0.1,0-0.1c0-0.1,0-0.1-0.1-0.2c-0.1-0.1-0.1-0.1-0.2-0.1  c-0.1,0-0.1,0-0.1,0c0,0-0.1,0.1-0.1,0.1c0,0,0,0.1,0,0.1c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0-0.1  c0,0,0.1,0,0.1,0c0,0,0.1,0,0.1,0c0,0,0,0.1,0,0.1c0,0,0,0.1,0,0.1C13,8.7,12.9,8.8,12.6,9z M13.9,8.7c0,0,0-0.1,0-0.1  c0-0.1,0-0.1-0.1-0.2c-0.1-0.1-0.1-0.1-0.2-0.1c-0.1,0-0.1,0-0.1,0c0,0-0.1,0.1-0.1,0.1c0,0,0,0.1,0,0.1c0,0,0,0,0,0c0,0,0,0,0,0  c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0-0.1c0,0,0.1,0,0.1,0c0,0,0.1,0,0.1,0c0,0,0,0.1,0,0.1c0,0,0,0.1,0,0.1c0,0.1-0.2,0.2-0.4,0.4  v0.1H14V9.1c0,0,0-0.1,0-0.1c0,0,0,0,0,0c0,0,0,0,0,0h-0.3c0.1-0.1,0.2-0.2,0.3-0.2C13.9,8.8,13.9,8.7,13.9,8.7z M15.4,9L15.4,9  C15.4,9.1,15.4,9.1,15.4,9c0.1,0.1,0.1,0.1,0.1,0.1c0,0,0,0,0,0c0,0,0,0-0.1,0h-0.2c0,0-0.1,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0  c0,0,0,0,0.1,0h0V9h-0.3V8.9l0.3-0.5h0.2v0.5c0,0,0,0,0.1,0C15.5,8.9,15.5,9,15.4,9C15.5,9,15.5,9,15.4,9C15.4,9,15.4,9,15.4,9z   M15.3,8.6l-0.2,0.3h0.2V8.6z M16.1,9L16.1,9C16.2,9.1,16.2,9.1,16.1,9c0.1,0.1,0.1,0.1,0.1,0.1c0,0,0,0,0,0c0,0,0,0-0.1,0H16  c0,0-0.1,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0.1,0h0V9h-0.3V8.9L16,8.4h0.2v0.5c0,0,0,0,0.1,0C16.2,8.9,16.2,9,16.1,9  C16.2,9,16.2,9,16.1,9C16.2,9,16.2,9,16.1,9z M16,8.6l-0.2,0.3H16V8.6z M16.9,9L16.9,9C16.9,9.1,17,9.1,16.9,9C17,9.1,17,9.1,17,9.2  c0,0,0,0,0,0c0,0,0,0-0.1,0h-0.2c0,0-0.1,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0c0,0,0,0,0.1,0h0.1V9h-0.3V8.9l0.3-0.5h0.2v0.5  c0,0,0,0,0.1,0C17,8.9,17,9,16.9,9C17,9,17,9,16.9,9C17,9,16.9,9,16.9,9z M16.8,8.6l-0.2,0.3h0.2V8.6z M17.7,9L17.7,9  C17.7,9.1,17.7,9.1,17.7,9c0.1,0.1,0.1,0.1,0.1,0.1c0,0,0,0,0,0c0,0,0,0-0.1,0h-0.2c0,0-0.1,0-0.1,0c0,0,0,0,0,0c0,0,0,0,0,0  c0,0,0,0,0.1,0h0V9h-0.3V8.9l0.3-0.5h0.2v0.5c0,0,0,0,0.1,0C17.7,8.9,17.8,9,17.7,9C17.8,9,17.7,9,17.7,9C17.7,9,17.7,9,17.7,9z   M17.5,8.6l-0.2,0.3h0.2V8.6z M27,14.4c-0.1,0.9-0.4,1.6-0.9,2.2c-0.6,0.6-1.4,1-2.4,1.2V19l-2.2,0v-1.2c-1.2-0.2-2.1-0.8-2.6-1.7  c-0.5-0.9-0.8-1.8-0.8-2.7h2.2c0,0.6,0.1,1,0.3,1.3c0.2,0.3,0.5,0.6,0.9,0.7v-3.5c-0.2-0.1-0.3-0.1-0.5-0.2  c-0.2-0.1-0.3-0.1-0.5-0.2c-0.7-0.3-1.3-0.7-1.7-1.3c-0.4-0.6-0.6-1.3-0.5-2.1c0-0.7,0.3-1.4,0.8-2c0.5-0.7,1.3-1.1,2.4-1.3V3.7h2.2  v1.1c1.2,0.3,2,0.9,2.4,1.8c0.4,0.9,0.6,1.6,0.6,2.2h-2.1c0-0.4-0.1-0.7-0.2-1c-0.1-0.3-0.4-0.6-0.7-0.7v3.4  c0.2,0.1,0.5,0.1,0.7,0.2c0.2,0.1,0.4,0.2,0.7,0.3c0.7,0.3,1.2,0.8,1.6,1.4C26.9,13,27.1,13.7,27,14.4z M21.4,6.9  c-0.4,0.2-0.6,0.4-0.8,0.6c-0.2,0.3-0.2,0.5-0.2,0.9c0,0.4,0.1,0.6,0.3,0.8c0.2,0.2,0.4,0.4,0.7,0.5V6.9z M24.6,13.5  c-0.1-0.3-0.4-0.5-0.8-0.7c0,0,0,0-0.1,0c0,0-0.1,0-0.1-0.1v2.9c0.4-0.1,0.6-0.3,0.8-0.5c0.2-0.2,0.3-0.4,0.3-0.7  C24.8,14.1,24.7,13.7,24.6,13.5z M3.3,17c-1.3,0-2.4-1.1-2.4-2.5V7.5h17c0.1-0.5,0.4-1.1,0.8-1.6c0.4-0.6,1-1,1.7-1.2H0.9V3.4  C0.9,2.1,2,1,3.3,1h16c1.3,0,2.3,1,2.4,2.3h1c0-0.9-0.4-1.7-1-2.3v0c-0.6-0.6-1.4-1-2.3-1h0h-16h0h0C2.4,0,1.6,0.4,1,1  C0.4,1.6,0,2.5,0,3.4v0v0v11.1v0v0c0,0.9,0.4,1.8,1,2.4c0.6,0.6,1.4,1,2.3,1h0h0h0h16h0h0c0.3,0,0.6,0,0.8-0.1  c-0.5-0.2-0.9-0.5-1.3-0.9H3.3z"></path></svg>
					</i>
		    		Thanh Toán
		    	</a>
		    </li>
		    @endif
		    @if(in_array(6, $tabArr))
		    <li role="presentation" @if($tab_id == 6) class="active" @endif>
		    	<a href="{{ route('tab', [$detail->slug, 'brochure']) }}" >
		    		<p class="icon"><i class="fa fa-file-o" aria-hidden="true"></i></p>
		    		Brochure
	    		</a>
    		</li>
    		@endif
    		@if(in_array(7, $tabArr))
		    <li role="presentation" @if($tab_id == 7) class="active" @endif>
		    	<a href="{{ route('tab', [$detail->slug, 'lien-he']) }}" >
		    		<i class="icon">
			    		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 22 14" enable-background="new 0 0 22 14" xml:space="preserve" class="svg replaced-svg"><g><g><path fill="#979797" d="M11,8.4L11,8.4c0.2,0,0.3,0,0.5-0.1l0,0c0,0,0,0,0,0L12,7.9L22,0c0,0-0.1,0-0.1,0H0.1c0,0-0.1,0-0.1,0    l10.5,8.2C10.6,8.3,10.8,8.4,11,8.4z M0,1.1v11.6L7.5,7L0,1.1z M14.5,7l7.5,5.7V1.1L14.5,7z M12.1,8.9c-0.3,0.2-0.7,0.4-1.1,0.4    c-0.4,0-0.8-0.1-1.1-0.4L8.2,7.6L0,13.9v0C0,13.9,0.1,14,0.1,14h21.8c0.1,0,0.1-0.1,0.1-0.1v0l-8.2-6.3L12.1,8.9z"></path>
						</g></g></svg>
					</i>
		    		Liên Hệ
		    	</a>
		    </li>
		    @endif
		</ul>
	</div><!-- /block-title -->

	<div class="block-content" style="padding-bottom:50px">
		<div class="tab-content">
			@if(in_array(1, $tabArr) && $tab_id != 7)
			<div role="tabpanel" class="tab-pane fade in active" id="About">
				@if($detailTab)
				<div class="page-block">
					<h2 class="page-title">{{ $detailTab->title }}</h2>
					<div class="page-content editor-content">
						<?php echo $detailTab->content; ?>
					</div>
				</div>
				@endif
			</div><!-- /tab-pane -->
			@endif
			
			@if(in_array(7, $tabArr) && $tab_id == 7)
			<div role="tabpanel" class="tab-pane fade in active" id="Contact">
				<h2 class="page-title">Liên Hệ</h2>
				<div class="row">
					<div class="col-sm-6 col-xs-12">
						<img class="project-logo-contact" src="{{ $detail->logo_url ? Helper::showImage($detail->logo_url) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{{ $detail->name }}">
						<h3 class="page-title-child">công ty TNHH BĐS Sunland Sài Gòn</h3>
						<div class="block-table-nobor-tab">
							<table class="table table-no-border">
								<tr>
									<td>
										<label>Địa chỉ:</label>
									</td>
									<td>
										85A Phan Kế Bính, Đa Kao, quận 1, TP. Hồ Chí Minh
									</td>
								</tr>
								<tr>
									<td>
										<label>Điện thoại :</label>
									</td>
									<td>0000.000.000</td>
								</tr>
								<tr>
									<td>
										<label>Email :</label>
									</td>
									<td>
										<a href="mailto:joe@example.com?subject=feedback">email me</a>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="col-sm-6 col-xs-12">
						<h3 class="page-title-child">Form liên hệ chủ dự án</h3>
						<form action="#" method="POST" class="form-horizontal block-contact-form-tab">
                  			<div class="form-group group">
                  				<input type="text">
                  				<span class="highlight"></span>
                  				<span class="bar"></span>
								<label>Họ và Tên *</label>
                  			</div><!-- /form-group -->
                  			<div class="form-group group">
                  				<input type="text">
                  				<span class="highlight"></span>
                  				<span class="bar"></span>
								<label>Điện thoại *</label>
                  			</div><!-- /form-group -->
                  			<div class="form-group group">
                  				<input type="text">
                  				<span class="highlight"></span>
                  				<span class="bar"></span>
								<label>Email *</label>
                  			</div><!-- /form-group -->
                  			<div class="form-group group">
                  				<textarea rows="5" name="txtarea" placeholder=""></textarea>
                  				<span class="highlight"></span>
                  				<span class="bar"></span>
                  				<label>Nội Dung</label>
                  			</div><!-- /form-group -->
                  			<div class="form-group">
								<button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Gửi Email</button>
							</div><!-- /form-group -->
                  		</form>
					</div>
				</div>
			</div><!-- /tab-pane -->
			@endif
		</div><!-- tab-content -->
	</div><!-- /block-content -->
</div>
</div><!-- /block-langding -->
</section><!-- /block-main -->
@endsection
@include('frontend.home.slider')
@section('javascript_page')
<script type="text/javascript">
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
				$('#nav-tabs-langding li').css("width", widthItem);
		        if ($('#nav-tabs-langding').hasClass("fixed")) {
		            $('#nav-tabs-langding li').css("width", widthItem);
		        }
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
@endsection