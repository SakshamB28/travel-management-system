<?php
session_start();
$connection=mysqli_connect("localhost","root","","travelling");
?>
<html>
<head>
<title>PAYMENT</title>
<style>
body {
	margin:0;
	background-repeat: no-repeat;
  	background-size: 100% 100%;
	background-image: url('tra8.jpg');
}
#header {
	color:black;
	color:black;
	background-color:#fff;
	width:100%;
	height:75px;
	z-index:90;
	text-align:center;
	padding: 20px;
}
.footer {
  padding: 20px;
  text-align: center;
  overflow: hidden;
  bottom:0;
  z-index:20;
 position: relative;
 opacity: 1.0;
 width:100%
}
.footer p {
	position: relative;
	text-align: right;
	color:black;
	font-size:10px;
}
ul
{
  margin: 0px;
  padding:0px;
  list-style: none;
  text-decoration-color: #0033cc;
}
ul li
{
  float: right;
  width: 150px;
  height: 40px;
  background-color: black;
  opacity: .8;
  line-height: 40px;
  text-align: center;
  font-size: 20px;
  margin-right: 2px;
  border:2px solid green;
  border-radius:8px;
}
ul li a
{
  text-decoration: none;
  color: white;
  display: block;
}
ul li a:hover
{
  background-color: green;
  border-radius:4px;
}
#calc {
	left:50%;
	margin:0 auto;
	color:black;
	background-color:white;
	width:300px;
	height:200px;
	padding:20px;
}
</style>
</head>
    <body>
			<ul>
				<li><a href="main.php">Home</a></li>
			</ul>
	<div id="header"><h1>PAYMENTS</h1></div>
        <br><br><br><br><br>
		<?php
         $c=$_SESSION['f'];
				 $c = (int)$c;
		?>
		<div id="calc">
		<form>
			No. of Days:<input type="text" name="days" value="1"/><br><br>
			No. of Guests:<input type="text" name="guest" value="1"/><br><br>
			<input type="submit" name="pays" value="Book"/><br><br>
		</form>
		<?php if(isset($_GET['days'])) {
		$a=$_GET['days'];
		$b=$_GET['guest'];
		$a = (int)$a;
		$b = (int)$b;
		$amt = ($a*$b*$c);
		echo "Total Amount: Rs. ".$amt. "<br> Booking Succesful!"; }?><br/>
		</div>

		<br><br><br><br><br><br><br><br><br><br><br><br>
		<div class="footer">
		<p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
	</div>
    </body>
</html>
