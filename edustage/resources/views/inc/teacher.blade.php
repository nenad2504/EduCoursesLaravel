 <!--================ Start Trainers Area =================-->
 <section class="trainer_area section_gap_top">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-5">
          <div class="main_title">
            <h2 class="mb-3">Our Expert Trainers</h2>
            <p>
              Replenish man have thing gathering lights yielding shall you
            </p>
          </div>
        </div>
      </div>
      
      <div class="row justify-content-center d-flex align-items-center">
       
        @foreach ($teachers as $row)
        <div class="col-lg-3 col-md-6 col-sm-12 single-trainer">
          
            <div class="thumb d-flex justify-content-sm-center">
              <img class="img-fluid" src="{{$row->src}}" alt="" />
            </div>
            <div class="meta-text text-sm-center">
              <h4>{{$row->firstName}}{{$row->lastName}}</h4>
              <p class="designation">{{$row->tagName}}</p>
              <div class="mb-4">
                <p>
                    {{$row->biography}}
                </p>
              </div>
              <div class="align-items-center justify-content-center d-flex">
                <a href="#"><i class="ti-facebook"></i></a>
                <a href="#"><i class="ti-twitter"></i></a>
                <a href="#"><i class="ti-linkedin"></i></a>
                <a href="#"><i class="ti-pinterest"></i></a>
              </div>
            </div>
          </div>
          @endforeach
    
      </div>
     
    </div>
  </section>