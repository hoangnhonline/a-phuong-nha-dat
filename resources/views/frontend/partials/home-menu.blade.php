<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse menu" id="bs-example-navbar-collapse-1">
    <div class="text-center logo-menu">
        <a title="Logo" href="home.html"><img src="https://imgholder.ru/204x90/0082D5/fff.jpg') }}&text=My+Logo&font=tahoma&fz=27" alt=""></a>
    </div>
    <ul class="nav navbar-nav navbar-left">
        <li class="level0 {{ \Request::route()->getName() == "home" ? "active" : "" }}"><a class="" href="{{ route('home') }}">Trang chủ</a></li><!-- END MENU HOME -->
        <li class="level0 parent {{ (in_array(\Request::route()->getName(), ['ban', 'danh-muc', 'chi-tiet']) && isset($type) && $type == 1) ? "active" : "" }}">
            <a href="{{ route('ban') }}">BĐS bán</a>
            <ul class="level0 submenu">
                @foreach($banList as $ban)
                <li class="level1"><a href="{{ route('danh-muc', $ban->slug ) }}">{!! $ban->name !!}</a></li>                         
                @endforeach
            </ul>
        </li><!-- END MENU SHOP -->
        <li class="level0 {{ (in_array(\Request::route()->getName(), ['cho-thue', 'danh-muc', 'chi-tiet']) && isset($type) && $type == 2) ? "active" : "" }}"><a href="{{ route('cho-thue') }}">BĐS cho thuê</a>
            <ul class="level0 submenu">
                @foreach($thueList as $thue)
                <li class="level1"><a href="{{ route('danh-muc', $thue->slug ) }}">{!! $thue->name !!}</a></li>                           
                @endforeach
            </ul>
        </li><!-- END MENU BLOG -->
        <li class="level0 {{ in_array(\Request::route()->getName(), ['du-an', 'detail-project', 'tab']) ? "active" : "" }}"><a href="{{ route('du-an') }}">Dự án</a></li>
        @foreach($articleCate as $value)
        <li class="level0 {{ (isset($cateDetail) && $cateDetail->id == $value->id) ? "active" : "" }}"><a href="{{ route('news-list', $value->slug) }}">{!! $value->name !!}</a></li>
        @endforeach
        
        <li class="level0 postnew {{ (in_array(\Request::route()->getName(), ['ky-gui-thanh-cong', 'ky-gui'])) ? "active" : "" }}"><a href="{{ route('ky-gui') }}"><img src="{{ URL::asset('assets/images/icon-postnews.png') }}" alt="Ký gửi"> Ký gửi</a></li>
    </ul>
</div><!-- /.navbar-collapse -->