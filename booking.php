<?php session_start(); ?>
<html>
<head>
<title>BOOKING</title>
</head>
<body background="url(tra7.jpg)">
  <link href="booking.css" rel="stylesheet" type="text/css">
  <form method="post" >
      <h2>Hotels available at your destination</h2>
      <?php

        $db=mysqli_connect("localhost","root","","travelling");
        if($db === false)
        {
          die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        $sql = 'SELECT Hname,Facilities,PriceRange,StarRating from hotel as H,city as C,guest as G where H.C_Id = C.C_Id AND C.Cname = G.GoingTo Order by G.G_Id Desc Limit 5';
        $retval = mysqli_query($db,$sql);
        if(! $retval )
        {
          die('Could not get data: ' . mysqli_connect_error());
        }
        while($row = mysqli_fetch_array($retval))
        {
          $desc=$row['Facilities'];
          $fee=$row['PriceRange'];
          $starR=$row['StarRating'];
          $name=$row['Hname'];

          echo "<ul><li><a href='booking.php?desc={$desc}&fee={$fee}&starR={$starR}&name={$name}'><font color=white>{$row['Hname']}</a></li></ul>";   //url variable
        }
      ?>
        <div class="centered">
            <?php
              $db=mysqli_connect("localhost","root","","travelling");
              if($db === false)
              {
                 die("ERROR: Could not connect. " . mysqli_connect_error());
              }
              $desc = isset($_GET['desc']) ? $_GET['desc'] : "N/A";
              $fee = isset($_GET['fee']) ? $_GET['fee'] : "N/A";
              $starR = isset($_GET['starR']) ? $_GET['starR'] : "N/A";
              $name = isset($_GET['name']) ? $_GET['name'] : "N/A";

              if($desc || $fee || $starR)
              {
                echo "<h1>Hotel Selected</h1>";
                echo "<font color=black>".$name;
                echo "<h1>Facilities</h1>";
                $sql = 'SELECT Facilities,PriceRange,StarRating FROM hotel as H,city as C,guest as G where H.C_Id = C.C_Id AND C.Cname = G.GoingTo Order by G.G_Id Desc Limit 1';
                $retval = mysqli_query($db,$sql);
                if(! $retval )
                {
                  die('Could not get data: ' . mysqli_connect_error());
                }

                print "<font color=black>{$desc}";
                echo "<h1>Price Range</h1>";
                print "<font color=black>{$fee}";
                echo "<h1>Star Rating</h1>";
                print "<font color=black>{$starR}";
                echo "<div id='f' style='text-align:center;'><br><a href='payment.php?' style='text-decoration:none; color:black;'><button>Book</a></button></div>";
                $_SESSION['f']=$fee;
                echo "<div id='s' style='text-align:center;'><br><a href='display.php?' style='text-decoration:none; color:black;'><button>Search for transport</a></button></div>";
                $_SESSION['s']=$name;
               }
               else { echo ""; }
               ?>
          </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="footer">
          <p>While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.Copyright © 2019 .All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
