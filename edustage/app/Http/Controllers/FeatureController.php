<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AwesomeFeature;

class FeatureController extends Controller
{
    public function index(){
        //awesome feature data
    $model3 = new AwesomeFeature();
    $feature = $model3->index();
    $features['awesomeFeature'] = $feature;

    return view('course',$features);
    }
}
