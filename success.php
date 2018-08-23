<html>
 <head><title>Success Page</title>
  <style>
  	body{
      background-color: #d0cfcb;
      margin: unset;
     }
  .para
  {
  	font-size: 48px;
    position: absolute;
    left: 300px;
    top: 300px;
    font-weight: bold;
    letter-spacing: 1px;
}
  }
 </style></head><body><div class="para">Successfully booked your ticket !</div> </body></html>
<?php
$res=$_REQUEST["unno"];


$servername="localhost";
$username="root";
$password="";
$dbname="booking_db";

$conn= new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{ die("Connection failed : " . $conn->connect_error);
}

$sql="SELECT * FROM Flight_Record WHERE id=$res";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
// output data of each row
while($row = mysqli_fetch_assoc($result)) {
$fn=$row["Flight_Name"];
$fdept=$row["Depart_Time"];
$fdest=$row["Dest_Time"];
$ftot=$row["Total_Duration"];
$fprice=$row["Price"];
$fsrc=$row["Source"];
$fplace=$row["Destination"];
}}
$conn->close();
?>

<?php
$servername="localhost";
$username="root";
$password="";
$dbname="booking_db";

$conn= new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{ die("Connection failed : " . $conn->connect_error);
}

$sql="INSERT INTO Final_Record (Flight_Name, Depart_Time, Dest_Time, Total_Duration, Price) VALUES($fn, $fdept, $fdest, $ftot, $fprice)";
 
$conn->close();
?>
