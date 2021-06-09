<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>dark profile settings - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	body{margin-top:20px;
color: #bcd0f7;
    background: #9aa1b4;
}
.account-settings .user-profile {
    margin: 0 0 1rem 0;
    padding-bottom: 1rem;
    text-align: center;
}
.account-settings .user-profile .user-avatar {
    margin: 0 0 1rem 0;
}
.account-settings .user-profile .user-avatar img {
    width: 90px;
    height: 90px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 100px;
}
.account-settings .user-profile h5.user-name {
    margin: 0 0 0.5rem 0;
}
.account-settings .user-profile h6.user-email {
    margin: 0;
    font-size: 0.8rem;
    font-weight: 400;
}
.account-settings .about {
    margin: 1rem 0 0 0;
    font-size: 0.8rem;
    text-align: center;
}
.card {
    background: #394269;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border: 0;
    margin-bottom: 1rem;
}
.form-control {
    border: 1px solid #0c43db;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    font-size: .825rem;
    background: #f2f3f6;
    color: #bcd0f7;
}


    </style>
</head>
<body style="background-image: url('header.jpg'); background-size: cover">
<div class="container">
<div class="row gutters">
	<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
		<div class="card h-100">
			<div class="card-body">
				<div class="account-settings">
					<div class="user-profile">
						<div class="user-avatar">
							<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Maxwell Admin">
						</div>
						<h5 class="user-name"><%=request.getParameter("name")%></h5>
						
					</div>
					<div class="about">
						<h5 class="mb-2 text-primary"></h5>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
		<div class="card h-100">
			<div class="card-body">
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<h3 class="mb-3 text-primary">Code-Battle</h>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="first Name">Date</label><br>
							<input type="datetime-local" id="" name="date"><br><br>
  							<input type="submit" class="btn btn-primary">
						</div>
					</div>
                                   
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="eMail">Participant List</label><br>
							<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='participant_codebattle.jsp'"  >view</button>
						</div>
					</div>
                                    
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="phone">Test Form</label><br>
							<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='test_codebattle.html'" >view</button>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="result">Result</label> List</label><br>
							<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='result_codebattle.html'">view</button>
						</div>
					</div>
					
				</div><br>
                
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<h3 class="mb-3 text-primary">Poster Presentation </h3>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="Street">Date</label><br>
							<input type="datetime-local" id="" name="date"><br><br>
  							<input type="submit" class="btn btn-primary">
						</div>
					</div>
					
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="participant">Participant List</label><br>
							<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='participant_poster.jsp'">view</button>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="Test">View Poster</label><br>		
							<button type="button" id="submit" name="submit" class="btn btn-primary"onclick="document.location='testform_poster.html'">view</button>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="result">Create Result</label><br>
							<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='result_poster.html'">view</button>
						</div>
					</div>
				<br><br>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
					<div class="form-group">
						<label for="result">View Result</label><br>
						<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='result_poster.html'">view</button>
					</div>
				</div>
			</div><br><br>
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<h3 class="mb-3 text-primary">SETTING</h3>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="New Password">Change password</label>
							<input type="name" class="form-control" id="Street" placeholder="New Password"><br>
							<button type="button" id="submit" name="submit" class="btn btn-primary">Update</button>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="ciTy">Change image</label>
							<input type="file" id="myFile" name="filename"><br><br>
  							<input class="btn btn-primary" type="submit">
						</div>
					</div>
				
				
				</div>	<br><br>

				
					
					
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<div>
							<button type="button" id="submit" name="submit" class="btn btn-primary" onclick="document.location='homepage.html'">Log Out</button>
							
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
</div>
</div>
                                              
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>