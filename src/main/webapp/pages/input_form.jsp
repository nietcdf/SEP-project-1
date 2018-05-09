<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


  <div class="page-header" style="    background-color: green;margin: -21px 0 20px;color: whitesmoke;padding-top: 21px;">
    <h1><center>Events Tracking Application</h1>    </center>  
  </div>
			
					<form name=f1 action="handler.htm" method="post">
						 <input type="hidden" value="one" name="q_no">
						 <div class="row">
								<div class="col-lg-2">
								 </div>
								<div class="col-lg-4">
								   <label for="Input1">Name of the Event</label>
								 </div>
								 <div class="col-lg-4">
									<input type="text" class="form-control" id="Input1"  name="name_id"  placeholder="Name" required>
								 </div>
						  </div>
					
						 <div class="row">
								<div class="col-lg-2">
								 </div>
								<div class="col-lg-4">
								   <label for="exampleFormControlInput1">Do you want to repeat this Event?</label>
								 </div>
								 <div class="col-lg-4">
									  <div class="col-lg-6">
										  <input class="form-check-input" type="radio" name="isRepeat" value="1" id="defaultCheck1" onclick="document.getElementById('yes').style.display='block';document.getElementById('no').style.display='none'">
										  <label class="form-check-label" for="defaultCheck1">Yes</label>
									  </div>
									  <div class="col-lg-6">
										  <input class="form-check-input" type="radio" name="isRepeat" value="0" id="defaultCheck2"
										  onclick="document.getElementById('no').style.display='block';document.getElementById('yes').style.display='none'">
										  <label class="form-check-label" for="defaultCheck2">No</label>
									  </div>
								  </div>
						   </div>
						   <div class="row" id="yes" style="display:none">
								   <br>
								   <br>
								   <div class="col-lg-3">
										 </div>

									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Mon" value="1" >Monday
									</div>
									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Tues" value="1">Tuesday
									</div>
									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Wed" value="1">Wednesday
									</div>
									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Thurs" value="1">Thursday
									</div>
									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Fri" value="1" >Friday
									</div>
									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Sat" value="1">Saturday
									</div>
									<div class="col-lg-1">
										<input type="checkbox" id="1" name="Sun" value="1" >Sunday
									</div>
								   <div class="col-lg-2">
										 </div>
						   </div>
						   <div class="row" id="no" style="display:none">
								   <br>
								   <br>
								<div class="col-lg-2">
								 </div>
								<div class="col-lg-4">
								   <label for="Input2" >Select the Event Date </label>
								 </div>
								 <div class="col-lg-4">
									<input type="date" class="form-control" name="date" id="Input2" >
								 </div>
						  </div>

						  <div class="row">
								   <br>
								   <br>
								<div class="col-lg-2">
								 </div>
								<div class="col-lg-4">
								   <label for="Input3">Enter number of hours per day </label>
								 </div>
								 <div class="col-lg-4">
									<input type="text" class="form-control" id="Input3" name="No_of_hrs_per_day" placeholder="Hours" required>
								 </div>
						  </div>
						  <div class="row">
								   <br>
								   <br>
								<div class="col-lg-2">
								 </div>
								<div class="col-lg-4">
								   <button type="submit" class="btn btn-primary btn-lg">Submit</button>
								 </div>
								 <div class="col-lg-4">
									 <a href="pages/Exit.jsp" class="btn btn-primary btn-lg">Exit </a>
									  
						  </div>

						  


						
				</form>


</body>
</html>
