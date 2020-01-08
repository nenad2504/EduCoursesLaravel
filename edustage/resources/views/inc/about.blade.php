<!--================ Start About Area =================-->
<section class="about_area section_gap">
    <div class="container">
      <div class="row h_blog_item">
          @foreach ($about as $row)
                <div class="col-lg-6">
                <div class="h_blog_img">
                    <img class="img-fluid" src="{{$row->src}}" alt="" />
                </div>
                </div>
                <div class="col-lg-6">
                <div class="h_blog_text">
                    <div class="h_blog_text_inner left right">

                    
                    <h4>{{$row->title}}</h4>
                    <p>
                        {{$row->content}}
                    </p>
                    <a class="primary-btn" href="#">
                        Learn More <i class="ti-arrow-right ml-1"></i>
                    </a>
                    </div>
                </div>
                </div>
        @endforeach
      </div>
    </div>
  </section>
  <!--================ End About Area =================-->
  