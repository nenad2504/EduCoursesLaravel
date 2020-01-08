<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class Course {

    public function index(){

        $rezultat = 
         DB::table('courses')
        ->select('courses.title','courses.description','courses.price','courses.count_user','courses.count_like','courses.rating','courses.duration', 'image.src', 'teacher.firstName', 'teacher.lastName', 'courses_category.name')
        ->leftJoin('image','courses.image_id', '=' , 'image.id')
        ->leftJoin('teacher','courses.teacher_id' ,'=', 'teacher.id')
        ->leftJoin('courses_category','courses.category_id' ,'=', 'courses_category.id')
        ->get();
     
      return $rezultat;
    
    }
}
        
?>