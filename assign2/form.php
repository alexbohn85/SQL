<!doctype html>
<html>
    <head>
        <title>ESL School Management System</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
		<!-- Navigation Start -->
		<?php include("template_navbar.php"); ?>

		<?php

			$DEBUG = false;
			$servername = "localhost";
			$username = "root";
			$password = "mysql";
			$database = "dbo_ELS";
			
			// Create connection
			$conn = new mysqli($servername, $username, $password, $database);
			// Check connection
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}			

			// Retrieve client data from $_POST global variable
			$user_firstname = strtolower($_POST["firstName"]);
			$user_lastname = strtolower($_POST["lastName"]);
			$user_gender = $_POST["genderRadioOption"];
			$user_street = strtolower($_POST["street"]);
			$user_city = strtolower($_POST["city"]);
			$user_country = strtolower($_POST["country"]);
			$user_phonenumber = $_POST["phoneNumber"];
			$user_email = strtolower($_POST["email"]);
		
			debug('$user_firstname: ', $user_firstname);
			debug('$user_lastname: ', $user_lastname);
			debug('$user_gender: ', $user_gender);
			debug('$user_street: ', $user_street);
			debug('$user_city: ', $user_city);
			debug('$user_country: ', $user_country);
			debug('$user_phoneNumber: ', $user_phonenumber);

			//validacao dos campos
			//TODO			

			// check if the user already exists in the database
			$sql_query = "SELECT * FROM `Students` WHERE email = '$user_email'";
			$result = $conn->query($sql_query);
			// insert new student
			if($result->num_rows == 0){
				$sql_query = "INSERT INTO `Students`(`studentID`, `firstName`, `lastName`, `gender`, `street`, `city`, `country`, `phoneNumber`, `email`) 
				VALUES (
						NULL, 
						'$user_firstname',
						'$user_lastname',
						'$user_gender',
						'$user_street',
						'$user_city',
						'$user_country',
						'$user_phonenumber',
						'$user_email'
					)
				";

				$success_h2 = "<div class='container my-5'>
            					<div class='row'>
                					<div class='col-12'>
                    				<h2>".ucwords($user_firstname)." ".ucwords($user_lastname)." registered successfully!</h2>
                					</div>
            					</div>
        					</div>";

        		$fail_h2 = "<div class='container my-5'>
            					<div class='row'>
                					<div class='col-12'>
                    			<h2>Oops, something went wrong!</h2><br>".mysqli_error($conn)."
                			</div>
            			</div>
        			</div>";

        		// executes query
        		echo (mysqli_query($conn, $sql_query) ? $success_h2 : $fail_h2);

			}else {
				$fail_h2 = "
						<div class='container my-5'>
		            		<div class='row'>
		                		<div class='col-12'>
		                    		<h2>Student already registered!</h2><br>
		                    		<a href='javascript:history.back()' class='btn btn-primary'>Go back</a>
		                		</div>
		            		</div>
		        		</div>";
				echo $fail_h2;
				echo "";
			}				

			// Utils functions
			function debug($header, $message){
				if($GLOBALS['DEBUG'] == true){
					echo "DEBUG: <strong>".$header."</strong> ".$message."<br>";
				}
			}


		?>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
