<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class AwesomeFeature {

    public function index(){

      $rezultat = DB::table('awesomefeature')->get();
     
      return $rezultat;
    
    }
}
        
?>