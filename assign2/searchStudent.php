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
			$user_firstname = strtolower($_POST["search"]);

			//validacao dos campos
			//TODO			

			// select student by firstname
			$sql_query = "SELECT `studentID`, `firstName`, `lastName`, `gender`, `street`, `city`, `country`, `phoneNumber`, `email` FROM `Students` WHERE `firstName` = '$user_firstname';";
			
			// execute query
			$result = $conn->query($sql_query);
			
			$success_h2 = "<div class='container my-5'>
            					<div class='row'>
                					<div class='col-12'>
                    				<h2>".ucwords($user_firstname)." ".ucwords($user_lastname)." registered successfully!</h2>
                					</div>
            					</div>
        					</div>";

        	$fail_h2 = "
        			<div class='container my-5'>
            			<div class='row'>
                			<div class='col-12'>
                    			<h2>'".ucwords($user_firstname)."' was not in our records.</h2><br>".mysqli_error($conn)."
                			</div>
            			</div>
        			</div>
        			";

			if($result->num_rows > 0){
        		$i = 1;
				echo "
        			<div class='container my-5'>
            			<div class='row'>
                			<div class='col-12'>
                    			<h2>".$result->num_rows." results found.</h2>
                			</div>
            			</div>
        			</div>
        			";

				while($row = mysqli_fetch_assoc($result)){
					echo "
						<div class='container'>
					        <div class='row'>
					            <div class='col-12'>
									<hr>
									<h5>".$i."</h5>
					                <p>Name: ".ucwords($row["firstName"])." ".ucwords($row["lastName"])."</p>
					                <p>Gender: ".ucwords($row["gender"])."</p>
					                <p>Address: ".ucwords($row["street"]).", ".ucwords($row["city"]).", ".ucwords($row["country"])."</p>
					                <p>Phone: ".$row["phoneNumber"]."</p>
									<p>Email: ".$row["email"]."</p>
					            </div>
					        </div>
					    </div>";
	    			$i = $i + 1;
				}

			}else {
				echo $fail_h2;
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
