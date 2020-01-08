<div class="single_course">
        <div class="course_head">
          <img class="img-fluid" src="{{ $course->src }}" alt="" />
        </div>
        <div class="course_content">
          <span class="price">{{ $course->price }}$</span>
          <span class="tag mb-4 d-inline-block"></span>
          <h4 class="mb-3">
            <a href="course-details.html">{{ $course->title }}</a>
          </h4>
          <p>
                {{ $course->description }}
          </p>
          <div
            class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4"
          >
            <div class="authr_meta">
             <!-- <img src="{{ asset('img/courses/author1.png') }}" alt="" />-->
              <span class="d-inline-block ml-2">{{$course->firstName}} {{$course->lastName}}</span>
            </div>
            <div class="mt-lg-0 mt-3">
              <span class="meta_info mr-4">
                <a href="#"> <i class="ti-user mr-2"></i>{{$course->count_user}} </a>
              </span>
              <span class="meta_info"
                ><a href="#"> <i class="ti-heart mr-2"></i>{{$course->count_like}}</a></span
              >
            </div>
          </div>
        </div>
      </div>
    
