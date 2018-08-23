<?php
$servername="localhost";
$username="root";
$password="";
$dbname="booking_db";

$conn= new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{ die("Connection failed : " . $conn->connect_error);
}
$sql="INSERT INTO Flight_Record (Flight_Name, Source, Destination, Depart_Time, Dest_Time, Total_Duration, Price)  VALUES('Indigo', 'DEL', 'MAA', '06:50 am', '09:40 am', '2 hrs 50 min', 'Rs 3500')";
if($conn->query($sql)===TRUE)
{ echo "Successful Table Row Insert "; }
else
{ echo" Error inserting row in table " . $conn->error;
}


$conn->close();
?>