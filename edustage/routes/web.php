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

Route::get('/', function () {
    return view('welcome');
});

// Pages
Route::get('', 'PagesController@showHome');
//Route::get('/about', 'PagesController@showAbout');
Route::get('/courses', 'PagesController@showCourses');
Route::get('/course_details', 'PagesController@showCourseDetails');
Route::get('/blog', 'PagesController@showBlog');
Route::get('/blog_details', 'PagesController@showBlogDetalis');
Route::get('/contact', 'PagesController@showContact');

//Route::get('/ss', 'FeatureController@index');
Route::get('/about', 'AboutController@index');


Route::get('/kurs', 'CourseController@index');



// aboutcontent


Route::resource('/admin/about', 'AboutContentController');








// Location
Route::get('get-ip-details', function () {

	$ip = '66.102.0.0';

    $data = \Location::get($ip);

    dd($data);

});

// Teacher
//Route::get('/teacher', 'TeacherController@index');










