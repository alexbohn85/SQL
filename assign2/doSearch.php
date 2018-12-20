<!doctype html>
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
			
			$query = $_POST["query"];			
			
			
			
			$sql_query = "SELECT * FROM Users 
				WHERE firstname = '$query' OR lastname = '$query' OR email = '$query'";

			$result = $conn->query($sql_query);			
			echo "num of rows: " . $result->num_rows;
			
			if($result->num_rows > 0){
				$i = 1;
				echo "<p>Results:</p>"
				while($row = mysqli_fetch_assoc($result)){
					echo "
						<div class='container'>
					        <div class='row'>
					            <div class='col-12'>
					                <p>".$i." - ".$row["email"]."</p>					                
					            </div>
					        </div>
					    </div>
	    			";
	    			$i = $i + 1;
				}

			}else {				
				echo "
					<div class='container'>
				        <div class='row'>
				            <div class='col-12'>
				                <p>Sorry, nothing was found in our database.</p>
				                <a href='search_user.php' class='btn btn-primary'>Search</a>
				                <a href='login.php' class='btn btn-primary'>Login Page</a>
				            </div>
				        </div>
				    </div>
    			";
			}


		?>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
