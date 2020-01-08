<!--================ Start Feature Area =================-->
<section class="feature_area section_gap_top">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-5">
          <div class="main_title">
            <h2 class="mb-3">Awesome Feature</h2>
            <p>
              Replenish man have thing gathering lights yielding shall you
            </p>
          </div>
        </div>
      </div>
      <div class="row">
        @foreach ($feature as $rows )
          <div class="col-lg-4 col-md-6">
            <div class="single_feature">
              <div class="icon"><span class="{{$rows->icon}}"></span></div>
              <div class="desc">
                <h4 class="mt-3 mb-2">{{$rows->title}}</h4>
                <p>
                  {{$rows->content}}
                </p>
              </div>
            </div>
          </div>
        @endforeach

    
      </div>
    </div>
  </section>
  <!--================ End Feature Area =================-->