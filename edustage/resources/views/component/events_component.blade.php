
    

<div class="col-lg-6 col-md-6">
  <div class="single_event position-relative">
    <div class="event_thumb">
      <img src="{{$events->src}}" alt="" />
    </div>
    <div class="event_details">
      <div class="d-flex mb-4">
        <?php 
          $date = strtotime($events->date);
        ?>
        <div class="date"><span>{{date('d',$date )}}</span><span>{{date('M',$date )}}</span></div>

        <div class="time-location">
          <p>
            <span class="ti-time mr-2"> {{$events->lessonTime}}</span> 
          </p>
          <p>
            
            <span class="ti-location-pin mr-2"> {{$events->firstName}} {{$events->lastName}}</span> 
          </p>
        </div>
      </div>
      <p>
       
        <small>{{$events->title}}</small>
      </p>
      <p>
       
        <small>{{substr($events->content,0,98)}}</small>
      </p>
      <a href="#" class="primary-btn rounded-0 mt-3">View Details</a>
    </div>
  </div>
</div>

