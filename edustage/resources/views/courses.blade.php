@extends('layouts.page')

 @section('Home Banner Area')
    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="overlay"></div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-6">
              <div class="banner_content text-center">
                <h2>{{$title}}</h2>
                <div class="page_link">
                  <a href="index.html">Home</a>
                  <a href="courses.html">{{$title}}</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    @endsection

    @section('content')
  
    <div class="courses_popular">
          <!--================ Start Popular Courses Area =================-->
    @include('inc.courses_slider')
    <!--================ End Popular Courses Area =================-->
    </div>

    <!--================ Start Registration Area =================-->
    @include('inc.registration')
      <!--================ End Registration Area =================-->

    <!--================ Start Feature Area =================-->
    @include('inc.feature_area')
    <!--================ End Feature Area =================-->
    @endsection