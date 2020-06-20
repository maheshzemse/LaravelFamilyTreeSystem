@extends('layout')


@section('contents')

<!DOCTYPE html>
<html>
<head>
	<title>login</title>
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
	<h1>LOGIN</h1>

	@if(Session::get('status'))
		<div class="alert alert-success alert-dismissible fade show" role="alert">
{{Session::get('status')}}  
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>


		@endif

 <div class="row"> 
<div class="col-lg-6">
	<form action="login" method="post" >
		@csrf
		
		<div class="form-group">
    <label>Email</label>
    <input type="email" name="email" class="form-control" placeholder="Enter Email">
  </div>

   <div class="form-group">
    <label>Password</label>
    <input type="password"name="password" class="form-control" placeholder="Enter Password">
  </div>
    <button type="submit" class="btn btn-info">LOGIN</button>
    <a href="/register" class="btn btn-info">REGISTER</a>
  </div>
 

	</form>
  

  <div class="col-lg-6 col-mg-4 col-12">
    <div class="img">
      <img style="height: 300px;width: 500px" src="2.jpeg">
      
    </div>
  </div>
</div>

</body>
</html>



@endsection