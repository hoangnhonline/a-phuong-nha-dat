<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\EstateType;

use App\Models\Product;


use App\Models\Banner;

use App\Models\Location;
use App\Models\City;
use App\Models\District;
use App\Models\Ward;
use App\Models\Street;
use App\Models\Project;
use App\Models\Articles;
use App\Models\ArticlesCate;
use App\Models\Customer;
use App\Models\Newsletter;
use App\Models\PriceRange;
use App\Models\Price;
use App\Models\Area;
use App\Models\Settings;

use Helper, File, Session, Auth, Hash;

class HomeController extends Controller
{
    
    public static $loaiSp = []; 
    public static $loaiSpArrKey = [];    

    public function __construct(){
        
       

    }
    public function getChild(Request $request){
        $module = $request->mod;
        $id = $request->id;
        $column = $request->col;
        return Helper::getChild($module, $column, $id);
    }
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function showLink(Request $request){
        $site_id = $request->site_id;
        $all = LinkSite::where('site_id', $site_id)->get();
        $i = 0;
        foreach($all as $data){
            $i++;
            echo $i."-"."<strong>".$data->link."</strong><br>";
            if($data->images->count()){
                foreach ($data->images as $value) {
                    echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$value->image_url;
                    echo "<br>";
                }
            }
            echo "<hr>";
        }
        die;


    }
    public function loadSlider(){
        return view('frontend.home.ajax-slider');
    }
    public function index(Request $request)
    {  
        $productArr = [];
        $hoverInfo = [];
        $loaiSp = EstateType::where('status', 1)->get();
        $bannerArr = [];          
        $articlesArr = Articles::where(['cate_id' => 1])->orderBy('id', 'desc')->get();
        $hotProduct = Product::where('product.slug', '<>', '')
                    ->where('product.type', 1)
                    ->where('product.status', 1)
                    ->leftJoin('product_img', 'product_img.id', '=','product.thumbnail_id')            
                    ->join('estate_type', 'estate_type.id', '=','product.estate_type_id')      
                    ->select('product_img.image_url as image_urls', 'product.*', 'estate_type.slug as slug_loai')
                    ->where('product_img.image_url', '<>', '')                                         
                    ->orderBy('product.is_hot', 'desc')
                    ->orderBy('product.cart_status', 'asc')                    
                    ->orderBy('product.id', 'desc')->limit(10)->get();
        $hotProduct2 = Product::where('product.slug', '<>', '')
                    ->where('product.type', 2)
                    ->where('product.status', 1)
                    ->leftJoin('product_img', 'product_img.id', '=','product.thumbnail_id')            
                    ->join('estate_type', 'estate_type.id', '=','product.estate_type_id')      
                    ->select('product_img.image_url as image_urls', 'product.*', 'estate_type.slug as slug_loai')
                    ->where('product_img.image_url', '<>', '')                                         
                    ->orderBy('product.is_hot', 'desc')
                    ->orderBy('product.cart_status', 'asc')                    
                    ->orderBy('product.id', 'desc')                    
                    ->limit(10)->get();
        
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $seo = $settingArr;
        $seo['title'] = $settingArr['site_title'];
        $seo['description'] = $settingArr['site_description'];
        $seo['keywords'] = $settingArr['site_keywords'];
        $socialImage = $settingArr['banner'];

        $tinThiTruong = Articles::where('cate_id', 7)->orderBy('id', 'desc')->limit(6)->get()->toArray();
        $phongthuy = Articles::where('cate_id', 4)->orderBy('id', 'desc')->limit(6)->get()->toArray();
        
        $khonggiansong = Articles::where('cate_id', 1)->orderBy('id', 'desc')->limit(6)->get()->toArray();

        $luat = Articles::where('cate_id', 5)->orderBy('id', 'desc')->limit(6)->get()->toArray();
        $tuvan = Articles::where('cate_id', 6)->orderBy('id', 'desc')->limit(6)->get()->toArray();

        $phantich = Articles::where('cate_id', 1)->orderBy('id', 'desc')->limit(6)->get()->toArray();

        
        

        return view('frontend.home.index', compact('bannerArr', 'articlesArr', 'socialImage', 'seo', 'countMess', 'hotProduct', 'tinThiTruong', 'luat', 'khonggiansong', 'phongthuy', 'tinRandom','hotProduct2', 'luat', 'tuvan'));

    }

    public function getNoti(){
        $countMess = 0;
        if(Session::get('userId') > 0){
            $countMess = CustomerNotification::where(['customer_id' => Session::get('userId'), 'status' => 1])->count();    
        }
        return $countMess;
    }
    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function search(Request $request)
    {
        $tu_khoa = $request->keyword;       

        $productArr = Product::where('product.alias', 'LIKE', '%'.$tu_khoa.'%')->where('so_luong_ton', '>', 0)->where('price', '>', 0)->where('estate_type.status', 1)                        
                        ->leftJoin('product_img', 'product_img.id', '=','product.thumbnail_id')                        
                        ->join('estate_type', 'estate_type.id', '=', 'product.estate_type_id')
                        ->select('product_img.image_url', 'product.*', 'thuoc_tinh')
                        ->orderBy('id', 'desc')->paginate(20);
        $seo['title'] = $seo['description'] =$seo['keywords'] = "Tìm kiếm sản phẩm theo từ khóa '".$tu_khoa."'";
        $hoverInfo = [];
        if($productArr->count() > 0){
            $hoverInfoTmp = HoverInfo::orderBy('display_order', 'asc')->orderBy('id', 'asc')->get();
            foreach($hoverInfoTmp as $value){
                $hoverInfo[$value->estate_type_id][] = $value;
            }
        }
        //var_dump("<pre>", $hoverInfo);die;
        return view('frontend.search.index', compact('productArr', 'tu_khoa', 'seo', 'hoverInfo'));
    }
    public function ajaxTab(Request $request){
        $table = $request->type ? $request->type : 'category';
        $id = $request->id;

        $arr = Film::getFilmHomeTab( $table, $id);

        return view('frontend.index.ajax-tab', compact('arr'));
    }
    public function contact(Request $request){        

        $seo['title'] = 'Liên hệ';
        $seo['description'] = 'Liên hệ';
        $seo['keywords'] = 'Liên hệ';
        $socialImage = '';
        return view('frontend.contact.index', compact('seo', 'socialImage'));
    }

    

    public function registerNews(Request $request)
    {

        $register = 0; 
        $email = $request->email;
        $newsletter = Newsletter::where('email', $email)->first();
        if(is_null($newsletter)) {
           $newsletter = new Newsletter;
           $newsletter->email = $email;
           $newsletter->is_member = Customer::where('email', $email)->first() ? 1 : 0;
           $newsletter->save();
           $register = 1;
        }

        return $register;
    }

}
