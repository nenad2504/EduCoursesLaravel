@extends('layouts.admin')


@section('banner')
<!--================Home Banner Area =================-->
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="banner_content text-center">
            <h2>{{$title}}</h2>
            <div class="page_link">
                <a href="index.html">Home</a>
                <a href="about-us.html">{{$title}}</a>
            </div>
            </div>
        </div>
        </div>
    </div>
    </div>
</section>
<!--================End Home Banner Area =================-->



@endsection



@section('admin_panel')



<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <br/>
            <h3 aling="center">Add Data</h3>
            <br/>
    
        <form action="post" action="{{ url('aboutContent') }}">
            <div class="form-group">
                <input type="text" name="title" class="form-control" placeholder="Enter title" />
            </div>
            <div class="form-group">
                <input type="text" name="description" class="form-control" placeholder="Enter title" />
            </div>
            <div class="form-group">
                <input type="submit"  class="btn btn-primary" />
            </div>
        </form>
        </div>
    </div>
    
</div>









@endsection