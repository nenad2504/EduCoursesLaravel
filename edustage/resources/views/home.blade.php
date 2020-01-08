@extends('layouts.app')

@section('banner')
    

    <!--================ Start Home Banner Area =================-->
    <section class="home_banner_area">
      <div class="banner_inner">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="banner_content text-center">
                <p class="text-uppercase">
                  @foreach ($data2 as $row )    
                 {{$row->title}}
                </p>
                <h2 class="text-uppercase mt-4 mb-5">
                  {{$row->content}}
                </h2>
                @endforeach
                <div>
                  <a href="{{ url('/about') }}" class="primary-btn2 mb-3 mb-sm-0">learn more</a>
                  <a href="{{ url('/courses') }}" class="primary-btn ml-sm-3 ml-0">see course</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================ End Home Banner Area =================-->
    @endsection

    @section('feature_area')
        
    @include('inc.feature_area')
    
    @endsection

    @section('courses')
        
    
   @include('inc.courses_slider')
    @endsection



@section('registration')
    @include('inc.registration')
@endsection

    @section('teacher')

   @include('inc.teacher')
    <!--================ End Trainers Area =================-->
        
    @endsection

    @section('events') 
      @include('inc.events')
    @endsection


    @section('testimonials')
   
       @include('inc.testimonials')
    @endsection
   
