<!-- Register form -->
<div class="modal fade" id="registerForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-info" id="exampleModalLabel">Register form</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <div id="login">
                                <form id="login-form" class="form" action="" method="post">
                                    <div class="form-group">
                                        <label for="firstName" class="text-info">First Name:</label><br>
                                        <input type="text" name="firstName" id="firstName" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName" class="text-info">Last Name:</label><br>
                                        <input type="text" name="lastName" id="lastName" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="text-info">Email:</label><br>
                                        <input type="text" name="email" id="email" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="text-info">Password:</label><br>
                                        <input type="text" name="password" id="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                        <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                    </div>
                                    <div id="register-link" class="text-right">
                                        <a href="#" class="text-info">Login here</a>
                                    </div>
                                </form>
                    
            </div>
        </div>
       
      </div>
    </div>
  </div>