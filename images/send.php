<!DOCTYPE html>

<html>
	<head>
		<meta charset = "UTF-8">
		<title> DATABASE with PHP </title>
	</head>
	<body>
		


	
		<?php
		include('config.php');
		//Recieve the data from user
		$name = $_POST['name'];
		$dept = $_POST['dept'];
		$email = $_POST['email'];

		
		//send data to database
		$stmt = $conn->prepare("INSERT INTO std (std_name, std_dept, std_email) VALUES (?, ?, ?)");
		$stmt->bind_param("sss", $name, $dept, $email);
		$stmt ->execute();
		
		echo " <p style='color:green'> Ok, Your Info is sent successfully ";

	
		?>


	</body>
</html>