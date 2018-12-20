>

<html>
<head>
	<title>ITD php Database</title>
</head>
<body>
	<?php

	$servername = "localhost";
	$username = "root";
	$password = "mysql";
	$database = "Registration";
	$conn = new mysqli($servername, $username, $password, $database);

	// Create connection

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 
		echo "Connected successfully";


	$user_email = $_POST["email"];
	$user_password = $_POST["password"];
	$user_confirm_password = $_POST["confirmpassword"];

	echo $user_email;
	echo $user_password;
	echo $user_confirm_password;

	if($user_password == $user_confirm_password){
		$sql_query = "INSERT INTO Users (email, password) VALUES ('$user_email', '$user_password')";
		$conn->query($sql_query);
	}else {
		echo "your password is not the same";
	}

	?>
	





</body>
</html>