<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class Teacher {

    public function getTeacher(){

      //$rezultat = DB::table('teacher')->get();
      $rezultat2= DB::select("SELECT t.firstName, t.lastName, t.tagName, t.biography, i.src FROM teacher t Inner JOIN image i ON t.image_id = i.id");
      return $rezultat2;
    
    }
}
        
?>