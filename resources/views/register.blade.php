@extends('layout')


@section('contents')

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<h1>REGISTER</h1>
  <form action="register" method="POST" >
    @csrf
    <div class="col-lg-6">
  <div class="form-group">
    <label>Name</label>
    <input type="text" name="name" class="form-control" placeholder="Enter Name">
  </div>

   <div class="form-group">
    <label>Password</label>
    <input type="password"name="password" class="form-control" placeholder="Enter Password">
  </div>
 
  <div class="form-group">
    <label >Email</label>
    <input type="text"name="email" class="form-control" placeholder="Enter Email">
  </div>
  <div class="form-group">
    <label >Age</label>
    <input type="number"name="age" class="form-control" placeholder="Enter age">
  </div>


  

  <button type="submit" class="btn btn-info">REGISTER</button>
  </div>
</form>

</body>
</html>



@endsection