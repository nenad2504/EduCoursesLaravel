<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class UpcomingEvents {

    public function index(){

     /*
      $rezultat = DB::table('upcomingevents')
      ->select('upcomingevents.title','upcomingevents.content','upcomingevents.data','upcomingevents.LessonsTime', 'teacher.firstName','teacher.lastName, image.src')
      ->join('image','image.id', '=' ,'upcomingevents', 'u.image_id')
      ->join('teacher','teacher.id' ,'=', 'upcomingevents', 'u.teacher_id')
      ->get();
      */
      $rezultat= DB::select("SELECT u.title, u.content, u.date, u.lessonTime, t.firstName, t.lastName, i.src FROM upcomingevents u 
      Inner Join teacher t ON t.id = u.teacher_id Inner Join image i ON i.id = u.image_id");
      return $rezultat;
    
    }
}
        
?>