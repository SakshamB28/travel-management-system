<?php session_start(); ?>
<html>
<head>
<title>Place Des</title>
</head>
<body>
  <link href="placede.css" rel="stylesheet" type="text/css">
  <?php
    $cnn =$_SESSION['cname'];
    echo "<marquee class = 'citymarquee'>City - ";
    echo "$cnn</marquee>";
  ?>
  <ul>
    <li><a href="contact.php">Contact Us</a></li>
  </ul>
  <ul>
    <li><a href='Login.php'>Book a Hotel</a></li>
    <li><a>Popular places</a>
      <?php
        $db=mysqli_connect("localhost","root","","travelling");
        if($db === false)
        {
          die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        $sql = 'SELECT V.EntryFee, V.Name, V.Description from visit as V,city as C,guest as G where V.C_Id = C.C_Id AND C.Cname = G.GoingTo Order by G.G_Id Desc Limit 5';
        $retval = mysqli_query($db,$sql);
        if(!$retval)
        {
        die('Could not get data: ' . mysqli_connect_error());
        }
        while($row = mysqli_fetch_assoc($retval))
        {
          $desc=$row['Description'];
          $fee=$row['EntryFee'];
          $nm=$row['Name'];
          echo "<ul><li><a href='placedes.php?desc={$desc}&fee={$fee}&nm={$nm}'><font color=white>{$row['Name']}</a></li></ul>";
        }
      ?>
    </li>
    <li><a href="main.php">Home</a></li>
  </ul>
  <div class="split right">
    <div class="centered">
      <?php
        $db=mysqli_connect("localhost","root","","travelling");
        if($db === false)
        {
           die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        $desc = isset($_GET['desc']) ? $_GET['desc'] : "N/A";
        $fee = isset($_GET['fee']) ? $_GET['fee'] : "N/A";
        $nm = isset($_GET['nm']) ? $_GET['nm'] : "N/A";
        if($desc || $fee || $nm)
        {
          $sql = 'SELECT EntryFee,Description FROM visit as S,city as C,guest as G where S.C_Id = C.C_Id AND C.Cname = G.GoingTo Order by G.G_Id Desc Limit 1';
          $retval = mysqli_query($db,$sql);
          if(! $retval )
          {
            die('Could not get data: ' . mysqli_connect_error());
          }
          echo "<h1>Description of ";
          echo $nm;
          echo "</h1>";
          print "<font color=black>{$desc}";
          echo "<h1>Entry Fees</h1>";
          print "<font color=black>{$fee}";
        }
        else { echo ""; }
       ?>
     </div>
   </div>
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <div class="footer">
    <p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
  </div>
</body>
</html>
