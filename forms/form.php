<html>
	<head>
		<title>User Registration</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	</head>
	<body>
		<?php
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
			
			$user_email = $_POST["email"];
			$user_password = $_POST["password"];
			$user_confirm_password = $_POST["confirmpassword"];
			
			echo "$user_email<br>";
			echo "$user_password<br>";
			echo "$user_confirm_password<br>";
			
			if($user_password == $user_confirm_password){
				// check if the user already exists in the database
				$sql_query = "SELECT email FROM Users";
				if(!mysqli_query($conn, $sql_query)){
					$sql_query = "INSERT INTO Users
						(email, password, active, created, modified)
					VALUES ('$user_email', '$user_password', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
					// ($conn->query($sql_query) == true)
					echo (mysqli_query($conn, $sql_query) ? "new user registrated" : "something went wrong, we could not register your user".mysqli_error($con));
					echo "<a href='login.php' class='btn btn-primary'>Go to login</a>";
				}else{
					echo "User is already registrated!".mysqli_error($con);
					echo "<a href='index.php' class='btn btn-primary'>Go back</a>";
				}
			}else {
				echo "your password is not the same<br>";
			}
		?>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
