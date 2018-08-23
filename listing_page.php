<html>
 <head><title>Listing Page</title>
  <style>
  	body{
      background-color: #d0cfcb;
      margin: unset;
     }


   .tbl1
   {
     width: 1000px;
    height: 200px;
    text-align: center;
    border-color: #00000026;
    position: absolute;
    top: 200px;
    left: 200px;
   }

 .heading
 {
 	    top: 75px;
    position: absolute;
    left: 300px;
    font-size: 28px;
 }
   .table_heading
   {
   	font-size: 18px;
    font-weight: bold;
   }

   .info
   { color:#f10606;
   	font-size: 24px;
    position: absolute;
    left: 300px;
    top: 300px;
    font-weight: bold;
    letter-spacing: 1px;
   }
   .home
   {
    position: absolute;
    top: 400px;
    left: 558px;
    font-size: 32px;
   }
   .image1
   {
   	position: absolute;
    top: 257px;
    left: 208px;
   }
   .image2
   { position: absolute;
    left:208px;
    top:300px;
   }
   .image3
   { position: absolute;
   	left:205px;
   	top:350px;
   }
  </style>
 </head>
 <body>
 	
 </br>
</br>


<?php

 $from_value=$_POST['from_input'];
 $to_value=$_POST['to_input'];
 $date_value=$_POST['date_input'];
 $passengers_value=$_POST['total_passengers'];

 if($from_value==$to_value){?>
 	<div class="info"> Departure City cannot be same as Source City. Please fill again carefully!</div>
 
 </br>
</br>
 <div class="home"><a href=search_panel.php><---- Go Back Again</a></div>

 <?php
}
else
{
$servername="localhost";
$username="root";
$password="";
$dbname="booking_db";

$conn= new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{ die("Connection failed : " . $conn->connect_error);
}
?>
<div class = "heading" >Departure From (Airport) : <?php echo $from_value; ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Depart Date : <?php echo $date_value; ?>
</br>
</br>
                        Destination To (Airport) : <?php echo $to_value; ?>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passengers : <?php echo $passengers_value; ?>
</div>

<form class="frm1" name = "list" method = "post" action = "success.php" >
	<div class="image1" >
		<img src="download.png">
	</div>
	<div class="image2" >
		<img src="img2.png">
	</div>
	<div class="image3" >
		<img src="img3.png">
	</div>
<table class="tbl1" border=5 bordercolor=#2267c6 cellspacing=5 cellspadding=5>
<tr class ="table_heading"><td>Flight Name</td><td>Departure Time</td><td>Destination Arrival Time</td><td>Total Duration</td><td>Price</td><td>Book Now</td></tr>
 
<?php

$sql="SELECT * FROM Flight_Record WHERE Source='$from_value' AND Destination='$to_value'" ;

$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
// output data of each row
while($row = mysqli_fetch_assoc($result)) {?>
<tr><td><?php echo $row["Flight_Name"];?></td>
<td><?php echo $row["Depart_Time"];?></td>
<td><?php echo $row["Dest_Time"];?></td>
<td><?php echo $row["Total_Duration"];?></td>
<td><?php echo $row["Price"];?></td>
<!--<input type = "hidden" name="update_id" value="<?php echo $row["id"];?>">
<td><input type = "submit" name="sub"  value = "Book"></td>-->
<td><a href = success.php?unno=<?php echo $row["id"];?>>Book </a></td>
</tr>
<?php }
}
?>

</table>
</form>
</body>
</html>
<?php
$conn->close();
}?>

