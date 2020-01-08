<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\MainSlider;
use App\Models\AwesomeFeature;
use App\Models\UpcomingEvents;
use App\Models\Course;

class PagesController extends Controller
{
    public $data =[];

private $coursesExample = [];

// one object 
public function awesomeFeature(){
    
 $featureModel2 = new AwesomeFeature();
 $featureModel = $featureModel2->index();
 return $featureModel;
}


public function course(){
      //upcoming events data
      $courses = new Course();
      $course2222 = $courses->index();
      return $course2222;
      //$course2222['course'] = $course;
      //dd($course2222);
}

    public function showHome(){
       
        // teacher data
        $model = new Teacher();
        $allTeacher = $model->getTeacher();
        $data['teachers'] = $allTeacher;

        // course
        $data['coursesExample'] = $this->coursesExample;

        

        //main slider data
        $model2 = new mainSlider();
        $data2 = $model2->index();
        $data['data2'] = $data2;

        //awesome feature data
      
        $feature = $this->awesomeFeature();
        $data['feature'] = $feature;

        //upcoming events data
        $model4 = new UpcomingEvents();
        $event = $model4->index();
        $data['eventData'] = $event;
       // dd( $event);


          //upcoming events data
            $courseData = $this->course();
            $data['course']=$courseData;

        

        return view('home', $data);
    }


  


    public function showAbout(){
        $title = "About Us";

        return view('about', compact('title'));
    }


    public function  showCourses(){

        //awesome feature data
        $feature = $this->awesomeFeature();
        $features['awesomeFeature'] = $feature;
        $features['awesomeFeature'] = $feature;

              //upcoming events data
              $courseData = $this->course();
              $course['course']=$courseData;

        $title = "Courses";

        $datas['coursesExample'] = $this->coursesExample;
        return view('courses', compact('title'), $datas)
        ->with('feature', $feature)
        ->with('course', $courseData);
    }


    public function showCourseDetails(){
        $title = "Courses Details";

        return view('course_details', compact('title'));
    }


    public function showBlog(){
        $title = "Blog";

        return view('blog', compact('title'));
    }


    public function showBlogDetalis(){
        $title = "Blog Details";

        return view('blog_details', compact('title'));
    }

    public function showContact(){
        $title = "Contact";

        return view('contact', compact('title'));
    }

}
