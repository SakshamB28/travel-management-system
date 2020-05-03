<html>
    <head>
        <title>Login</title>
    </head>
    <body>
      <link href="Login.css" rel="stylesheet" type="text/css">
      <ul>
    	  <li><a href="contact.php">Contact Us</a></li>
    	  <li><a>Sign in</a>
    	    <ul>
    	      <li><a href="register.php">SignUp</a></li>
    	    </ul>
    	  </li>
    	  <li><a href="main.php">Home</a></li>
    	</ul>
        <form method="post" action='Login.php' class="centered">
          <div>
            <h2>Sign in</h2>
            <table>
              <tr>
                <td><h1>Username</h1></td>
                <td><input type="text" name="user" placeholder="user" required></td>
              </tr>
              <tr>
                <td><h1>Password</h1></td>
                <td><input type="password" name="pass" required><br/></td>
              </tr>
              <tr>
                <td></td>
                <td><input type="Submit" name="submit" value="Submit" class="btn"></td>
              </tr>
            </table>
          </div>
        </form>
        <?php
      $db=mysqli_connect("localhost","root","","travelling");
       if($db === false)
       {
          die("ERROR: Could not connect. " . mysqli_connect_error());
       }
       if(isset($_POST['submit']))
       {
         $u=mysqli_real_escape_string($db,$_POST['user']);
         $p=mysqli_real_escape_string($db,$_POST['pass']);
         $sql="Select * from users where Username='$u' AND Password='$p'";
         $r=mysqli_query($db,$sql);

        if (!$r)
        {
          printf("Error: %s\n", mysqli_error($db));
          exit();
        }
        echo "<div class=\"log\">";
         $row= mysqli_fetch_array($r);
         if($row['Username']==$u && $row['Password']==$p)
         {
           echo "<h1>Login Successful! Welcome " .$row["Username"];
           echo "</h1>";
             header("Location: booking.php");
         }
         else {
           echo "<h1>Failed to Login!</h1>";
         }
         echo "</div>";
       }
   ?>
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <div class="footer">
     <p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
   </div>
    </body>
    </html>
