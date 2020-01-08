<!DOCTYPE html>
<html lang="en">
  @include('inc.head')


  <body>
  
<!--================ Register form =================-->
@include('inc.register_form')   
<!--================ End Register form =================-->

<!--================ Register form =================-->
@include('inc.login_form')   
<!--================ End Register form =================-->

<!--================ Header =================-->
@include('inc.header')   
<!--================ End Header =================-->

<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    
@include('inc.logo-dark')
@include('inc.nav')

</div>
</header>
<!--================ End Header Menu Area =================-->
@yield('banner')



@yield('feature_area')
@yield('courses')
@yield('registration')
@yield('teacher')
@yield('events')
@yield('testimonials')

@include('inc.footer')
</body>
</html>
