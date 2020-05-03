<html>
<head><title>User Login</title></head>
<body>
	<link href="register.css" rel="stylesheet" type="text/css">
	<ul>
	  <li><a href="contact.php">Contact Us</a></li>
	  <li><a>Sign Up</a>
	    <ul>
	      <li><a href="Login.php">SignIn</a></li>
	    </ul>
	  </li>
	  <li><a href="main.php">Home</a></li>
	</ul>
	<form method="POST" action="register.php" class="centered">
		<div>
				<h2>Create an account</h2>
				<table>
				<tr>
					<td><h1>Username</h1></td>
					<td><input type="text" name="username" required class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>Password</h1></td>
					<td><input type="password" name="password" required class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>Re-enter Password</h1></td>
					<td><input type="password" name="password2" required class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>First Name</h1></td>
					<td><input type="text" name="first_name" required class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>Last Name</h1></td>
					<td><input type="text" name="last_name" required class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>Email</h1></td>
					<td><input type="text" name="email" required class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>Street</h1></td>
					<td><input type="text" name="street" class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>City</h1></td>
					<td><input type="text" name="city" class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>State</h1></td>
					<td><input type="text" name="state" class="textInput"/></td>
				</tr>
				<tr>
					<td><h1>PinCode</h1></td>
					<td><input type="text" name="pincode" class="textInput"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="register_btn" Value="Register" class="btn"/></td>
				</tr>
			</table>
		</div>

	</form
<?php
$db=mysqli_connect("localhost","root","","travelling");
if($db === false)
{
	 die("ERROR: Could not connect. " . mysqli_connect_error());
}
if(isset($_POST['register_btn']))
{
	$username=mysqli_real_escape_string($db,$_POST['username']);
	$password=mysqli_real_escape_string($db,$_POST['password']);
	$password2=mysqli_real_escape_string($db,$_POST['password2']);
	$first_name=mysqli_real_escape_string($db,$_POST['first_name']);
	$last_name=mysqli_real_escape_string($db,$_POST['last_name']);
	$email=mysqli_real_escape_string($db,$_POST['email']);
	$street=mysqli_real_escape_string($db,$_POST['street']);
	$city=mysqli_real_escape_string($db,$_POST['city']);
	$state=mysqli_real_escape_string($db,$_POST['state']);
	$pincode=mysqli_real_escape_string($db,$_POST['pincode']);
	if($password==$password2)
	{
		$sql="INSERT INTO  users(Username,Password,Fname,Lname,Email,Street,City,State,Pincode) VALUES ('$username','$password','$first_name','$last_name','$email','$street','$city','$state','$pincode')";
		mysqli_query($db,$sql);

		echo "<h1>Registration Successful</h1>";

	}
	else
	{
		echo "<h1>The passwords do not match</h1>";
	}
}
?>
<br><br><br><br><br>
<div class="footer">
  <p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
</div>
</body>
</html>
