<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/test', function() {
    return view('frontend.email.thanks');
});


Route::group(['namespace' => 'Frontend'], function()
{
    Route::get('/', ['as' => 'home', 'uses' => 'HomeController@index']);
    Route::get('/nha-dat-ban', ['as' => 'ban', 'uses' => 'ProductController@ban']);
    Route::get('/nha-dat-cho-thue', ['as' => 'cho-thue', 'uses' => 'ProductController@choThue']);
    
    Route::get('/du-an', ['as' => 'du-an', 'uses' => 'ProjectsController@index']);    
    Route::get('du-an/{slug}', ['as' => 'detail-project', 'uses' => 'ProjectsController@detail']);
    Route::get('du-an/{slug}/{slugtab}', ['as' => 'tab', 'uses' => 'ProjectsController@tab']);
    Route::post('/tmp-upload-multiple-fe', ['as' => 'image.tmp-upload-multiple-fe', 'uses' => 'UploadController@tmpUploadMultipleFE']);
   
    Route::get('tag/{slug}', ['as' => 'tag', 'uses' => 'DetailController@tagDetail']);
    Route::get('tin-tuc/{slug}', ['as' => 'news-list', 'uses' => 'NewsController@newsList']);
    Route::get('{slugLoaiSp}/{slug}-{id}.html', ['as' => 'chi-tiet', 'uses' => 'DetailController@index']);
    
    Route::get('/tin-tuc/{slug}-p{id}.html', ['as' => 'news-detail', 'uses' => 'NewsController@newsDetail']);
    
    Route::get('/dang-tin-ky-gui.html', ['as' => 'ky-gui', 'uses' => 'DetailController@kygui']);
    Route::get('/dang-tin-thanh-cong.html', ['as' => 'ky-gui-thanh-cong', 'uses' => 'DetailController@kyguiSuccess']);    
    Route::post('/post-ky-gui', ['as' => 'post-ky-gui', 'uses' => 'DetailController@postKygui']);    

    Route::post('/dang-ki-newsletter', ['as' => 'register.newsletter', 'uses' => 'HomeController@registerNews']);    
    Route::post('/get-district', ['as' => 'get-district', 'uses' => 'DistrictController@getDistrict']);
    Route::post('/get-ward', ['as' => 'get-ward', 'uses' => 'WardController@getWard']);   
    Route::get('/tim-kiem.html', ['as' => 'search', 'uses' => 'ProductController@search']);
    Route::get('so-sanh.html', ['as' => 'so-sanh', 'uses' => 'CompareController@index']);
    Route::get('lien-he.html', ['as' => 'contact', 'uses' => 'HomeController@contact']);
    Route::get('{slug}.html', ['as' => 'danh-muc', 'uses' => 'ProductController@cate']);


});

