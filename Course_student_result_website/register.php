<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="header">
  	<h2>Register</h2>
  </div>

  <form class="form-horizontal form-group" method="post" action="register.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
      <div class="form-group">
  	  <label class="control-label col-sm-2">Username</label>
      <div class="col-sm-10">
  	  <input type="text" class="form-control" name="username" value="<?php echo $username; ?>">
  	</div>
  </div>
</div>
  	<div class="input-group">
      <div class="form-group">
  	  <label class="control-label col-sm-2">Email</label>
      <div class="col-sm-10">
  	  <input type="email" class="form-control" name="email" value="<?php echo $email; ?>">
  	</div>
  </div>
</div>
  	<div class="input-group">
        <div class="form-group">
  	  <label class="control-label col-sm-2">Password</label>
      <div class="col-sm-10">
  	  <input type="password" class="form-control" name="password_1">
    </div>
  </div>
  	</div>
  	<div class="input-group">
      <div class="form-group">
  	  <label class="control-label col-sm-2">Confirm password</label>
      <div class="col-sm-10">
  	  <input type="password" class="form-control" name="password_2">
  	</div>
  </div>
</div>
  	<div class="input-group">
      <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
  	  <button type="submit" class="btn btn-default" name="reg_user">Register</button>
  	</div>
  </div>
</div>
  	<p class="alert">
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
  </form>
</body>
</html>
