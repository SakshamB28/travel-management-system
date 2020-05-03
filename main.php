<?php session_start(); ?>
<html>
<head>
</head>
<title>Wander</title>
<link href="mainstyle.css" rel="stylesheet" type="text/css">
<body>
  <div class="bgimg">
      <ul>
        <li><a href="contact.php">Contact Us</a></li>
        <li><a>Login</a>
          <ul>
            <li><a href="register.php">Signup</a></li>
            <li><a href="Login.php">SignIn</a></li>
          </ul>
        </li>
      </ul>
    <form method=post action="main.php"  class="centered">
    <h1>From:
    <input type="text" name="From" placeholder="Place of Origin"/>
    To:
    <select name="To">
    <option>--Select--</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Bhopal">Bhopal</option>
    <option value="Chennai">Chennai</option>
    <option value="Dehradun">Dehradun</option>
    <option value="Delhi">Delhi</option>
    <option value="Goa">Goa</option>
    <option value="Gwalior">Gwalior</option>
    <option value="Kolkata">Kolkata</option>
    <option value="Lucknow">Lucknow</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Munnar">Munnar</option>
    </select>
    <?php
    $db=mysqli_connect("localhost","root","","travelling");
    if($db === false)
    {
       die("ERROR: Could not connect. " . mysqli_connect_error());
    }
    ?>
    Departure Date
    <select name="dt" id="dt">
    <?php
      $dt=$_POST["dt"];
      if (!isset($dt) || $dt<1 || $dt>31 || !is_numeric($dt)) $dt = date("D",time() - date('Z') + ($gmt * 3600));
      for ($N=1; $N<=31; $N++)
      {
          echo "<option";
          if ($N==$dt)
          echo " SELECTED";
          echo ">$N</option>";
      }
    ?>
    </select>
    <select name="mo" id="mo">
    <?php
      $mo=$_POST['mo'];
      if (!isset($mo) || $mo<1 || $mo>12 || !is_numeric($mo)) $mo = date("m",time() - date('Z') + ($gmt * 3600));
      for ($N=1; $N<=12; $N++)
      {
          echo "<option value='$N'";
          if($N==$mo)
          echo " SELECTED";
          echo ">$N</option>";
      }
    ?>
    </select>
    <select name="yr" id="yr">
    <?php
      $yr=$_POST["yr"];
      if (!isset($yr) || $yr<1970 || $yr>2036 || !is_numeric($yr)) $yr = date("Y",time() - date('Z') + ($gmt * 3600));
      for ($N=2019; $N<=2036; $N++)
      {
          echo "<option";
          if ($N==$yr)
          echo " SELECTED";
          echo ">$N</option>";
      }
    ?>
    </select>
    <button type="submit" name="sub" class="btn"><a>Proceed</a></button></h1>
    <?php
      if(isset($_POST['sub']))
      {
        $f=mysqli_real_escape_string($db,$_POST['From']);
        $t=mysqli_real_escape_string($db,$_POST['To']);
        $d=mysqli_real_escape_string($db,$_POST['dt']);
        $_SESSION['cname'] = $t;
        $sql="INSERT INTO  guest (GoingFrom,GoingTo,Departure) VALUES ('$f','$t','$yr.$mo.$d')";
        $r=mysqli_query($db,$sql);
        if(!$r)
        {
          die('Could not insert data: ' . mysqli_connect_error());
        }
        header('Location: placedes.php');
      }
      ?>
    </form>
  </div>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <div class="footer">
    <p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
  </div>
</body>
</html>
