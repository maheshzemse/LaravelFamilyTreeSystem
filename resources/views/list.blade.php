@extends('layout')


@section('contents')

<!DOCTYPE html>
<html>
<head>
	<title></title>
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
	<h5>Welcome {{Session::get('client')}}</h5> 

	
	<a style="float: right" href="logout" class="btn btn-warning" >LOGOUT </a><br><br>

@if(Session::get('status'))
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			{{Session::get('status')}}  
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    			<span aria-hidden="true">&times;</span>
  				</button>
		</div>


@endif


<h2 class="mt-3">Add Family Information</h2>
<div class="row">
	<div class="col-lg-6">
<form method="post" action="familyform">
	 @csrf
    
   
<div class="form-group">

<select name="relation" class="browser-default custom-select">
  <option selected>Select Relation</option>
  <option value="Partner">Partner</option>
  <option value="Childern">Childern</option>
  <option value="Parent">Parent </option>
</select>  

</div>

  <div class="form-group">
    <label>Name</label>
    <input type="text" name="name" class="form-control" placeholder="Enter Name">
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
<div class="col-lg-6" >
<div class="img">
	<img style="height: 300px;width: 400px" src="1.jpg">
	
</div>

</div>













</div>

<!--@foreach($data as $item)
{{$item->relation}}

@endforeach
-->

<table class="table table-striped table-hover table-bordered mt-3">
  <thead>
    <tr>
      <th scope="col">Relation</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>

    </tr>
  </thead>
  <tbody>
    
    @foreach($data as $items)
    <tr>
      
      <td>{{$items->relation}}</td>
      <td>{{$items->name}}</td>
      <td>{{$items->age}}</td>

    </tr>

      @endforeach
     </tbody>
</table>



















































</body>
</html>

@endsection
