<?php
session_start();
$db=mysqli_connect("localhost","root","","travelling");
?>
<html>
<head>
<title>Display</title>
</head>
<body>
  <link href="display.css" rel="stylesheet" type="text/css">
  <?php
       $c=$_SESSION['s'];         //name of the hotel
       $cn=$_SESSION['cname'];
       echo "<marquee class='ch'>City - $cn , Hotel - $c</marquee>";
  ?>
  <ul>
      <li><a href="main.php">Home</a></li>
  </ul>
  <form method="post">
    <h1 style= "top:100px; color:black; font-size:30px;">Select the place you want to go:</h1>
    <?php
      if($db === false)
      {
        die("ERROR: Could not connect. " . mysqli_connect_error());
      }
      $sql = "SELECT Name,Description,EntryFee,S_Id from visit as V,city as C,guest as G,transport as T where V.C_Id = C.C_Id AND C.Cname = G.GoingTo AND T.Places=V.Name AND T.Hname='$c' Order by G.G_Id Desc Limit 5";

      $retval = mysqli_query($db,$sql);
      if(!$retval)
      {
        die('Could not get data: ' . mysqli_connect_error());
      }
      while($row = mysqli_fetch_array($retval))
      {
        $nme=$row['Name'];
        $fee=$row['EntryFee'];
        $ssid=$row['S_Id'];
        echo "<ul><li><a href='display.php?nme={$nme}&fee={$fee}&ssid={$ssid}'><font color=white>{$row['Name']}</a></li></ul>";
      }
    ?>
    <div class="centered">
        <?php
            $db=mysqli_connect("localhost","root","","travelling");
            if($db === false)
            {
              die("ERROR: Could not connect. " . mysqli_connect_error());
            }
            $nme = isset($_GET['nme']) ? $_GET['nme'] : "N/A";
            $f = str_replace(" ","+",$c);
            $t = str_replace(" ","+",$nme);
            $dir = "https://www.google.com/maps/dir/?api=1&origin=$f&destination=$t&travelmode=driving";

            $fee =isset ($_GET['fee']) ? $_GET['fee'] : "N/A";
            $nme =isset ($_GET['nme']) ? $_GET['nme'] : "N/A";
            if($fee || $nme)
            {
              echo "<h1>Place selected</h1>";
              echo "<font color=black>$nme";
              echo "<h1>Transport link</h1>";
              echo "<font color=black><a href=$dir>Click Here to know the directions.</a>";
            }
         ?>
    </div>

    </form>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div class="footer">
      <p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
    </div>
</body>
</html>
