
    <!--================ Start Events Area =================-->
    <div class="events_area">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-5">
              <div class="main_title">
                <h2 class="mb-3 text-white">Upcoming Events</h2>
                <p>
                  Replenish man have thing gathering lights yielding shall you
                  
                </p>
              </div>
            </div>
          </div>
          <div class="row">
          
            @foreach ($eventData as $e)
               
               @component('component.events_component',['events'=>$e])
                   
               @endcomponent
            @endforeach

            
  
            <div class="col-lg-12">
              <div class="text-center pt-lg-5 pt-3">
                <a href="#" class="event-link">
                  View All Event <img src="{{ asset('img/next.png') }}" alt="" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--================ End Events Area =================-->