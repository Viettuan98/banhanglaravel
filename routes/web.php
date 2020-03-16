<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//frontend
Route::get('', 'frontend\HomeController@GetHome');
Route::get('contact', 'frontend\HomeController@GetContact');
Route::get('about', 'frontend\HomeController@GetAbout');
Route::group(['prefix' => 'product'], function () {
    Route::get('', 'frontend\ProductController@ListProduct');
    Route::get('detail/{id}', 'frontend\ProductController@DetailProduct');
    Route::get('addcart', 'frontend\ProductController@AddCart');
    Route::get('cart', 'frontend\ProductController@GetCart');
    Route::get('removecart/{id}', 'frontend\ProductController@RemoveCart');
    Route::get('updatecart/{rowId}/{qty}', 'frontend\ProductController@UpdateCart');
    Route::get('checkout', 'frontend\ProductController@Checkout');
    Route::post('checkout', 'frontend\ProductController@PostCheckout');
    Route::get('complete/{id_customer}', 'frontend\ProductController@complate');
});
//backend
Route::get('login', 'backend\LoginController@GetLogin')->middleware('CheckLogout');
Route::post('login', 'backend\LoginController@PostLogin');

Route::group(['prefix' => 'admin', 'middleware' => 'CheckLogin'], function () {
    Route::get('', 'backend\LoginController@GetIndex');
    Route::get('logout', 'backend\LoginController@Logout');
    //user
    Route::group(['prefix' => 'user'], function () {
        Route::get('', 'backend\UserController@ListUser');
        Route::get('add-user', 'backend\UserController@AddUser');
        Route::post('add-user', 'backend\UserController@PostAddUser');
        Route::get('edit-user/{id}', 'backend\UserController@EditUser');
        Route::post('edit-user/{id}', 'backend\UserController@PostEditUser');
        Route::get('del-user/{id}', 'backend\UserController@DelUser');
    });
    //category
    Route::group(['prefix' => 'category'], function () {
        Route::get('', 'backend\CategoryController@GetCategory');
        Route::post('', 'backend\CategoryController@PostCategory');
        Route::get('edit/{id}', 'backend\CategoryController@EditCategory');
        Route::post('edit/{id}', 'backend\CategoryController@PostEditCategory');
        Route::get('del/{id}', 'backend\CategoryController@DelCategory');
    });

    //product

    Route::group(['prefix' => 'product'], function () {
        Route::get('', 'backend\ProductController@ListProduct');
        Route::get('add', 'backend\ProductController@AddProduct');
        Route::post('add', 'backend\ProductController@PostProduct');

        Route::get('edit/{id}', 'backend\ProductController@EditProduct');
        Route::post('edit/{id}', 'backend\ProductController@PostEditProduct');
        Route::get('del/{id}', 'backend\ProductController@DelProduct');

        Route::post('add-attr', 'backend\ProductController@AddAttr');
        Route::get('detail-attr', 'backend\ProductController@DetailAttr');
        Route::get('edit-attr/{id}', 'backend\ProductController@EditAttr');
        Route::post('edit-attr/{id}', 'backend\ProductController@PostAttr');
        Route::get('del-attr/{id}', 'backend\ProductController@DelAttr');

        Route::post('add-value', 'backend\ProductController@AddValue');
        Route::get('edit-value/{id}', 'backend\ProductController@EditValue');
        Route::post('edit-value/{id}', 'backend\ProductController@PostEditValue');
        Route::get('del-value/{id}', 'backend\ProductController@DelValue');

        Route::get('add-variant/{id}', 'backend\ProductController@AddVariant');
        Route::post('add-variant/{id}', 'backend\ProductController@PostVariant');
        Route::get('edit-variant/{id}', 'backend\ProductController@EditVariant');
        Route::post('edit-variant/{id}', 'backend\ProductController@PostEditVariant');
        Route::get('del-variant/{id1}/{id2}/{id_pro}', 'backend\ProductController@DelVariant');
    });


    //order

    Route::group(['prefix' => 'order'], function () {
        Route::get('', 'backend\OrderController@ListOrder');
        Route::get('detail/{customer_id}', 'backend\OrderController@DetailOrder');
        Route::get('active/{customer_id}', 'backend\OrderController@ActiveOrcer');
        Route::get('processed', 'backend\OrderController@Processed');
    });
});
