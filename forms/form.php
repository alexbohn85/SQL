<html>
	<head>
		<title>User Registration</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	</head>
	<body>
		<?php
			$DEBUG=true;
			$servername = "localhost";
			$username = "root";
			$password = "mysql";
			$database = "Registration";
			
			// Create connection
			$conn = new mysqli($servername, $username, $password, $database);
			// Check connection
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}		
			

			// Retrieve HTTP POST fields
			$user_firstname = $_POST["firstname"];
			$user_lastname = $_POST["lastname"];
			$user_email = $_POST["email"];
			$user_password = $_POST["password"];
			$user_confirm_password = $_POST["confirmpassword"];

			// allow empty password but database dont accept null
			if($user_password == null){
				$user_password = "";
				debug('$user_password is null');
			}else{
				$user_password = $_POST["password"];
			}
			
			debug('$email: ', $user_email);
			debug('$password: ', $user_password);
			debug('$user_confirm_password: ', $user_confirm_password);
			
			if($user_password == $user_confirm_password){
				
				// useless encription..
				$user_password = md5($user_password);

				// check if the user already exists in the database
				$sql_query = "SELECT email FROM Users WHERE email = '$email'";
				$result = $conn->query($sql_query);

/*
				if($result->num_rows != null){
					debug('$result->num_rows: ', $result->num_rows);
				}else{
					debug('$result', " is null, no users were found in the database!");					
				} 
*/
				
				if($result->num_rows == 0){
					$sql_query = "INSERT INTO Users (firstname, lastname, email, password, active, created, modified)
					VALUES ('$user_firstname', '$user_lastname', '$user_email', '$user_password', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";						
					echo (mysqli_query($conn, $sql_query) ? "new user registrated<br>" : "something went wrong, we could not register your user<br> " . mysqli_error($conn));
					echo "<a href='login.php' class='btn btn-primary'>Go to login</a>";
				}else{
					echo "User is already registrated!" . mysqli_error($conn) ."<br>";
					echo "<a href='index.php' class='btn btn-primary'>Go back</a>";
				}				
				
			}else {
				echo "your password is not the same<br>please try again <a href='index.php'>back</a><br>";
			}


			function debug($header, $message){
				if($DEBUG){
					echo "DEBUG: ".$header." ".$message."<br>";
				}
			}

		?>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
