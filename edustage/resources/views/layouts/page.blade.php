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

@include('inc.headerWhite')    
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      
  @include('inc.logo-light')
  @include('inc.nav')
  
  </div>
  </header>
  <!--================ End Header Menu Area =================-->


@yield('Home Banner Area')

@yield('content')


@include('inc.footer')
</body>
</html>