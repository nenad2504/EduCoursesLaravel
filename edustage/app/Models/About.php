<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;


class About {

    public function index(){

      $rezultat = DB::table('about')
      ->select('image.src', 'about.title', 'about.content')
      ->join('image','about.image_id' , '=' , 'image.id')
      ->first();
     
      return $rezultat;
    
    }
}
        
?>